// Generated using SwiftGen, by O.Halligon — https://github.com/AliSoftware/SwiftGen

import Foundation
import UIKit
import SwiftGen1

// swiftlint:disable file_length
// swiftlint:disable line_length
// swiftlint:disable type_body_length

protocol StoryboardSceneType {
  static var storyboardName: String { get }
}

extension StoryboardSceneType {
  static func storyboard() -> UIStoryboard {
    return UIStoryboard(name: self.storyboardName, bundle: nil)
  }

  static func initialViewController() -> UIViewController {
    guard let vc = storyboard().instantiateInitialViewController() else {
      fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
    }
    return vc
  }
}

extension StoryboardSceneType where Self: RawRepresentable, Self.RawValue == String {
  func viewController() -> UIViewController {
    return Self.storyboard().instantiateViewController(withIdentifier: self.rawValue)
  }
  static func viewController(identifier: Self) -> UIViewController {
    return identifier.viewController()
  }
}

protocol StoryboardSegueType: RawRepresentable { }

extension UIViewController {
  func perform<S: StoryboardSegueType>(segue: S, sender: Any? = nil) where S.RawValue == String {
    performSegue(withIdentifier: segue.rawValue, sender: sender)
  }
}

struct StoryboardScene {
  enum Main: String, StoryboardSceneType {
    static let storyboardName = "Main"

    static func initialViewController() -> SwiftGen1.ViewController {
      guard let vc = storyboard().instantiateInitialViewController() as? SwiftGen1.ViewController else {
        fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
      }
      return vc
    }

    case vc1Scene = "vc1"
    static func instantiateVc1() -> SwiftGen1.ViewController {
      guard let vc = StoryboardScene.Main.vc1Scene.viewController() as? SwiftGen1.ViewController
      else {
        fatalError("ViewController 'vc1' is not of the expected class SwiftGen1.ViewController.")
      }
      return vc
    }

    case vc2Scene = "vc2"
    static func instantiateVc2() -> SwiftGen1.ViewController {
      guard let vc = StoryboardScene.Main.vc2Scene.viewController() as? SwiftGen1.ViewController
      else {
        fatalError("ViewController 'vc2' is not of the expected class SwiftGen1.ViewController.")
      }
      return vc
    }

    case vc3Scene = "vc3"
    static func instantiateVc3() -> SwiftGen1.ViewController {
      guard let vc = StoryboardScene.Main.vc3Scene.viewController() as? SwiftGen1.ViewController
      else {
        fatalError("ViewController 'vc3' is not of the expected class SwiftGen1.ViewController.")
      }
      return vc
    }

    case vc4Scene = "vc4"
    static func instantiateVc4() -> SwiftGen1.ViewController {
      guard let vc = StoryboardScene.Main.vc4Scene.viewController() as? SwiftGen1.ViewController
      else {
        fatalError("ViewController 'vc4' is not of the expected class SwiftGen1.ViewController.")
      }
      return vc
    }

    case vc5Scene = "vc5"
    static func instantiateVc5() -> SwiftGen1.ViewController {
      guard let vc = StoryboardScene.Main.vc5Scene.viewController() as? SwiftGen1.ViewController
      else {
        fatalError("ViewController 'vc5' is not of the expected class SwiftGen1.ViewController.")
      }
      return vc
    }

    case vc6Scene = "vc6"
    static func instantiateVc6() -> SwiftGen1.ViewController {
      guard let vc = StoryboardScene.Main.vc6Scene.viewController() as? SwiftGen1.ViewController
      else {
        fatalError("ViewController 'vc6' is not of the expected class SwiftGen1.ViewController.")
      }
      return vc
    }

    case vc7Scene = "vc7"
    static func instantiateVc7() -> SwiftGen1.ViewController {
      guard let vc = StoryboardScene.Main.vc7Scene.viewController() as? SwiftGen1.ViewController
      else {
        fatalError("ViewController 'vc7' is not of the expected class SwiftGen1.ViewController.")
      }
      return vc
    }

    case vc8Scene = "vc8"
    static func instantiateVc8() -> SwiftGen1.ViewController {
      guard let vc = StoryboardScene.Main.vc8Scene.viewController() as? SwiftGen1.ViewController
      else {
        fatalError("ViewController 'vc8' is not of the expected class SwiftGen1.ViewController.")
      }
      return vc
    }

    case vc9Scene = "vc9"
    static func instantiateVc9() -> SwiftGen1.ViewController {
      guard let vc = StoryboardScene.Main.vc9Scene.viewController() as? SwiftGen1.ViewController
      else {
        fatalError("ViewController 'vc9' is not of the expected class SwiftGen1.ViewController.")
      }
      return vc
    }
  }
}

struct StoryboardSegue {
  enum Main: String, StoryboardSegueType {
    case segue1 = "segue1"
    case segue2 = "segue2"
    case segue3 = "segue3"
    case segue4 = "segue4"
    case segue5 = "segue5"
    case segue6 = "segue6"
    case segue8 = "segue8"
    case segue9 = "segue9"
  }
}
