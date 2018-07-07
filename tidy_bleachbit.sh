#!/usr/bin/bash
#
#   tidy_bleachbit.sh - Removed unused things with bleachbit
#
#   Copyright (c) 2018 William J. Bowman <wjb@williamjbowman.com>


[[ -n "$LIBMAKEPKG_TIDY_BLEACHBIT_SH" ]] && return
LIBMAKEPKG_TIDY_BLEACHBIT_SH=1

LIBRARY=${LIBRARY:-'/usr/share/makepkg'}

source "$LIBRARY/util/message.sh"
source "$LIBRARY/util/option.sh"

packaging_options+=('bleachbit')
tidy_modify+=('tidy_bleachbit')

tidy_bleachbit() {
  if check_option "bleachbit" "y"; then
    msg2 "$(gettext "Removing unused locales with bleachbit...")"
    chroot . bleachbit -c system.localizations
  fi
}
