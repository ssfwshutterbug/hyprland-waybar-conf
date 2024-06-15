# README

This is the waybar configuration to work with dwl, uses the script: waybar_dwl. And use dynamic color produced by pywal (which can produce color scheme based on wallpaper, i also write another script to auto change wallpaper and generate the color scheme).


- in order to make it works, we need to run dwl and redirect its output to a file, in my case, i alias dwl to

    ```shell
    alias dwl="(cd ~/.config/waybar && git checkout dwl); dbus-run-session dwl > /tmp/dwl_waybar.info"
    ```

- then modify waybar configuration to add a module to execute `waybar_dwl` script

    ```shell
    "modules-left": ["custom/dwl_workspaces"],

          "custom/dwl_workspaces": {
            "exec": "$HOME/.config/waybar/scripts/waybar_dwl",
            //"interval": 1,
            "return-type": "json",
            "format": "{}",
          },
    ```

- the last thing is to make sure pywal already produced the color scheme, in my case i run the script [`wl_wall`](https://github.com/ssfwshutterbug/scripts/blob/main/wl_wall) in dwl's autocmd.

    ```shell
    wl_wall -l &
    ```
