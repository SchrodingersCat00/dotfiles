# This file has been auto-generated by i3-config-wizard(1).
# It will not be overwritten, so edit it as you like.
#
# Should you change your keyboard layout some time, delete
# this file and re-run i3-config-wizard(1).
#

# i3 config file (v4)
#
# Please see http://i3wm.org/docs/userguide.html for a complete reference!

set $mod Mod4
# set $mod Mod1

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below.
font pango:monospace 8

# This font is widely installed, provides lots of unicode glyphs, right-to-left
# text rendering and scalability on retina/hidpi displays (thanks to pango).
#font pango:DejaVu Sans Mono 8

# Before i3 v4.8, we used to recommend this one as the default:
# font -misc-fixed-medium-r-normal--13-120-75-75-C-70-iso10646-1
# The font above is very space-efficient, that is, it looks good, sharp and
# clear in small sizes. However, its unicode glyph coverage is limited, the old
# X core fonts rendering does not support right-to-left and this being a bitmap
# font, it doesn’t scale on retina/hidpi displays.

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# start a terminal
bindsym $mod+Return exec i3-sensible-terminal

# kill focused window
bindsym $mod+Shift+a kill

# start dmenu (a program launcher)
bindsym $mod+d exec dmenu_run
# There also is the (new) i3-dmenu-desktop which only displays applications
# shipping a .desktop file. It is a wrapper around dmenu, so you need that
# installed.
# bindsym $mod+d exec --no-startup-id i3-dmenu-desktop

# change focus
bindsym $mod+j focus left
bindsym $mod+k focus down
# bindsym $mod+l focus up
# bindsym $mod+m focus right # replaced with open messenger

# alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window
bindsym $mod+Shift+j move left
bindsym $mod+Shift+k move down
bindsym $mod+Shift+l move up
bindsym $mod+Shift+m move right

# alternatively, you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# split in horizontal orientation
bindsym $mod+h split h

# split in vertical orientation
bindsym $mod+v split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+z layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# focus the parent container
bindsym $mod+q focus parent

# focus the child container
#bindsym $mod+d focus child

# switch to workspace
bindsym $mod+ampersand workspace 1
bindsym $mod+eacute workspace 2
bindsym $mod+quotedbl workspace 3
bindsym $mod+apostrophe workspace 4
bindsym $mod+parenleft workspace 5
bindsym $mod+section workspace 6
bindsym $mod+egrave workspace 7
bindsym $mod+exclam workspace 8
bindsym $mod+ccedilla workspace 9
bindsym $mod+agrave workspace 10

# move focused container to workspace
bindsym $mod+Shift+ampersand move container to workspace 1; workspace 1
bindsym $mod+Shift+eacute move container to workspace 2; workspace 2
bindsym $mod+Shift+quotedbl move container to workspace 3; workspace 3
bindsym $mod+Shift+apostrophe move container to workspace 4; workspace 4
bindsym $mod+Shift+5 move container to workspace 5; workspace 5
bindsym $mod+Shift+section move container to workspace 6; workspace 6
bindsym $mod+Shift+egrave move container to workspace 7; workspace 7
bindsym $mod+Shift+exclam move container to workspace 8; workspace 8
bindsym $mod+Shift+ccedilla move container to workspace 9; workspace 9
bindsym $mod+Shift+agrave move container to workspace 10; workspace 10

# reload the configuration file
bindsym $mod+Shift+c reload
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart
# exit i3 (logs you out of your X session)
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

# resize window (you can also use the mouse for that)
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        # Pressing left will shrink the window’s width.
        # Pressing right will grow the window’s width.
        # Pressing up will shrink the window’s height.
        # Pressing down will grow the window’s height.
        bindsym j resize shrink width 10 px or 10 ppt
        bindsym k resize grow height 10 px or 10 ppt
        bindsym l resize shrink height 10 px or 10 ppt
        bindsym m resize grow width 10 px or 10 ppt

        # same bindings, but for the arrow keys
        bindsym Left resize shrink width 10 px or 10 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt

        # back to normal: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

bindsym $mod+r mode "resize"

# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
# bar {
#         status_command i3blocks
#         i3bar_command hide
#         tray_output primary
# }


#  _   _                          _   _   _                 
# | | | |___  ___ _ __   ___  ___| |_| |_(_)_ __   __ _ ___ 
# | | | / __|/ _ \ '__| / __|/ _ \ __| __| | '_ \ / _` / __|
# | |_| \__ \  __/ |    \__ \  __/ |_| |_| | | | | (_| \__ \
#  \___/|___/\___|_|    |___/\___|\__|\__|_|_| |_|\__, |___/
#                                                 |___/     

# Assign workspaces
assign [class="Rambox"] 4

# Gaps
for_window [class="^.*"] border pixel 0 
for_window [floating] border full
gaps inner 10 
gaps outer 10
# Removes gaps if only one window is present
smart_gaps on 
# Hides borders is only one window is present
hide_edge_borders smart 

# Touchpad
exec --no-startup-id xinput set-prop 'ELAN0501:00 04F3:3010 Touchpad' 'libinput Tapping Enabled' 1
exec --no-startup-id xinput set-prop 'ELAN0501:00 04F3:3010 Touchpad' 'libinput Natural Scrolling Enabled' 1 
exec --no-startup-id xinput set-prop 'ELAN0501:00 04F3:3010 Touchpad' 'libinput Accel Speed' 0.954167

# Startup programs
exec --no-startup-id hsetroot -fill ~/Pictures/backgrounds/background5_gradient.jpg
exec --no-startup-id ulauncher --hide-window
exec --no-startup-id ~/scripts/init_workspace.sh
exec --no-startup-id mopidy
# exec_always also restarts on mod+r
exec_always --no-startup-id compton -fz --config ~/.config/compton.conf
exec_always --no-startup-id ~/.config/polybar/launch.sh
exec_always --no-startup-id nm-applet

# Set alt+tab behavior
bindsym Mod1+Tab workspace back_and_forth

# Pulse Audio controls
#increase sound volume
bindsym XF86AudioRaiseVolume exec --no-startup-id pactl set-sink-mute 'alsa_output.pci-0000_00_1f.3.analog-stereo'  0 && pactl set-sink-volume 'alsa_output.pci-0000_00_1f.3.analog-stereo' +10% 
#decrease sound volume
bindsym XF86AudioLowerVolume exec --no-startup-id pactl set-sink-mute 'alsa_output.pci-0000_00_1f.3.analog-stereo' 0 && pactl set-sink-volume 'alsa_output.pci-0000_00_1f.3.analog-stereo' -10%
# mute sound
bindsym XF86AudioMute exec --no-startup-id pactl set-sink-mute 'alsa_output.pci-0000_00_1f.3.analog-stereo' toggle 

# Sreen brightness controls
# Increase screen brightness
bindsym XF86MonBrightnessUp exec light -A 15
# Decrease screen brightness
bindsym XF86MonBrightnessDown exec light -U 15 

# Touchpad controls
bindsym XF86TouchpadToggle exec /some/path/toggletouchpad.sh

# i3lock
bindsym $mod+l exec i3lock -i ~/Pictures/backgrounds/lock_screen.png -u

# Open Browser
bindsym $mod+b exec firefox
bindsym $mod+m exec firefox minerva.ugent.be

# Youtube mini player
bindsym $mod+y floating toggle; resize set 320 200; sticky toggle; move window to position 1600 5;

# TODO make this work!
# Screenshot tool
bindsym $mod+c exec screenshot-tool -r
