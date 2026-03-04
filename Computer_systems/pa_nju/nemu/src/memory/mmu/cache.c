#include "memory/mmu/cache.h"
#include "memory/memory.h"

typedef struct CacheBlock{
	bool valid;
	uint32_t tag;
	uint8_t data[64];
} CacheBlock;

typedef struct CacheSet{
	CacheBlock blocks[8];
} CacheSet;

static CacheSet cache_sets[128];
static uint32_t seed = 1;

static uint32_t mem_access = 0;
static uint32_t cache_access = 0;

// init the cache
void init_cache()
{
	// implement me in PA 3-1
	memset(cache_sets, 0, sizeof(cache_sets));
}

// write data to cache
void cache_write(paddr_t paddr, size_t len, uint32_t data)
{
	// implement me in PA 3-1
	uint32_t block_offset = paddr & 0x3F;
	
	if(block_offset + len > 64) {
		uint32_t first_len = 64 - block_offset;
		uint32_t first_data = data & ((1 << (first_len * 8)) - 1);
		cache_write(paddr, first_len, first_data);
		uint32_t second_len = len - first_len;
		uint32_t second_data = data >> (first_len * 8);
		cache_write(paddr + first_len, second_len, second_data);
		return;
	}
	
	uint32_t set_index = (paddr >> 6) & 0x7F;
	uint32_t tag = paddr >> 13;
	
	CacheSet *set = &cache_sets[set_index];
	
	for(int i = 0; i < 8; i++) {
		if(set->blocks[i].valid && set->blocks[i].tag == tag) {
			memcpy(set->blocks[i].data + block_offset, &data, len);
			cache_access++;
			hw_mem_write(paddr, len, data);
			mem_access++;
			return;
		}
	}
	hw_mem_write(paddr, len, data);
	mem_access++;
	return;
}

// read data from cache
uint32_t cache_read(paddr_t paddr, size_t len)
{
	// implement me in PA 3-1
	uint32_t block_offset = paddr & 0x3F;

	if(block_offset + len > 64) {
		uint32_t first_len = 64 - block_offset;
		uint32_t first_data = cache_read(paddr, first_len);
		uint32_t second_len = len - first_len;
		uint32_t second_data = cache_read(paddr + first_len, second_len);
		return first_data | (second_data << (first_len * 8));
	}
	
	uint32_t set_index = (paddr >> 6) & 0x7F;
	uint32_t tag = paddr >> 13;
	
	CacheSet *set = &cache_sets[set_index];
	
	for(int i = 0; i < 8; i++) {
		if(set->blocks[i].valid && set->blocks[i].tag == tag) {
			uint32_t ret = 0;
			memcpy(&ret, set->blocks[i].data + block_offset, len);
			cache_access++;
			return ret;
		}
	}
	mem_access++;
	paddr_t block_addr = (paddr >> 6) << 6;
	uint32_t rand_index = (seed * 1103515245 + 12345) % 8;
	seed = rand_index + 1;
	for(int i = 0; i < 64; i += 4) {
		uint32_t word = hw_mem_read(block_addr + i, 4);
		memcpy(set->blocks[rand_index].data + i, &word, 4);
	}
	set->blocks[rand_index].valid = true;
	set->blocks[rand_index].tag = tag;
	uint32_t ret = 0;
	memcpy(&ret, set->blocks[rand_index].data + block_offset, len);
	return ret;
}

void print_cache_stats()
{
	printf("Memory access: %d\n", mem_access);
	printf("Cache access: %d\n", cache_access);
}