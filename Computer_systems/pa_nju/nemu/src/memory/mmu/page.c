#include "cpu/cpu.h"
#include "memory/memory.h"

// translate from linear address to physical address
paddr_t page_translate(laddr_t laddr)
{
#ifndef TLB_ENABLED
# ifdef IA32_PAGE
	// printf("Please implement page_translate()\n");
	// fflush(stdout);
	// assert(0);
	uint32_t dir_index = (laddr >> 22) & 0x3ff;
	uint32_t page_index = (laddr >> 12) & 0x3ff;
	uint32_t offset = laddr & 0xfff;
	PDE* pde = (void*)(hw_mem + (cpu.cr3.pdbr << 12));
	PDE pde_entry = pde[dir_index];
	if (pde_entry.present == 0)
	{
		printf("page_translate: pde not present, laddr=0x%08x dir=%u\n", laddr, dir_index);
		assert(0);
	}
	PTE* pte = (void*)(hw_mem + (pde_entry.page_frame << 12));
	PTE pte_entry = pte[page_index];
	if (pte_entry.present == 0)
	{
		printf("page_translate: pte not present, laddr=0x%08x dir=%u page=%u pde_frame=0x%05x\n",
			   laddr, dir_index, page_index, pde_entry.page_frame);
		assert(0);
	}
	return (pte_entry.page_frame << 12) + offset;
# else
	printf("Please implement page_translate()\n");
	fflush(stdout);
	assert(0);
# endif

	// uint32_t dir = (laddr >> 22) & 0x3ff;
	// uint32_t page = (laddr >> 12) & 0x3ff;
	// uint32_t offset = laddr & 0xfff;
	
	// PDE *pde_header = (void *)(hw_mem + (cpu.cr3.pdbr << 12));
	// PDE target_pde = pde_header[dir];
	// assert(target_pde.present);
	
	// PTE *pte_header = (void *)(hw_mem + (target_pde.page_frame << 12));
	// PTE target_pte = pte_header[page];
	// assert(target_pte.present);
	
	// return (target_pte.page_frame << 12) + offset;
#else
	return tlb_read(laddr) | (laddr & PAGE_MASK);
#endif
}
