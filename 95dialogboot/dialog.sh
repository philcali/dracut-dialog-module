#!/bin/bash

DIALOG_CANCEL=1
DIALOG_ESC=255

while true; do
  exec 3>&1
  dialog \
      --backtitle "Startup Modal" \
      --title "Test Title" \
      --msgbox "This is some informational mesage" 15 50 \
      2>&1 1>&3
  exit_status=$?
  exec 3>&-
  case $exit_status in
      $DIALOG_CANCEL)
          break;;
      $DIALOG_ESC)
          break;;
  esac
done
