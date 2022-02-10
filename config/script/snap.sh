
#!/bin/bash
sudo apparmor_parser -r /etc/apparmor.d/*snap-confine*
sudo apparmor_parser -r /var/lib/snapd/apparmor/profiles/snap-confine*
apparmor_parser -r /var/lib/snapd/apparmor/profiles/snap-update-ns.*
apparmor_parser -r /var/lib/snapd/apparmor/profiles/snap.*
apparmor_parser -r /var/lib/snapd/apparmor/profiles/snap-confine.snapd.14066