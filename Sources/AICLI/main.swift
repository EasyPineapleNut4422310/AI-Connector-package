import Foundation

print("AI CLI Tool starting...")

let arguments = CommandLine.arguments

if arguments.count > 1 {
    let input = arguments.dropFirst().joined(separator: " ")
    print("You said: \(input)")
} else {
    print("Usage: ai-cli <message>")
}
