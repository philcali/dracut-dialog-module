#!/bin/bash

check() {
    return 0
}

depends() {
    return 0
}

install() {
    inst_multiple "dialog"
    inst_simple "$moddir/dialog.sh" /bin/dracut-dialog
    inst_simple "$moddir/dialog.service" "${systemdsystemunitdir}"/dialog.service
    # Probably better off to be pre-pivot
    inst_hook pre-mount 20 "$moddir/start-dialog.sh"
}
