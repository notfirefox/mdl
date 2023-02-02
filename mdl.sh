#!/bin/sh

yt-dlp \
  --extract-audio \
  --format "ba[ext=m4a]" \
  --parse-metadata "playlist_index:%(track_number)s" \
  --add-metadata \
  --embed-thumbnail \
  --restrict-filenames \
  --output "%(title)s.%(ext)s" \
  "<url>"

# This only works for openSUSE
# TODO: Make it work for other distros
file-rename 'y/A-Z/a-z/' *.m4a
file-rename 'y/_/-/' *.m4a
