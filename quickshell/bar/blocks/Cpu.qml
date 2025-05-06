import QtQuick
import QtQuick.Controls
import Quickshell
import Quickshell.Io
import "../"

BarBlock {
  id: text
  content: BarText {
    symbolText: `- ${Math.floor(percentFree)}%`
  }

  property real percentFree

  Process {
    id: cpuProc
    command: ["sh", "-c", "top -bn1 | grep '%Cpu' | awk '{print 100 - $8}'"]
    running: true

    stdout: SplitParser {
      onRead: data => percentFree = data
    }
  }

  Timer {
    interval: 2000
    running: true
    repeat: true
    onTriggered: cpuProc.running = true
  }
}
