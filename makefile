
BIN_LIB = CMPSYS
LIBLIST=$(BIN_LIB) PGGJGIT001
SHELL=/QOpenSys/usr/bin/qsh

all: hola1.rpgle prueba2.rpgle hola2.rpgle prueba5.rpgle prueba6.rpgle

%.rpgle:
	 system  -s "CHGATR OBJ('/home/DSGOGAMTJ/RPG_DAME2/DPIRPG/$*.rpgle') ATR(*CCSID) VALUE(1252)"
	 liblist -a $(LIBLIST);\
	 system "CRTBNDRPG PGM($(BIN_LIB)/$*) SRCSTMF('/home/DSGOGAMTJ/RPG_DAME2/DPIRPG/$*.rpgle') DBGVIEW(*SOURCE) OPTION(*EVENTF)"
	 system  "CPYFRMSTMF FROMSTMF('/home/DSGOGAMTJ/RPG_DAME2/DPIRPG/$*.rpgle') TOMBR('/QSYS.lib/$(BIN_LIB).lib/DPIRPG.file/$*.mbr') MBROPT(*REPLACE)"
	 system  "CHGPFM FILE($(BIN_LIB)/DPIRPG) MBR($*) SRCTYPE(RPGLE) TEXT('Se realizo deploy desde el local')"