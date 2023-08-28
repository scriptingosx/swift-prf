// prf

// a simple tool to read preferences

// by Armin Briegel - Scripting OS X

// Permission is granted to use this code in any way you want.
// Credit would be nice, but not obligatory.
// Provided "as is", without warranty of any kind, express or implied.

import Foundation
import ArgumentParser

@main
struct PRF: ParsableCommand {
  static var configuration = CommandConfiguration(
    commandName: "prf",
    abstract: "read effective preference value",
    version: "1.0"
  )

  @Argument(help: "the preference domain, e.g. 'com.apple.dock'")
  var domain: String

  @Argument(help: "the preference key, e.g. 'orientation'")
  var key: String

  func run() {
    let plist = CFPreferencesCopyAppValue(key as CFString, domain as CFString)
    print(plist?.description ?? "<no value>")
  }
}
