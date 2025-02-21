{ ... }: {
  services.skhd = {
    enable = true;
    skhdConfig = ''
      lshift + cmd - 1 : yabai -m window --space  1
      lshift + cmd - 2 : yabai -m window --space  2
      lshift + cmd - 3 : yabai -m window --space  3
      lshift + cmd - 4 : yabai -m window --space  4
      lshift + cmd - 5 : yabai -m window --space  5
      lshift + cmd - 6 : yabai -m window --space  6
      lshift + cmd - 7 : yabai -m window --space  7
      lshift + cmd - 8 : yabai -m window --space  8
      lshift + cmd - 9 : yabai -m window --space  9

      cmd - 9 : open ~
      cmd - 0 : open -na "iTerm"

      ralt - right : yabai -m window --focus east
      ralt - left : yabai -m window --focus west
      ralt - up : yabai -m window --focus north
      ralt - down : yabai -m window --focus south

      rcmd - right : yabai -m window --warp east
      rcmd - left : yabai -m window --warp west
      rcmd - up : yabai -m window --warp north
      rcmd - down : yabai -m window --warp south
    '';
  };
}
