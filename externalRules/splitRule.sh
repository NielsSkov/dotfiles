#! /bin/sh

#dependency: wmutils,
#pacaur -S wmutils-git

fwid=$(bspc query -N -n focused.automatic)

if [ -n "$fwid" ] ; then
  wattr wh $fwid | {
    read width height
    if [ $width -gt $height ] ; then
      echo "split_dir=west"
    else
      echo "split_dir=south"
    fi
    echo "split_ratio=0.5"
  }
fi

