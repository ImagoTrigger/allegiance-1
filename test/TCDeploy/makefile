#############################################################################
#
# Makefile for TCDeploy.dll
#
# Environment variable Requirements:
#   
#    INCLUDE=foo           // can be set to anything, must be set
#    PATH=                 // must have proper nmake on path
#    FEDROOT=<path>        // MUST point to base of fed src enlistment
#    BCBINDIR=<path>       // optional, unless using BCHK=
#    TTBINDIR=<path>       // optional, unless using TRUETIME=
#
# nmake args:
#
#   Clean        // will delete all files in destination dir
#   Full         // will Clean, then build all derived files
#   debug=       // builds a debug build (default)
#   retail=      // builds a retail build
#   test=        // retail but with the _DEBUG preprocessor symbol defined
#                // NOT valid in combination with BCHK=, TRUETIME=, or ICAP=
#   VER=         // must have this argument, \\msr\federation\builds\$(VER) is created/needed
#   BCHK=        // if you want to do a boundschecker build.
#                   note:  you must have BC already installed locally and define BCBINDIR to
#                          point to the directory where nmcl.exe and nmlink.exe reside.
#                          You can use the BCOPTS variable to add options to the BC compile.
#   TRUETIME=    // if you want to instrument the build using Numega TrueTime
#                   note:  you must have TrueTime already installed locally and define TTBINDIR to
#                          point to the directory where the TrueTime nmcl.exe and nmlink.exe reside.  
#                          You can use the TTOPTS variable to add options to the TT compile.
#   VERBOSE=     // if you want verbose build mode. (default is non-verbose)
#
#  All derived files (temp files, .res, output of midl, *.obj, *.exe/.dll...
#  are placed directly into the appropriate tree under $(FEDROOT)\Objs.
#
#  The $(FEDROOT)\Objs tree is created on demand.
#  Since no derived files are placed in the source tree, multiple builds
#  can be run SIMULTANEOUSLY.
#


#############################################################################
# Environment Variables
#

SRCROOT=Test\TCDeploy
MAINTARGROOT=TCDeploy
MAINTARGEXT=dll
INCLUDELOCAL=$(FEDEXT)\vc\atl\inc;$(FEDEXT)\vc\mfc\inc;$(FEDSRC)\Test\TCDeploy;$(FEDSRC)\Test\Inc;$(DESTDIR);$(FEDSRC)\ZLib
PCHROOT=pch
PCHINC=
PCHINCLOCAL=$(PCHROOT).h
PROJCLEAN=ProjectClean
MIDLINCLOCAL=/I ..\Inc
CARGSLOCAL=/D _ATL_STATIC_REGISTRY /D _WINDLL /D _USRDLL


#############################################################################
# Rules
#

!include "..\..\makefile.inc"


#############################################################################
# Build Targets
#

RARGS=/l 0x409 $(RARGSFLAVOR)

IDLTARGS= $(DESTDIR)\TCDeploy.h          \
          $(DESTDIR)\TCDeploy.tlb

OBJS= $(DESTDIR)\TCDeploy.obj            \
      $(DESTDIR)\TCDeployment.obj        \
      $(DESTDIR)\TCDeploymentProcess.obj \
      $(DESTDIR)\TCDeploymentVersion.obj \
      $(DESTDIR)\pch.obj

LIBS= $(LIBSFLAVOR) \
      kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib        \
      advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib winmm.lib \
      delayimp.lib netapi32.lib version.lib psapi.lib

USERLIBS= $(FEDROOT)\Objs\$(FLAVOR)\Test\TCLib\TCLib.lib                 \
          $(FEDROOT)\Objs\$(FLAVOR)\ZLib\ZLib.lib

RESFILE = $(DESTDIR)\TCDeploy.res

DLLFLAGS= /DLL /DEF:TCDeploy.def

LARGS= /LIBPATH:$(FEDEXT)\Vc\lib                      \
       /OUT:$(MAINTARGFULLPATH) /SUBSYSTEM:CONSOLE    \
       $(LARGSFLAVOR) /PDB:$(PDB) $(NOLOGO)           \
       /delayload:shell32.dll /delayload:netapi32.dll \
       /delayload:user32.dll  /delayload:advapi32.dll \
       /delayload:version.dll /delayload:gdi32.dll    \
       /delayload:winmm.dll /delayload:psapi.dll      \
       /MACHINE:I386 $(DLLFLAGS)


#############################################################################
#
# Dependencies
#

!ifdef sretail
Export: $(FEDROOT)\Objs\SRetail\Test\TCDeploy\TCDeploy.dll
  @echo Copying TCDeploy.dll to \\research\root\Federation\Builds\_Deploy...
    @copy %FEDROOT%\Objs\SRetail\Test\TCDeploy\TCDeploy.dll \\research\root\Federation\Builds\_Deploy
  @echo Copying SetupDeploy.bat to \\research\root\Federation\Builds\_Deploy...
    @copy SetupDeploy.bat \\research\root\Federation\Builds\_Deploy
  @echo Copying IsNewer.vbs to \\research\root\Federation\Builds\_Deploy...
    @copy IsNewer.vbs \\research\root\Federation\Builds\_Deploy
!endif

$(MAINTARGFULLPATH) : $(DESTDIR) $(IDLTARGS) $(RESFILE) $(OBJS) $(USERLIBS)
  $(LINK) $(LARGS) $(OBJS) $(RESFILE) $(LIBS) $(USERLIBS)
  $(MAPSYM) -o $(DESTDIR)\$(MAINTARGROOT).sym $(DESTDIR)\$(MAINTARGROOT).map 2> NUL

!ifdef browse
$(BSCTARG) : $(DESTDIR)\*.sbr
  @echo Creating browse info file ($(MAINTARGROOT).bsc)...
  $(BSCMAKE) /nologo /Iu /o$(BSCTARG) $(DESTDIR)\*.sbr
!endif

$(PROJCLEAN):
  $(REMDIR) $(DESTDIR)

$(DESTDIR)\TCDeploy.h : TCDeploy.idl ..\TCAtl\VersionInfoImpl.idl
  $(MIDL) $(MIDLARGS) .\TCDeploy.idl 2> NUL

$(DESTDIR)\TCDeploy.tlb : TCDeploy.idl ..\TCAtl\VersionInfoImpl.idl
  $(MIDL) $(MIDLARGS) .\TCDeploy.idl 2> NUL

$(DESTDIR)\TCDeploy.obj            : $(PCHFILE)
$(DESTDIR)\TCDeployment.obj        : $(PCHFILE)
$(DESTDIR)\TCDeploymentProcess.obj : $(PCHFILE)
$(DESTDIR)\TCDeploymentVersion.obj : $(PCHFILE)

$(RESFILE): $(FEDSRC)\Inc\VerRes.rc $(MAINTARGROOT).rc *.rc2 resource.h *.rgs $(DESTDIR)\TCDeploy.tlb
   @echo Compiling Resources...
   @copy $(MAINTARGROOT).rc $(DESTDIR)
   @echo #define FLAVOR "$(FLAVOR)" >>$(DESTDIR)\$(MAINTARGROOT).rc
   @type $(FEDSRC)\Inc\VerRes.rc >>$(DESTDIR)\$(MAINTARGROOT).rc
   $(RC) $(RARGS) /D "DLL" /Fo$(DESTDIR)\$(MAINTARGROOT).res $(DESTDIR)\$(MAINTARGROOT).rc

