{ config, ... }:
{
  programs = {
    git = {
      enable = true;
      ignores = [ "*~" "*.swp" ];
      settings = {
        user = {
          name = config.me.fullname;
          email = config.me.email;
        };
        alias = {
          ci = "commit";
        };
        # init.defaultBranch = "master";
        # pull.rebase = false;
      };
    };

    lazygit.enable = true;
  };
}
