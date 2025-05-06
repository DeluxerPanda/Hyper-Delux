import QtQuick
import Quickshell.Io
import "../"

BarBlock {
  id: text
  content: BarText {
    symbolText: `| ${Datetime.date} |`
  }
    Process {
    id: calander
    running: false
    command: [ "sh", "-c", "rofi -show drun -x 0 -y 0" ]
    stdout: SplitParser {
      onRead: data => console.log(`line read: ${data}`)
    }
  }

  onClicked: function() {
    calander.running = !calander.running
  }
}

