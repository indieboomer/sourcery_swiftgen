// Generated using SwiftGen, by O.Halligon — https://github.com/AliSoftware/SwiftGen

#if os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIColor
  typealias Color = UIColor
#elseif os(OSX)
  import AppKit.NSColor
  typealias Color = NSColor
#endif

extension Color {
  convenience init(rgbaValue: UInt32) {
    let red   = CGFloat((rgbaValue >> 24) & 0xff) / 255.0
    let green = CGFloat((rgbaValue >> 16) & 0xff) / 255.0
    let blue  = CGFloat((rgbaValue >>  8) & 0xff) / 255.0
    let alpha = CGFloat((rgbaValue      ) & 0xff) / 255.0

    self.init(red: red, green: green, blue: blue, alpha: alpha)
  }
}

// swiftlint:disable file_length
// swiftlint:disable line_length

// swiftlint:disable type_body_length
enum ColorName {
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#6c74bf"></span>
  /// Alpha: 100% <br/> (0x6c74bfff)
  case myFuchsia
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#427924"></span>
  /// Alpha: 100% <br/> (0x427924ff)
  case myGreen
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#b7cb1d"></span>
  /// Alpha: 100% <br/> (0xb7cb1dff)
  case myGreenish
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#80ff00"></span>
  /// Alpha: 100% <br/> (0x80ff00ff)
  case myLime
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#e0009c"></span>
  /// Alpha: 100% <br/> (0xe0009cff)
  case myPurple

  var rgbaValue: UInt32 {
    switch self {
    case .myFuchsia:
      return 0x6c74bfff
    case .myGreen:
      return 0x427924ff
    case .myGreenish:
      return 0xb7cb1dff
    case .myLime:
      return 0x80ff00ff
    case .myPurple:
      return 0xe0009cff
    }
  }

  var color: Color {
    return Color(named: self)
  }
}
// swiftlint:enable type_body_length

extension Color {
  convenience init(named name: ColorName) {
    self.init(rgbaValue: name.rgbaValue)
  }
}
