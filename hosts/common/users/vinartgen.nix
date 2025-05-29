{
  config,
  pkgs,
  inputs,
  ...
}: {
  users.users.vinartgen = {
    initialHashedPassword = "$y$j9T$u/Lq9T2GUAB4UDDE1rN8k.$f9u/HbQNd1mcyaZKgffCsSBT/otrh5pJIk16rTDQHl.";
    isNormalUser = true;
    description = "vinartgen";
    extraGroups = [
      "wheel"
      "networkmanager"
      "libvirtd"
      "audio"
      "video"
      "plugdev"
      "input"
      "kvm"
      "qemu-libvirtd"
    ];
    # openssh.authorizedKeys.keys = [
      
    # ];
    packages = [inputs.home-manager.packages.${pkgs.system}.default];
  };
  home-manager.users.vinartgen =
    import ../../../home/vinartgen/${config.networking.hostName}.nix;
}