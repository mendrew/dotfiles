https://github.com/akhodakivskiy/VimFx/blob/master/documentation/config-file.md

Go to about:config and set the config_file_directory option to the path of the directory you created above. The path can be either absolute, such as /home/you/.config/vimfx or C:\Users\you\vimfx, or start with a ~ (which is a shortcut to your home directory) such as ~/.config/vimfx or ~\vimfx.

Run the gC command in VimFx. That needs to be done any time you change config_file_directory, or edit config.js or frame.js. This tells VimFx to reload the config file. If everything went well, a notification should appear (in the bottom-right corner of the window) telling you that the config file was successfully reloaded.
