{ pkgs, ... }:
{

  programs.fish.enable = true;
  users = {
    users = {
      guif = {
        extraGroups = [
          "wheel"
          "ssh"
        ];
        group = "guif";
        initialHashedPassword = "$y$j9T$hHZ1NIxqNvPno5mkSDSjI1$PojSMDbnHYHcrrdaTw74w6tSlLIRvMCbCbaCiDpMx3.";
        isNormalUser = true;
        openssh.authorizedKeys.keys = [
          "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIPI4hVcnH2C5Rq0Pkgv+rw2h1dAm2QQdyboDfW7kUlw guif@glap"
        ];
        shell = pkgs.fish;
      };
    };
    groups.guif = { };
    groups.ssh = { };
  };
}
