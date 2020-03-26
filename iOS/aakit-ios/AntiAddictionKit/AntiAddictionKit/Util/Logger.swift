
import Foundation

struct Logger {
    
    static func debug(_ items: Any...) {
        #if DEBUG
        let s = items.reduce("") { result, next in
            return result + String(describing: next)
        }
        Swift.print("[Debug] \(s)")
        #endif
    }
    
    static func info(_ items: Any...) {
        #if DEBUG
        let s = items.reduce("") { result, next in
            return result + String(describing: next)
        }
        Swift.print("[AntiAddictionAKit] \(s)")
        #endif
    }
    
}

/// 宿主 App 能看到的 Log
/// - Parameter text: log
func Log(_ text: String) {
    #if DEBUG
    print("[AntiAddictionAKit] \(text)")
    #endif
}


/// 宿主 App 无法看不到的 Log，仅在 Framework 开发时断点
/// - Parameter text: log
func DebugLog(_ text: String) {
    #if DEBUG
//    print("*** \(text) ***")
    #endif
}


