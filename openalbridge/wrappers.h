/*
 * OpenAL Bridge - a simple portable library for OpenAL interface
 * Copyright (c) 2009 Vittorio Giovara <vittorio.giovara@gmail.com>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; version 2 of the License
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA
 */

#ifndef _OALB_WRAPPERS_H
#define _OALB_WRAPPERS_H

#include "globals.h"


void *Malloc (size_t nbytes);
void *Realloc (void *aptr, size_t nbytes);
FILE *Fopen (const char *fname, char *mode);
ALint AlGetError (const char *str);
#ifndef _WIN32
void *helper_fadein (void *tmp);
void *helper_fadeout (void *tmp); 
#else
void *helper_fadein (void *tmp); 
void *helper_fadeout (void *tmp); 	
#endif

#endif /*_OALB_WRAPPERS_H*/