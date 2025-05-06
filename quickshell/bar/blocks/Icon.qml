import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Io
import Quickshell.Widgets
import Qt5Compat.GraphicalEffects
import "../"
import "root:/"

BarBlock {
  id: root
  Layout.preferredWidth: 20

  content: BarText {
    text: "🐼"
    pointSize: 15
    anchors.horizontalCenterOffset: 4
  }

  color: "transparent"

  Process {
    id: neofetch
    running: false
    command: [ "sh", "-c", "rofi -show drun -x 0 -y 0" ]
    stdout: SplitParser {
      onRead: data => console.log(`line read: ${data}`)
    }
  }

  onClicked: function() {
    neofetch.running = !neofetch.running
  }
}

