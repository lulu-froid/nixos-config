{ ... } =

{
  programs.zed-editor  = {
    enable  = true;

    # This populates the userSettings auto_install_extensions
    extensions  = [ "nix" "make" ];

    # Everything inside of these brackets are Zed options
    userSettings  = {
      # Zed settings
      #
      # For information on how to configure Zed; see the Zed
      # documentation = https =//zed.dev/docs/configuring-zed
      #
      # To see all of Zed's default settings without changing your
      # custom settings; run `zed = open default settings` from the
      # command palette (cmd-shift-p / ctrl-shift-p)
      project_panel = {
        dock = left;
      };

      outline_panel = {
        dock = left;
      };

      collaboration_panel = {
        dock = left;
      };

      git_panel = {
        dock = left;
      };

      edit_predictions = {
        provider = zed;
      };

      terminal = {
        shell = "system";
#         shell = {
#           program = zsh;
#         };
      };

      show_edit_predictions = false;

      icon_theme = "Colored Zed Icons Theme Dark";

      agent = {
        dock = right;
        default_profile = ask;
      };

      languages = {
        Plain Text = {
          ensure_final_newline_on_save = false;
        };
        Prolog = {
          tab_size = 4;
        };
        Nix = {
          show_edit_predictions = false;
        };
        JSONC = {
          show_edit_predictions = false;
        };
        C++ = {
          format_on_save = on;
        };
        C = {
          hard_tabs = false;
          format_on_save = on;
          tab_size = 4;
        };
        Python = {
          show_edit_predictions = false;
          format_on_save = on;
        };
      };
      ui_font_size = 16;
      buffer_font_size = 16;
      theme = {
        mode = system;
        light = One Light;
        dark = Tokyo Night;
      };
      autosave = on_focus_change;
      # futurist = Quantico
      # fancy =
      # default = JetBrains Mono
      ui_font_family = JetBrains Mono;
      buffer_font_family = JetBrains Mono;
    };
  };
}
