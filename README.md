Install ```otapatch``` to **/usr/sbin/** on your iOS device

Requires **bsdiff** from Cydia

#####TODO:
 - Verify patched file (with checksum or by reading the file)
   this can be done with the post.bom package (from the OTA update), lsbom, and cksum.
   ```lsbom -p fc post.bom | grep any/file/you/need/the/checksum/for``` returns the checksum for what the newly patched file should calculate to, then using ```cksum -o 3 /path/to/file``` returns the current checksum. If they match, continue.


#otapatch:

Allows recursive bspatch application to files on the iPhone, to be (primarily) used with apple [OTA update zip files](http://theiphonewiki.com/wiki/OTA_Updates).

This tool would effectively allow selective updating for jailbroken iOS devices, allowing the latest features from new updates to be applied, whilst skipping the security vulnerabilitiy patches which prevent jailbreaks.

###example:

Copy the patches to your device with the folder structure you wish to use (in this case MobileSafari.app)

```
patches
-Applications
--MobileSafari.app
---MobileSafari.patch
---Info.plist.patch
```

and the devices Applications folder (/Applications)

when ```otapatch patches/Applications /Applications``` is executed, it recursively searches for patch files in ```patches/Applications``` and applies them to each file in /Applications.
This is pretty much what the iOS OTA update system does, most likely not in a bash script.

you can be more selective with patching too: ```otapatch patches/Applications/MobileSafari.app /Applications/MobileSafari.app```