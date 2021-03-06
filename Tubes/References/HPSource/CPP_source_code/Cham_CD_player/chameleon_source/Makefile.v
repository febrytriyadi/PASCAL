#=======================================================================
#@V@:Note: File automatically generated by VIDE - 2.00/10Apr03! (BCC32).
# Generated 12:28:44 16 May 2003
# This file regenerated each time you run VIDE, so save under a
#    new name if you hand edit, or it will be overwritten.
#=======================================================================

# Standard defines:
.AUTODEPEND

# Borland C++ tools
IMPLIB	= $(BCCROOT)\bin\Implib
ILINK32	= $(BCCROOT)\bin\ILink32
TLIB	= $(BCCROOT)\bin\TLib
BRC32	= $(BCCROOT)\bin\Brc32
TASM32	= $(BCROOT)\bin\Tasm32
CC  	= $(BCCROOT)\bin\BCC32

BCCROOT	= c:\borland\bcc55

HOMEV	=	
VPATH	=	$(HOMEV)\include
oDir	=	.
Bin	=	.
libDirs	=	-L$(BCCROOT)\lib;$(BCCROOT)\lib\psdk

incDirs	=	-I$(BCCROOT)\include

LD_FLAGS =	-v- -Tpe -aa -c
C_FLAGS	=	-q -O1 -v-\
	-D_WINVER=0x0400\
	-D_WIN32_WINNT=0x0400

SRCS	=\
	button.cpp\
	cube.cpp\
	inikey.cpp\
	listbox.cpp\
	main.cpp\
	mixer.cpp\
	scroll.cpp\
	skin.cpp\
	static.cpp\
	resource.rc

EXOBJS	=\
	$(oDir)\button.obj\
	$(oDir)\cube.obj\
	$(oDir)\inikey.obj\
	$(oDir)\listbox.obj\
	$(oDir)\main.obj\
	$(oDir)\mixer.obj\
	$(oDir)\scroll.obj\
	$(oDir)\skin.obj\
	$(oDir)\static.obj\
	$(oDir)\resource.res

ALLOBJS	=	$(EXOBJS)
BCCJUNK	=	*.il* *.csm *.tds
ALLBIN	=	$(Bin)\chameleo.exe
ALLTGT	=	$(Bin)\chameleo.exe

# User defines:

#@# Targets follow ---------------------------------

all:	$(ALLTGT)

objs:	$(ALLOBJS)

cleanobjs:
	rm -f $(ALLOBJS)

cleanbin:
	rm -f $(ALLBIN) $(BCCJUNK)

clean:	cleanobjs cleanbin

cleanall:	cleanobjs cleanbin

#@# User Targets follow ---------------------------------

# BCC32 DEF file: add after = if needed
BCC32DEF =
# BCC32 RT lib: cw32.lib static
BCC32RTLIB = cw32
# BCC32 Startup: c0x32.obj-console, c0w32.obj-winapi
BCC32STARTUP = c0w32.obj

#@# Dependency rules follow -----------------------------

$(Bin)\chameleo.exe : $(EXOBJS)
  $(ILINK32) @&&|
 $(LD_FLAGS) $(libDirs) +
$(BCC32STARTUP) +
$(oDir)\button.obj +
$(oDir)\cube.obj +
$(oDir)\inikey.obj +
$(oDir)\listbox.obj +
$(oDir)\main.obj +
$(oDir)\mixer.obj +
$(oDir)\scroll.obj +
$(oDir)\skin.obj +
$(oDir)\static.obj
$<,$*
import32.lib +
$(BCC32RTLIB).lib
$(BCC32DEF)
$(oDir)\resource.res

|
$(oDir)\button.obj : button.cpp
  $(CC) -c $(C_FLAGS) $(incDirs) -o$@ button.cpp

$(oDir)\cube.obj : cube.cpp
  $(CC) -c $(C_FLAGS) $(incDirs) -o$@ cube.cpp

$(oDir)\inikey.obj : inikey.cpp
  $(CC) -c $(C_FLAGS) $(incDirs) -o$@ inikey.cpp

$(oDir)\listbox.obj : listbox.cpp
  $(CC) -c $(C_FLAGS) $(incDirs) -o$@ listbox.cpp

$(oDir)\main.obj : main.cpp
  $(CC) -c $(C_FLAGS) $(incDirs) -o$@ main.cpp

$(oDir)\mixer.obj : mixer.cpp
  $(CC) -c $(C_FLAGS) $(incDirs) -o$@ mixer.cpp

$(oDir)\scroll.obj : scroll.cpp
  $(CC) -c $(C_FLAGS) $(incDirs) -o$@ scroll.cpp

$(oDir)\skin.obj : skin.cpp
  $(CC) -c $(C_FLAGS) $(incDirs) -o$@ skin.cpp

$(oDir)\static.obj : static.cpp
  $(CC) -c $(C_FLAGS) $(incDirs) -o$@ static.cpp

$(oDir)\resource.res : resource.rc
  $(BRC32) -r $(incDirs) -fo$@ resource.rc

