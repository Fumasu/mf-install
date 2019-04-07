#!/bin/bash

[[ -z $WINEPREFIX ]] && echo "WINEPREFIX not set" && exit 1

set -e

scriptdir=$(dirname "$0")
cd "$scriptdir"

cp -v syswow64/* "$WINEPREFIX/drive_c/windows/syswow64"
cp -v system32/* "$WINEPREFIX/drive_c/windows/system32"

echo "Set to native in Libraries: mf, mferror, mfplat, mfreadwrite, msmpeg2adec, msmpeg2vdec, sqmapi"
WINEDEBUG="-all" winecfg

wine start regedit.exe mf.reg
wine start regedit.exe wmf.reg
wine64 start regedit.exe mf.reg
wine64 start regedit.exe wmf.reg

wine64 regsvr32 msmpeg2vdec.dll
wine64 regsvr32 msmpeg2adec.dll

wine regsvr32 msmpeg2vdec.dll
wine regsvr32 msmpeg2adec.dll
