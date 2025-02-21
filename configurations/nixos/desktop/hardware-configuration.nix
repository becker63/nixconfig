# NOTE: We expect this file to be supplanted by the original /etc/nixos/configuration.nix
{ ... }:

{
  # These are normally in hardware-configuration.nix
  boot.loader.grub.device = "nodev";
  fileSystems."/" = { device = "/dev/disk/by-label/nixos"; fsType = "btrfs"; };

}
