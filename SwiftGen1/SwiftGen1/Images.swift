// Generated using SwiftGen, by O.Halligon — https://github.com/AliSoftware/SwiftGen

#if os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIImage
  typealias Image = UIImage
#elseif os(OSX)
  import AppKit.NSImage
  typealias Image = NSImage
#endif

// swiftlint:disable file_length
// swiftlint:disable line_length

// swiftlint:disable type_body_length
enum Asset: String {
  case _001Path = "001-path"
  case _002DeskChair = "002-desk-chair"
  case _003Placeholder = "003-placeholder"
  case _004Padlock = "004-padlock"
  case _005Target1 = "005-target-1"
  case _006Mortarboard = "006-mortarboard"
  case _007Mask = "007-mask"
  case _008Telescope = "008-telescope"
  case _009Trophy = "009-trophy"
  case _010Key = "010-key"
  case _011Smartphone = "011-smartphone"
  case _012Medal = "012-medal"
  case _013Presentation1 = "013-presentation-1"
  case _014House = "014-house"
  case _015Email = "015-email"
  case _016Responsive = "016-responsive"
  case _017Coding = "017-coding"
  case _018Creativity = "018-creativity"
  case _019Handshake = "019-handshake"
  case _020List = "020-list"
  case _021Presentation = "021-presentation"
  case _022Target = "022-target"
  case _023Briefcase = "023-briefcase"
  case _024Graduation = "024-graduation"
  case _025Newspaper = "025-newspaper"
  case _026Translator = "026-translator"
  case _027Growth = "027-growth"
  case _028Avatar = "028-avatar"
  case _029Strength = "029-strength"
  case _030Calendar = "030-calendar"
  case _031RightArrow = "031-right-arrow"
  case _032LeftArrow = "032-left-arrow"
  case _033DownArrow = "033-down-arrow"
  case _034Menu1 = "034-menu-1"
  case _035MenuButton = "035-menu-button"
  case _036Menu = "036-menu"

  var image: Image {
    return Image(asset: self)
  }
}
// swiftlint:enable type_body_length

extension Image {
  convenience init!(asset: Asset) {
    self.init(named: asset.rawValue)
  }
}
