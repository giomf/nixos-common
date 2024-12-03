{
  ...
}:
{
  services.fail2ban = {
    enable = true;
    maxretry = 5;
    ignoreIP = [
      "10.0.0.0/8"
      "172.16.0.0/12"
      "192.168.0.0/16"
    ];
    bantime = "10m";
    bantime-increment = {
      enable = true;
      overalljails = true;
    };
    jails.traefik-auth.settings = {
      logpath = "/tank/encrypted/services/traefik/logs/access.log";
      backend = "auto";
      mode = "aggressive";
      action = ''dummy[target=/var/run/fail2ban/fail2ban.dummy.txt]'';
    };
  };
}
