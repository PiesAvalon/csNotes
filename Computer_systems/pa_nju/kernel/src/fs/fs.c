#include "common.h"
#include "string.h"

typedef struct
{
	char *name;
	uint32_t size;
	uint32_t disk_offset;
} file_info;

typedef struct
{
	bool used;
	uint32_t index;
	uint32_t offset;
} Fstate;

enum
{
	SEEK_SET,
	SEEK_CUR,
	SEEK_END
};

static const file_info file_table[] = {
	{"1.rpg", 188864, 1048576}, {"2.rpg", 188864, 1237440}, {"3.rpg", 188864, 1426304}, {"4.rpg", 188864, 1615168}, {"5.rpg", 188864, 1804032}, {"abc.mkf", 1022564, 1992896}, {"ball.mkf", 134704, 3015460}, {"data.mkf", 66418, 3150164}, {"desc.dat", 16027, 3216582}, {"fbp.mkf", 1128064, 3232609}, {"fire.mkf", 834728, 4360673}, {"f.mkf", 186966, 5195401}, {"gop.mkf", 11530322, 5382367}, {"map.mkf", 1496578, 16912689}, {"mgo.mkf", 1577442, 18409267}, {"m.msg", 188232, 19986709}, {"mus.mkf", 331284, 20174941}, {"pat.mkf", 8488, 20506225}, {"rgm.mkf", 453202, 20514713}, {"rng.mkf", 4546074, 20967915}, {"sss.mkf", 557004, 25513989}, {"voc.mkf", 1997044, 26070993}, {"wor16.asc", 5374, 28068037}, {"wor16.fon", 82306, 28073411}, {"word.dat", 5650, 28155717}, {"credits_bgm.wav", 6631340, 1048576},
};

#define NR_FILES (sizeof(file_table) / sizeof(file_table[0]))

Fstate files[NR_FILES + 3];

void ide_read(uint8_t *, uint32_t, uint32_t);
void ide_write(uint8_t *, uint32_t, uint32_t);

/* Please implement a simple file system here */

int fs_open(const char *pathname, int flags)
{
	(void)flags;
	for (int i = 0; i < NR_FILES; i++)
	{
		if (strcmp(pathname, file_table[i].name) == 0)
		{
			int fd = i + 3;
			files[fd].used = true;
			files[fd].index = i;
			files[fd].offset = 0;
			return fd;
		}
	}
	panic("fs_open: file %s not found", pathname);
	return 0;
}

size_t fs_read(int fd, void *buf, size_t len)
{
	if (fd < 3)
	{
		return 0;
	}
	assert(fd < NR_FILES + 3);
	assert(files[fd].used);

	file_info info = file_table[files[fd].index];
	if (files[fd].offset > info.size)
	{
		return 0;
	}
	if (files[fd].offset + len > info.size)
	{
		len = info.size - files[fd].offset;
	}
	if (len == 0)
	{
		return 0;
	}

	ide_read(buf, info.disk_offset + files[fd].offset, len);
	files[fd].offset += len;
	return len;
}

size_t fs_write(int fd, void *buf, size_t len)
{
#ifdef HAS_DEVICE_SERIAL
	if (fd <= 2)
	{
		int i;
		extern void serial_printc(char);
		for (i = 0; i < len; i++)
		{
			serial_printc(((char *)buf)[i]);
		}
		return len;
	}
#else
	if (fd <= 2)
	{
		asm volatile(".byte 0x82"
					 : "=a"(len)
					 : "a"(4), "b"(fd), "c"(buf), "d"(len));
		return len;
	}
#endif

	assert(fd < NR_FILES + 3);
	assert(files[fd].used);
	file_info info = file_table[files[fd].index];
	if (files[fd].offset > info.size)
	{
		return 0;
	}
	if (files[fd].offset + len > info.size)
	{
		len = info.size - files[fd].offset;
	}
	if (len == 0)
	{
		return 0;
	}
	ide_write(buf, info.disk_offset + files[fd].offset, len);
	files[fd].offset += len;

	return len;
}

off_t fs_lseek(int fd, off_t offset, int whence)
{
	if (fd < 3)
	{
		return 0;
	}
	assert(fd < NR_FILES + 3);
	assert(files[fd].used);

	uint32_t base;
	switch (whence)
	{
	case SEEK_SET:
		base = 0;
		break;
	case SEEK_CUR:
		base = files[fd].offset;
		break;
	case SEEK_END:
		base = file_table[files[fd].index].size;
		break;
	default:
		panic("invalid whence");
	}

	int64_t new_offset = (int64_t)base + offset;
	if (new_offset < 0)
	{
		new_offset = 0;
	}
	uint32_t size = file_table[files[fd].index].size;
	if (new_offset > size)
	{
		new_offset = size;
	}

	files[fd].offset = new_offset;
	return files[fd].offset;
}

int fs_close(int fd)
{
	if (fd < 3)
	{
		return 0;
	}
	assert(fd < NR_FILES + 3);
	memset(&files[fd], 0, sizeof(Fstate));
	return 0;
}
