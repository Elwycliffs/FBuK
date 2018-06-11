import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0

RowLayout {
    Blip {id: blip1; Timer{id: timer1; repeat: false; running: true; interval: 0; triggeredOnStart: true; onTriggered: {blip4.color='darkgray'; blip1.color='white'; timer2.start(); timer1.stop()}}}
    Blip {id: blip2; Timer{id: timer2; repeat: false; running: true; interval: 400; triggeredOnStart: false; onTriggered: {blip1.color='darkgray'; blip2.color='white'; timer2.stop(); timer3.start()}}}
    Blip {id: blip3; Timer{id: timer3; repeat: false; running: true; interval: 400; triggeredOnStart: false; onTriggered: {blip2.color='darkgray'; blip3.color='white'; timer3.stop(); timer4.start()}}}
    Blip {id: blip4; Timer{id: timer4; repeat: false; running: true; interval: 400; triggeredOnStart: false; onTriggered: {blip4.color='white'; blip3.color='darkgray'; timer4.stop()}}}
    Timer {id: repeat; repeat: true; running: true; interval: 1600; triggeredOnStart: false; onTriggered: {timer1.start()}}
}
