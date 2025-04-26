{ pkgs, ... }: {
  
  # Enable GNOME
  services = {
    xserver.displayManager.gdm.enable = true;
    xserver.desktopManager.gnome.enable = true; # Enable gnome desktop
    gnome.gnome-browser-connector.enable = true; # Gnome customizations

    # Enable pipewire, disable pulseaudio
    pulseaudio.enable = false;
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
  };
  security.rtkit.enable = true;

  # Disable unwanted default GNOME applications
  environment.gnome.excludePackages = with pkgs; [
    # gedit
    # gnome-connections
    # gnome-console
    # gnome-photos
    gnome-tour
    snapshot
    atomix # puzzle game
    baobab # disk usage analyzer
    cheese # webcam tool
    epiphany # web browser
    evince # document viewer
    geary # email reader
    # gnome-calendar
    # gnome-characters
    # gnome-clocks
    gnome-contacts
    # gnome-disk-utility
    # gnome-font-viewer
    # gnome-logs
    gnome-maps
    gnome-music
    # gnome-shell-extensions
    # gnome-system-monitor
    # gnome-terminal
    # gnome-weather
    hitori # sudoku game
    iagno # go game
    simple-scan
    tali # poker game
    yelp # help viewer
  ];
}