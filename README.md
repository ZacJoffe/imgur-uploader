# Imgur Uploader

Bash script to upload images to Imgur. Created specifically to be used with [maim](https://github.com/naelstrof/maim).

## About Project

Over the last month or so, I've been doing my best to use Linux as a daily driver. One program that I've been missing a good deal from Windows, however, is [ShareX](https://getsharex.com/). I love having the ability to automatically upload Imgur screenshots without having, and I haven't really found an alternative as seemless as ShareX here on Linux.

I only really use the screenshot selection tool, which can be easily done with `maim -s`, and the output can be piped to the clipboard for further use. Ideally though, I'd like it to be automatically uploaded to Imgur in similar fassion to ShareX. A script [already exists for that](https://github.com/tremby/imgur.sh) and can be used for exactly what I want (as shown with the last command on maim's [GitHub page](https://github.com/naelstrof/maim)), but I figured I'd try to make my own.

## Dependencies

This script requires `curl` and `jq` to run.

## Usage

Clone the repo (or download) in a location of your choice. To use it, run the script followed by the directory of the picture you want to upload:
```
$ bash uploader.sh /tmp/screenshot.png
```
This will echo the Imgur link. You can put this in the clipboard by piping into xclip:
```
$ bash uploader.sh /tmp/screenshot.png | xclip -selection clipboard
```
Finally, and probably most useful, we can use maim to create a screenshot, upload it to Imgur, and place the link in the clipboard:
```
$ maim -s /tmp/screenshot.png; bash uploader.sh /tmp/screenshot.png | xclip -selection clipboard
```
This is a rather long command, but using an alias makes quick work of it.