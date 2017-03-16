// Generated using SwiftGen, by O.Halligon — https://github.com/AliSoftware/SwiftGen

#if os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIFont
  typealias Font = UIFont
#elseif os(OSX)
  import AppKit.NSFont
  typealias Font = NSFont
#endif

// swiftlint:disable file_length
// swiftlint:disable line_length

protocol FontConvertible {
  func font(size: CGFloat) -> Font!
}

extension FontConvertible where Self: RawRepresentable, Self.RawValue == String {
  func font(size: CGFloat) -> Font! {
    return Font(font: self, size: size)
  }
}

extension Font {
  convenience init!<FontType: FontConvertible>
    (font: FontType, size: CGFloat)
    where FontType: RawRepresentable, FontType.RawValue == String {
      self.init(name: font.rawValue, size: size)
  }
}

struct FontFamily {
  enum GothamNarrow: String, FontConvertible {
    case black = "GothamNarrow-Black"
    case blackItalic = "GothamNarrow-BlackItalic"
    case bold = "GothamNarrow-Bold"
    case boldItalic = "GothamNarrow-BoldItalic"
    case book = "GothamNarrow-Book"
    case bookItalic = "GothamNarrow-BookItalic"
    case light = "GothamNarrow-Light"
    case lightItalic = "GothamNarrow-LightItalic"
    case medium = "GothamNarrow-Medium"
    case mediumItalic = "GothamNarrow-MediumItalic"
    case thin = "GothamNarrow-Thin"
    case thinItalic = "GothamNarrow-ThinItalic"
    case ultra = "GothamNarrow-Ultra"
    case ultraItalic = "GothamNarrow-UltraItalic"
    case extraLight = "GothamNarrow-XLight"
    case extraLightItalic = "GothamNarrow-XLightItalic"
  }
}
