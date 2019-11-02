

import Flutter
import UIKit

class EventStreamHandler: NSObject, FlutterStreamHandler {
    private var eventSink: FlutterEventSink? = null
    
    init(eventSink : FlutterEventSink) {
        self.eventSink = eventSink
    }
    // EventChannel.StreamHandler methods
    public func onListen(withArguments _: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        generatedLinkSink = events
        return nil
    }
    public func onCancel(withArguments _: Any?) -> FlutterError? {
        generatedLinkSink = nil
        return nil
    }
}
