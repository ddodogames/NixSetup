# NixSetup
Config file of my NixOS setup for the Samsung RV509 laptop that i use. Nothing fancy about it.

## History
The creation of this repo originally started with the branch [old](https://github.com/ddodogames/NixSetup/tree/old) where it used the base of the default nix configuration generated for new installations. It used everything in one file and was therefore easily messy when adding too much in it.

A work on the "revamped" version started after looking at [wyattgill9's nix config](https://github.com/wyattgill9/nix-config) and taking some inspiration from it such as separating certain options into its own file inside of a folder as well as tweaking stuff.

Unfortunately, at some point, my old crappy HP laptop whose config was designed for had died in July 2025 which made the setup useless. I eventually got a laptop (still old as well, though) around the same time later but i did not return to NixOS stuff until now for the sake of testing it.

Unlike the previous version of this config, this setup is intentionally designed to be minimal for the Samsung laptop (i.e. core system stuff are configured and all important apps are installed through flatpaks, appimages and distrobox containers with the exception of Firefox).

