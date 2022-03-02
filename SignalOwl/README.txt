Allow me to preface this by saying - I love Hak5's gear. It's seriously great if you need something that already does what you want it to do right out of the box without too much fuss;
Beyond that, many of the tools are near-infinitely extendable to fill almost any role you could need in a nice little plug-and-drop package. The entire team at Hak5 flippin' rules for
the stuff they put out.

Then there's the Signal Owl.

Pretty much after the first day of messing with it I was over it. The default payload doesn't do anything immediately useful. It comes with a multitude of RF tools - and one wifi
radio. Of the 2 USB slots, only 1 is available to the device - the other is a passthrough (which /is/ nice). To top that off, the internal storage is basically nil... so if you want
extra storage (a flash drive, say) you're giving up plugging /anything/ else in (like... bluetooth, say) without using a powered USB hub.

The thing was pretty poorly thought out and it shows internally, too - one month after release there was a new firmware (1.0.1) and then nothing*. The payload section of their
GitHub is pretty dry, and if you go searching for "I can't get my signal owl online" you'll see plenty of user frustration over this basic functionality.

Despite all of that, the Signal Owl /can/ do work for you if you're willing to re-tool how it works a bit. I recently came back to it because I haven't had enough pain and, after much 
labor, was able to get it to connect to my network and out to Cloud C2 from there - now it can be useful. And in the one folder I'm going to put in here I'll write up how I did this 
so that maybe you, too, can put this odd little rectangle to work for you.


* There /are/, of course, a handful of other devices (Key Croc and Shark Jack come to mind) that only have 1 or 2 firmware updates as well but that seems to be because they were well
thought out and that's all they needed to become stable with maximum functionality.