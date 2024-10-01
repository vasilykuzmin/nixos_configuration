{ pkgs, ... }:
{
  boot.kernelModules = [
    "v4l2loopback" # Webcam loopback
  ];
  boot.extraModulePackages = [
    pkgs.linuxPackages.v4l2loopback # Webcam loopback
  ];

  environment.systemPackages = with pkgs; [
    pkgs.droidcam
  ];
}
