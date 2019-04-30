# Installcab based Media Foundation workaround

This makes Resident Evil 2 and some other games work.

Just set WINEPREFIX and run install-mf-64.sh like this

`WINEPREFIX="/home/gaben/.local/share/Steam/steamapps/compatdata/883710/pfx" ./install-mf-64.sh`

Then copy the included mfplat.dll to the same directory as the `.exe` (re2.exe)

Resident Evil 2 should then work. I'm sure much more games too.

installcab.py is exactly the same as upstream except uncommented lines 129-137 (https://github.com/tonix64/python-installcab/blob/master/installcab.py

The difference between this is a better shell script, and no manual intervention needed. Just simply run the script, copy the DLL file, and play, it's an extremely simple and short shell script, it's easy to understand.
