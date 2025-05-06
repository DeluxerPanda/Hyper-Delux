pragma Singleton

import QtQuick
import Quickshell

Singleton {
  property Item get: catppuccin

  Item {
    id: catppuccin

    // Catppuccin Mocha color palette
    property string barBgColor: "#1E1E2E"  // Base
    property string buttonBorderColor: "#313244"  // Surface0
    property string buttonBackgroundColor: "#313244"  // Surface0
    property bool buttonBorderShadow: true
    property bool onTop: true
    property string iconColor: "#89B4FA"  // Blue
    property string iconPressedColor: "#74C7EC"  // Sapphire
    property Gradient barGradient: Gradient {
      GradientStop { position: 0.0; color: "#313244" }  // Surface0
      GradientStop { position: 0.4; color: "#1E1E2E" }  // Base
      GradientStop { position: 0.8; color: "#1E1E2E" }  // Base
      GradientStop { position: 1.0; color: "#181825" }  // Crust
    }
    property Gradient buttonInactiveGradientV: Gradient {
      GradientStop { position: 0.0; color: "#45475A" }  // Surface1
      GradientStop { position: 0.3; color: "#313244" }  // Surface0
    }
    property Gradient buttonInactiveGradientH: Gradient {
      orientation: Gradient.Horizontal
      GradientStop { position: 0.0; color: "#45475A" }  // Surface1
      GradientStop { position: 0.1; color: "#313244" }  // Surface0
    }
    property Gradient buttonActiveGradient: Gradient {
      GradientStop { position: 0.92; color: "#89B4FA" }  // Blue
      GradientStop { position: 0.93; color: "#CDD6F4" }  // Text
      GradientStop { position: 1.0; color: "#CDD6F4" }  // Text
    }
  }


}

