#!/bin/bash

launch_dialog() {
    : > /.console_lock
    echo "PS1=\"dialog:\\\${PWD}# \"" > /etc/profile
    systemctl start dialog.service
    rm -f -- /etc/profile
    rm -f -- /.console_lock
}

launch_dialog
