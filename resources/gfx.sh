#!/usr/bin/env bash

fontb='resources/fonts/Kenney Blocks.ttf'

#UI
#-extent XXxYY
convert -strip -background "#222323ff" -fill "#5dde87ff" -font "$fontb" -pointsize 68 label:"sblobber 64" -extent 528x128 -gravity center resources/gfx/sprites/ui/logo.png
convert -strip resources/gfx/sprites/ui/logo.png -crop 16 resources/gfx/sprites_sets/ui/logo-%d_0.png
convert -strip -background "#222323ff" -fill "#f2a65eff" -font "$fontb" -pointsize 28 label:"Take the stairs" -extent 288x64 -crop 32 -gravity center resources/gfx/sprites_sets/ui/take_the_stairs-%d_0.png
convert -strip -background "#000000ff" -fill "#5dde87ff" -font "$fontb" -pointsize 68 label:"Pause" -extent 256x104 -gravity center resources/gfx/sprites/ui/pause.png
convert -strip -background "#000000ff" -fill "#5dde87ff" -font "$fontb" -pointsize 28 label:"Resume" -extent 134x44 -gravity center resources/gfx/sprites/ui/resume.png
convert -strip -background "#000000ff" -fill "#5dde87ff" -font "$fontb" -pointsize 28 label:"Restart" -extent 148x44 -gravity center resources/gfx/sprites/ui/restart.png
convert -strip -background "#000000ff" -fill "#5dde87ff" -font "$fontb" -pointsize 28 label:"Quit" -extent 86x44 -gravity center resources/gfx/sprites/ui/quit.png
convert -strip -background "#000000ff" -fill "#ffffffff" -font "$fontb" -pointsize 28 label:"Resume" -extent 134x44 -gravity center resources/gfx/sprites/ui/resume_selected.png
convert -strip -background "#000000ff" -fill "#ffffffff" -font "$fontb" -pointsize 28 label:"Restart" -extent 148x44 -gravity center resources/gfx/sprites/ui/restart_selected.png
convert -strip -background "#000000ff" -fill "#ffffffff" -font "$fontb" -pointsize 28 label:"Quit" -extent 86x44 -gravity center resources/gfx/sprites/ui/quit_selected.png
convert -strip -background "#000000ff" -fill "#f2a65eff" -font "$fontb" -pointsize 42 label:"Thanks for playing!" -extent 556x64 -gravity center resources/gfx/sprites/ui/you_win.png

# studio logo
convert -strip -brightness-contrast -10 resources/gfx/sprites/intro/vrgl117_logo.png resources/gfx/sprites/intro/vrgl117_logo_9.png
convert -strip -brightness-contrast -20 resources/gfx/sprites/intro/vrgl117_logo.png resources/gfx/sprites/intro/vrgl117_logo_8.png
convert -strip -brightness-contrast -30 resources/gfx/sprites/intro/vrgl117_logo.png resources/gfx/sprites/intro/vrgl117_logo_7.png
convert -strip -brightness-contrast -40 resources/gfx/sprites/intro/vrgl117_logo.png resources/gfx/sprites/intro/vrgl117_logo_6.png
convert -strip -brightness-contrast -50 resources/gfx/sprites/intro/vrgl117_logo.png resources/gfx/sprites/intro/vrgl117_logo_5.png
convert -strip -brightness-contrast -60 resources/gfx/sprites/intro/vrgl117_logo.png resources/gfx/sprites/intro/vrgl117_logo_4.png
convert -strip -brightness-contrast -70 resources/gfx/sprites/intro/vrgl117_logo.png resources/gfx/sprites/intro/vrgl117_logo_3.png
convert -strip -brightness-contrast -80 resources/gfx/sprites/intro/vrgl117_logo.png resources/gfx/sprites/intro/vrgl117_logo_2.png
convert -strip -brightness-contrast -90 resources/gfx/sprites/intro/vrgl117_logo.png resources/gfx/sprites/intro/vrgl117_logo_1.png

# n64 + n64brew jam logo
convert -strip -brightness-contrast -10 resources/gfx/sprites/intro/n64brew_jam_logo.png resources/gfx/sprites/intro/n64brew_jam_logo_9.png
convert -strip -brightness-contrast -20 resources/gfx/sprites/intro/n64brew_jam_logo.png resources/gfx/sprites/intro/n64brew_jam_logo_8.png
convert -strip -brightness-contrast -30 resources/gfx/sprites/intro/n64brew_jam_logo.png resources/gfx/sprites/intro/n64brew_jam_logo_7.png
convert -strip -brightness-contrast -40 resources/gfx/sprites/intro/n64brew_jam_logo.png resources/gfx/sprites/intro/n64brew_jam_logo_6.png
convert -strip -brightness-contrast -50 resources/gfx/sprites/intro/n64brew_jam_logo.png resources/gfx/sprites/intro/n64brew_jam_logo_5.png
convert -strip -brightness-contrast -60 resources/gfx/sprites/intro/n64brew_jam_logo.png resources/gfx/sprites/intro/n64brew_jam_logo_4.png
convert -strip -brightness-contrast -70 resources/gfx/sprites/intro/n64brew_jam_logo.png resources/gfx/sprites/intro/n64brew_jam_logo_3.png
convert -strip -brightness-contrast -80 resources/gfx/sprites/intro/n64brew_jam_logo.png resources/gfx/sprites/intro/n64brew_jam_logo_2.png
convert -strip -brightness-contrast -90 resources/gfx/sprites/intro/n64brew_jam_logo.png resources/gfx/sprites/intro/n64brew_jam_logo_1.png