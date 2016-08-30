#!/bin/bash

import os
import sys
import shutil
import logging
import re
import psutil
import platform
import datetime
import yaml
import argparse

case "$1" in
        'volume_down' )
                xte 'keydown XF86AudioLowerVolume' 'usleep 600000' 'keyup XF86AudioLowerVolume';;
        'volume_up' )
                xte 'keydown XF86AudioRaiseVolume' 'usleep 600000' 'keyup XF86AudioRaiseVolume';;
        'volume_mute' )
                xte 'keydown XF86AudioMute' 'keyup XF86AudioMute';;
        'pause' )
                xte 'keydown XF86AudioPause' 'keyup XF86AudioPause';;
        'play' )
                xte 'keydown XF86AudioPlay' 'keyup XF86AudioPlay';;
        'stop' )
                xte 'keydown XF86AudioStop' 'keyup XF86AudioStop';;
        'next' )
                xte 'keydown XF86AudioNext' 'keyup XF86AudioNext';;
        'prev' )
                xte 'keydown XF86AudioPrev' 'keyup XF86AudioPrev';;
        *)
                find ~/Music/ -iname "*$1*" -exec xdg-open {} \;
esac
