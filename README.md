![Logo](https://avatars2.githubusercontent.com/u/12774718?s=150)

# Up1 Encrypted Image Host

This is a modification of [Up1.](https://github.com/Upload/up1)

Up1 is a simple host that client-side encrypts images, text, and other data, and stores them, with the server knowing nothing about the contents.
It has the ability to view images, text with syntax highlighting, short videos, and arbitrary binaries as downloadables.

## Changes

### Automatic deletion 
This modification adds support for deleting files after a certain period of time has elapsed.
The option is defined in config.json as `deletion_period`, the number of seconds before deletion by the server.
The file will remain on the server indefinitely if the value of `deletion_period` is 0.

Because files will remain on the server if the process is interrupted, the file storage folder will be erased when the server restarts if the config value `scrub_on_reboot` is true.

## Building

First, you need to install the [Go toolchain.](https://golang.org/)
This can be done easily on Debian/Ubuntu systems with

`
sudo apt-get install golang
`

Then, to build Up1, just type

`
./build.sh
`

## Running

Edit config.json according to your use case.

then type

`
./up1d
`