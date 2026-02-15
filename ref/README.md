# Custom Brawlhalla Source - Brawlhalla Plus

- Basically just adds FlashDevelop stuff + Unlocked Characters and Colors + Custom Maps

> A modified decompilation of Brawlhalla allowing for recompilation.

This project is a set of modifications made to an exported decompilation of BrawhallaAir.swf to allow for recompilation and usage with the base game files.

## Version

This version of Brawlhalla used for this decompilation was
`tech-test 6.03`

The build ID for this is `8049434`.

### Depot Downloader Command

Run the command for your OS in the root directory of the repository. It will place all output files in the bin folder.

Windows:
`dotnet depotdownloader.dll -beta tech-test -app 291550 -depot 291551 -manifest 2081962229798659607 -dir bin -username <your username>`

MacOS:
`dotnet depotdownloader.dll -beta tech-test -app 291550 -depot 291552 -manifest 8042148203922039354 -dir bin -username <your username>`

> A note for developers: The osx BrawlhallaAir.swf has a few minor differences to the Windows version.
> This source is based on the Windows swf, as such reference the windows swf when developing.

# Building lol

py build.py --sdk "C:\Dev\SDKS\AIR"
