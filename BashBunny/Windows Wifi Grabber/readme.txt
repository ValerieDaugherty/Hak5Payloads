Launches a stealth powershell window on the target machine and uses netsh to dump all wifi profiles
to the loot directory with passwords in clear text.

Afterwards, a registry edit removes the last run command in order to cover our tracks.

Some things of note:
Currently only works on Windows targets
The target machine must be unlocked (but that should be updated soon)
Any machine policy preventing unapproved storage devices from mounting would also defeat this