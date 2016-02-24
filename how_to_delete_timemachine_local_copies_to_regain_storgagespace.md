# How to delete timemachine local copies to regain storage space

TODO: Write a better description for why this is needed.

## Warnings
Use at your own risk. You may delete all your backups if you are not careful.
That said, your time machine can use up to 80% of the free space on your drive,
making it hard move large files around even on a 500GB disk.

## Usage
Macs have a command line tool for controlling time machine called `tmutil` you can find more info with `$ man tmutil`

Ok so to start reclaiming space, first you need to disable time machine backups.

`$ sudo tmutil disable`

Then disable local caching of the backups.

`$ sudo tmutil disablelocal`

Once this event is triggered your mac will move all the local copies of your backup cache from
`$/.MobileBackups` to something like `$/.MobileBackups.trash`. Mine was around
187 GB on a 500 GB disk. This may take a second or sixty depending on how large your local storage cache was. Be patient. I ran `$ du -h` on mine a few times till it stopped growing. Your mileage may very. This may or may not be necessary. I'm just cautious. So once you think all the trash has been taken out you can remove it with

`$ sudo rm -rf /.MobileBackups.trash`

after rm is done check to see if you ave your space back.

`$ df -h`

| Filesystem | Size | Used | Avail | Use% | Mounted On |
|------------|------|------|-------|------|------------|
| /dev/disk1 | 465G | 208G | 257G  | 45%  | /          |

Then you need to turn local caching back on

`$ sudo tmutil enablelocal`

Then your local directory should come back and look like

`drwxr-xr-x+    3 root wheel  102 Feb 24 10:21 .MobileBackups`

also make sure your AUTOMATIC timemachine backups are turned back on

`$ sudo tmutil enable`

Thanks for reading. Comments and pull requests welcome.


## History
TODO: Write history
## Credits
TODO: Write credits
## References
http://www.howtogeek.com/212207/how-to-free-up-space-used-by-time-machines-local-backups-on-your-mac/
https://discussions.apple.com/thread/5802961?tstart=0
## License
Apache 2:
http://www.apache.org/licenses/LICENSE-2.0
