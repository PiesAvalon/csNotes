#include "hal.h"

int SDL_PollEvent(SDL_Event *event)
{
	(void)event;
	return 0;
}

int SDL_LockSurface(SDL_Surface *surface)
{
	(void)surface;
	return 0;
}

void SDL_UnlockSurface(SDL_Surface *surface)
{
	(void)surface;
}

int SDL_ShowCursor(int toggle)
{
	(void)toggle;
	return 0;
}

int SDL_SaveBMP(SDL_Surface *surface, const char *file)
{
	(void)surface;
	(void)file;
	return 0;
}

int SDL_Init(uint32_t flags)
{
	(void)flags;
	return 0;
}

char *SDL_GetError(void)
{
	static char msg[] = "SDL_GetError is not implemented";
	return msg;
}

void SDL_WM_SetCaption(const char *title, const char *icon)
{
	(void)title;
	(void)icon;
	return;
}

void SDL_Quit(void)
{
	return;
}
