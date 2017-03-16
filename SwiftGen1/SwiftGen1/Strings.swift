// Generated using SwiftGen, by O.Halligon — https://github.com/AliSoftware/SwiftGen

import Foundation

// swiftlint:disable file_length
// swiftlint:disable line_length

// swiftlint:disable type_body_length
// swiftlint:disable nesting
// swiftlint:disable variable_name
// swiftlint:disable valid_docs

enum L10n {

  enum Apples {
    /// You have %d apples
    static func count(_ p1: Int) -> String {
      return L10n.tr("apples.count", p1)
    }
  }

  enum Bananas {
    /// %d bananas belong to %@.
    static func owner(_ p1: Int, _ p2: String) -> String {
      return L10n.tr("bananas.owner", p1, p2)
    }
  }

  enum Dogs {

    enum Cats {

      enum Mice {
        /// %d dogs chase %d cats chasing %d mice of color %@
        static func color(_ p1: Int, _ p2: Int, _ p3: Int, _ p4: String) -> String {
          return L10n.tr("dogs.cats.mice.color", p1, p2, p3, p4)
        }
      }
    }
  }
}

extension L10n {
  fileprivate static func tr(_ key: String, _ args: CVarArg...) -> String {
    let format = NSLocalizedString(key, comment: "")
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:enable type_body_length
// swiftlint:enable nesting
// swiftlint:enable variable_name
// swiftlint:enable valid_docs
