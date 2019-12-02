#if os(Linux)
import Glibc
#else
import Darwin
#endif

guard CommandLine.argc > 1 else {
    print("Usage: strlen [string...]")
    exit(0)
}

var listCopy = CommandLine.arguments
listCopy.removeFirst()

for str in listCopy {
    let bytes: [UInt8] = Array(str.utf8)
    let s = str.count == 1 ? "character" : "characters"
    print("strlen: \(str.count) \(s), \(str.utf8.count) in utf8 collection, \(bytes.count) Bytes")
}
