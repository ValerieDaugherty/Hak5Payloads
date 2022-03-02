The main crux of the problem with trying to get the owl on a network is that the WIFI_CONNECT extension appears to be broken. Less that the extension itself is broken but on my owl (firmware 1.0.1), the 'source' shell command /always/ results in an error that the file referenced could not be found. It was absolutely infuriating digging that up... at any rate - the relevant bit that's preventing extensions from working properly then is in the owl_framework shell script found at: /usr/bin/owl_framework

It goes like such:
```
for e in $extensions_path/*; do
    $LOG "Sourcing EXTENSION $e"
    source $e
done
```

The extensions only get sourced after boot during the last bit of the execute_payload function, right before actually executing.
In a default setup, wifi_connect.sh is the only extension present (and as of this writing the only extension contributed to their GitHub) so... if you aren't writing a ton of your own extensions it's not a /ton/ of trouble to just add them to your payload script as I've done. You /could/, of course, write a custom wpa_supplicant config to get it on a network at boot, outside of the payload, but /I/ personally had trouble getting that to work and you may not want that to execute on boot no matter what. You choose what's important there and the effort you want to go to.
If you /are/ intending to write lots of custom extensions and /need/ support for sourcing them then you'll need to find and fix that particular bug. I wanted to get things going, so for now this is how my Owl behaves.

I hope this writeup helps speed along your troubleshooting if you've found yourself frusted with the Owl as I have. Happy hacking.