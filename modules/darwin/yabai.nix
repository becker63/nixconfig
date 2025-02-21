{ ... }: {
  services.yabai = {
    enable = true;  # or false if you only want the config generated, but not run
    enableScriptingAddition = true;
    # These keys become "yabai -m config <key> <value>" lines in the final config.
    config = {
      layout             = "bsp";
      focus_follows_mouse = "autofocus";
      mouse_follows_focus = "on";
      top_padding        = 0;
      bottom_padding     = 0;
      left_padding       = 0;
      right_padding      = 0;
      window_gap         = 0;
      window_opacity     = "on";
    };

    extraConfig = ''
      # do not manage any app not matching this set
      yabai -m rule --add app!="^(Proxyman|Toggl Track|Arc|Todoist|iTerm2|ChatGPT|Notion|Notion Calendar|Slack|Outlook|Asana|Zotero|Spaceman|DataGrip|Code|YouTube|Obsidian|Cutter|Binary Ninja|Docker|Warp|Zed Preview|Google Chrome)$" manage=off
    '';
  };
}
