
#!/bin/bash
apparmor_parser -r /etc/apparmor.d/*snap-confine*
apparmor_parser -r /var/lib/snapd/apparmor/profiles/snap-confine*
systemctl restart snapd.socket
apparmor_parser -r /var/lib/snapd/apparmor/profiles/snap-update-ns.*
apparmor_parser -r /var/lib/snapd/apparmor/profiles/snap.*
apparmor_parser -r /var/lib/snapd/apparmor/profiles/snap-confine.snapd.14066