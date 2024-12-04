{ ... }:
{
  imports = [
    ./misc.nix
    ./nix-settings.nix
    ./user.nix
    ./ssh.nix
    ./fail2ban.nix
  ];
}
