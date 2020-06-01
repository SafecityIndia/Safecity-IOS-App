// Generated using SwiftGen, by O.Halligon — https://github.com/AliSoftware/SwiftGen

import Foundation
import UIKit

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
  func performSegue<S: StoryboardSegueType>(segue: S, sender: AnyObject? = nil) where S.RawValue == String {
    performSegue(withIdentifier: segue.rawValue, sender: sender)
  }
}

// swiftlint:disable file_length
// swiftlint:disable type_body_length

struct StoryboardScene {
  enum Home: String, StoryboardSceneType {
    static let storyboardName = "Home"

    case activityViewControllerScene = "ActivityViewController"
    static func instantiateActivityViewController() -> ActivityViewController {
      guard let vc = StoryboardScene.Home.activityViewControllerScene.viewController() as? ActivityViewController
      else {
        fatalError("ViewController 'ActivityViewController' is not of the expected class ActivityViewController.")
      }
      return vc
    }

    case blogBaseViewControllerScene = "BlogBaseViewController"
    static func instantiateBlogBaseViewController() -> BlogBaseViewController {
      guard let vc = StoryboardScene.Home.blogBaseViewControllerScene.viewController() as? BlogBaseViewController
      else {
        fatalError("ViewController 'BlogBaseViewController' is not of the expected class BlogBaseViewController.")
      }
      return vc
    }

    case blogDetailViewControllerScene = "BlogDetailViewController"
    static func instantiateBlogDetailViewController() -> BlogDetailViewController {
      guard let vc = StoryboardScene.Home.blogDetailViewControllerScene.viewController() as? BlogDetailViewController
      else {
        fatalError("ViewController 'BlogDetailViewController' is not of the expected class BlogDetailViewController.")
      }
      return vc
    }

    case blogViewControllerScene = "BlogViewController"
    static func instantiateBlogViewController() -> BlogViewController {
      guard let vc = StoryboardScene.Home.blogViewControllerScene.viewController() as? BlogViewController
      else {
        fatalError("ViewController 'BlogViewController' is not of the expected class BlogViewController.")
      }
      return vc
    }

    case changePasswordControllerScene = "ChangePasswordController"
    static func instantiateChangePasswordController() -> ChangePasswordController {
      guard let vc = StoryboardScene.Home.changePasswordControllerScene.viewController() as? ChangePasswordController
      else {
        fatalError("ViewController 'ChangePasswordController' is not of the expected class ChangePasswordController.")
      }
      return vc
    }

    case contactsViewControllerScene = "ContactsViewController"
    static func instantiateContactsViewController() -> ContactsViewController {
      guard let vc = StoryboardScene.Home.contactsViewControllerScene.viewController() as? ContactsViewController
      else {
        fatalError("ViewController 'ContactsViewController' is not of the expected class ContactsViewController.")
      }
      return vc
    }

    case eventDetailsViewControllerScene = "EventDetailsViewController"
    static func instantiateEventDetailsViewController() -> EventDetailsViewController {
      guard let vc = StoryboardScene.Home.eventDetailsViewControllerScene.viewController() as? EventDetailsViewController
      else {
        fatalError("ViewController 'EventDetailsViewController' is not of the expected class EventDetailsViewController.")
      }
      return vc
    }

    case eventsBaseViewControllerScene = "EventsBaseViewController"
    static func instantiateEventsBaseViewController() -> EventsBaseViewController {
      guard let vc = StoryboardScene.Home.eventsBaseViewControllerScene.viewController() as? EventsBaseViewController
      else {
        fatalError("ViewController 'EventsBaseViewController' is not of the expected class EventsBaseViewController.")
      }
      return vc
    }

    case eventsViewControllerScene = "EventsViewController"
    static func instantiateEventsViewController() -> EventsViewController {
      guard let vc = StoryboardScene.Home.eventsViewControllerScene.viewController() as? EventsViewController
      else {
        fatalError("ViewController 'EventsViewController' is not of the expected class EventsViewController.")
      }
      return vc
    }

    case filterActivityViewControllerScene = "FilterActivityViewController"
    static func instantiateFilterActivityViewController() -> FilterActivityViewController {
      guard let vc = StoryboardScene.Home.filterActivityViewControllerScene.viewController() as? FilterActivityViewController
      else {
        fatalError("ViewController 'FilterActivityViewController' is not of the expected class FilterActivityViewController.")
      }
      return vc
    }

    case filterViewControllerScene = "FilterViewController"
    static func instantiateFilterViewController() -> FilterViewController {
      guard let vc = StoryboardScene.Home.filterViewControllerScene.viewController() as? FilterViewController
      else {
        fatalError("ViewController 'FilterViewController' is not of the expected class FilterViewController.")
      }
      return vc
    }

    case forgotViewControllerScene = "ForgotViewController"
    static func instantiateForgotViewController() -> ForgotViewController {
      guard let vc = StoryboardScene.Home.forgotViewControllerScene.viewController() as? ForgotViewController
      else {
        fatalError("ViewController 'ForgotViewController' is not of the expected class ForgotViewController.")
      }
      return vc
    }

    case heatMapParentControllerScene = "HeatMapParentController"
    static func instantiateHeatMapParentController() -> HeatMapParentController {
      guard let vc = StoryboardScene.Home.heatMapParentControllerScene.viewController() as? HeatMapParentController
      else {
        fatalError("ViewController 'HeatMapParentController' is not of the expected class HeatMapParentController.")
      }
      return vc
    }

    case heatMapViewControllerScene = "HeatMapViewController"
    static func instantiateHeatMapViewController() -> HeatMapViewController {
      guard let vc = StoryboardScene.Home.heatMapViewControllerScene.viewController() as? HeatMapViewController
      else {
        fatalError("ViewController 'HeatMapViewController' is not of the expected class HeatMapViewController.")
      }
      return vc
    }

    case listHomeViewControllerScene = "ListHomeViewController"
    static func instantiateListHomeViewController() -> ListHomeViewController {
      guard let vc = StoryboardScene.Home.listHomeViewControllerScene.viewController() as? ListHomeViewController
      else {
        fatalError("ViewController 'ListHomeViewController' is not of the expected class ListHomeViewController.")
      }
      return vc
    }

    case mapFullViewControllerScene = "MapFullViewController"
    static func instantiateMapFullViewController() -> MapFullViewController {
      guard let vc = StoryboardScene.Home.mapFullViewControllerScene.viewController() as? MapFullViewController
      else {
        fatalError("ViewController 'MapFullViewController' is not of the expected class MapFullViewController.")
      }
      return vc
    }

    case menuViewControllerScene = "MenuViewController"
    static func instantiateMenuViewController() -> MenuViewController {
      guard let vc = StoryboardScene.Home.menuViewControllerScene.viewController() as? MenuViewController
      else {
        fatalError("ViewController 'MenuViewController' is not of the expected class MenuViewController.")
      }
      return vc
    }

    case otherUserViewControllerScene = "OtherUserViewController"
    static func instantiateOtherUserViewController() -> OtherUserViewController {
      guard let vc = StoryboardScene.Home.otherUserViewControllerScene.viewController() as? OtherUserViewController
      else {
        fatalError("ViewController 'OtherUserViewController' is not of the expected class OtherUserViewController.")
      }
      return vc
    }

    case profileViewControllerScene = "ProfileViewController"
    static func instantiateProfileViewController() -> ProfileViewController {
      guard let vc = StoryboardScene.Home.profileViewControllerScene.viewController() as? ProfileViewController
      else {
        fatalError("ViewController 'ProfileViewController' is not of the expected class ProfileViewController.")
      }
      return vc
    }

    case qaBlogViewControllerScene = "QABlogViewController"
    static func instantiateQaBlogViewController() -> QABlogViewController {
      guard let vc = StoryboardScene.Home.qaBlogViewControllerScene.viewController() as? QABlogViewController
      else {
        fatalError("ViewController 'QABlogViewController' is not of the expected class QABlogViewController.")
      }
      return vc
    }

    case qaDetailControllerScene = "QADetailController"
    static func instantiateQaDetailController() -> QADetailController {
      guard let vc = StoryboardScene.Home.qaDetailControllerScene.viewController() as? QADetailController
      else {
        fatalError("ViewController 'QADetailController' is not of the expected class QADetailController.")
      }
      return vc
    }

    case reportProblemViewControllerScene = "ReportProblemViewController"
    static func instantiateReportProblemViewController() -> ReportProblemViewController {
      guard let vc = StoryboardScene.Home.reportProblemViewControllerScene.viewController() as? ReportProblemViewController
      else {
        fatalError("ViewController 'ReportProblemViewController' is not of the expected class ReportProblemViewController.")
      }
      return vc
    }

    case settingsViewControllerScene = "SettingsViewController"
    static func instantiateSettingsViewController() -> SettingsViewController {
      guard let vc = StoryboardScene.Home.settingsViewControllerScene.viewController() as? SettingsViewController
      else {
        fatalError("ViewController 'SettingsViewController' is not of the expected class SettingsViewController.")
      }
      return vc
    }

    case surveysPlacesControllerScene = "SurveysPlacesController"
    static func instantiateSurveysPlacesController() -> SurveysPlacesController {
      guard let vc = StoryboardScene.Home.surveysPlacesControllerScene.viewController() as? SurveysPlacesController
      else {
        fatalError("ViewController 'SurveysPlacesController' is not of the expected class SurveysPlacesController.")
      }
      return vc
    }

    case tabBarControllerScene = "TabBarController"
    static func instantiateTabBarController() -> TabBarController {
      guard let vc = StoryboardScene.Home.tabBarControllerScene.viewController() as? TabBarController
      else {
        fatalError("ViewController 'TabBarController' is not of the expected class TabBarController.")
      }
      return vc
    }
  }
  enum LaunchScreen: StoryboardSceneType {
    static let storyboardName = "LaunchScreen"
  }
  enum Login: String, StoryboardSceneType {
    static let storyboardName = "Login"

    static func initialViewController() -> UINavigationController {
      guard let vc = storyboard().instantiateInitialViewController() as? UINavigationController else {
        fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
      }
      return vc
    }

    case loginSignupViewControllerScene = "LoginSignupViewController"
    static func instantiateLoginSignupViewController() -> LoginSignupViewController {
      guard let vc = StoryboardScene.Login.loginSignupViewControllerScene.viewController() as? LoginSignupViewController
      else {
        fatalError("ViewController 'LoginSignupViewController' is not of the expected class LoginSignupViewController.")
      }
      return vc
    }

    case profileSetupViewControllerScene = "ProfileSetupViewController"
    static func instantiateProfileSetupViewController() -> ProfileSetupViewController {
      guard let vc = StoryboardScene.Login.profileSetupViewControllerScene.viewController() as? ProfileSetupViewController
      else {
        fatalError("ViewController 'ProfileSetupViewController' is not of the expected class ProfileSetupViewController.")
      }
      return vc
    }

    case splashViewControllerScene = "SplashViewController"
    static func instantiateSplashViewController() -> SplashViewController {
      guard let vc = StoryboardScene.Login.splashViewControllerScene.viewController() as? SplashViewController
      else {
        fatalError("ViewController 'SplashViewController' is not of the expected class SplashViewController.")
      }
      return vc
    }
  }
  enum Menu: String, StoryboardSceneType {
    static let storyboardName = "Menu"

    static func initialViewController() -> NavigationController {
      guard let vc = storyboard().instantiateInitialViewController() as? NavigationController else {
        fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
      }
      return vc
    }

    case markThisPlaceViewControllerScene = "MarkThisPlaceViewController"
    static func instantiateMarkThisPlaceViewController() -> MarkThisPlaceViewController {
      guard let vc = StoryboardScene.Menu.markThisPlaceViewControllerScene.viewController() as? MarkThisPlaceViewController
      else {
        fatalError("ViewController 'MarkThisPlaceViewController' is not of the expected class MarkThisPlaceViewController.")
      }
      return vc
    }

    case newBlogPostViewControllerScene = "NewBlogPostViewController"
    static func instantiateNewBlogPostViewController() -> NewBlogPostViewController {
      guard let vc = StoryboardScene.Menu.newBlogPostViewControllerScene.viewController() as? NewBlogPostViewController
      else {
        fatalError("ViewController 'NewBlogPostViewController' is not of the expected class NewBlogPostViewController.")
      }
      return vc
    }

    case newEventViewControllerScene = "NewEventViewController"
    static func instantiateNewEventViewController() -> NewEventViewController {
      guard let vc = StoryboardScene.Menu.newEventViewControllerScene.viewController() as? NewEventViewController
      else {
        fatalError("ViewController 'NewEventViewController' is not of the expected class NewEventViewController.")
      }
      return vc
    }

    case newReportFstViewControllerScene = "NewReportFstViewController"
    static func instantiateNewReportFstViewController() -> NewReportFstViewController {
      guard let vc = StoryboardScene.Menu.newReportFstViewControllerScene.viewController() as? NewReportFstViewController
      else {
        fatalError("ViewController 'NewReportFstViewController' is not of the expected class NewReportFstViewController.")
      }
      return vc
    }

    case newReportScndViewControllerScene = "NewReportScndViewController"
    static func instantiateNewReportScndViewController() -> NewReportScndViewController {
      guard let vc = StoryboardScene.Menu.newReportScndViewControllerScene.viewController() as? NewReportScndViewController
      else {
        fatalError("ViewController 'NewReportScndViewController' is not of the expected class NewReportScndViewController.")
      }
      return vc
    }

    case newReportThirdViewControllerScene = "NewReportThirdViewController"
    static func instantiateNewReportThirdViewController() -> NewReportThirdViewController {
      guard let vc = StoryboardScene.Menu.newReportThirdViewControllerScene.viewController() as? NewReportThirdViewController
      else {
        fatalError("ViewController 'NewReportThirdViewController' is not of the expected class NewReportThirdViewController.")
      }
      return vc
    }

    case newSafetyTipControllerScene = "NewSafetyTipController"
    static func instantiateNewSafetyTipController() -> NewSafetyTipController {
      guard let vc = StoryboardScene.Menu.newSafetyTipControllerScene.viewController() as? NewSafetyTipController
      else {
        fatalError("ViewController 'NewSafetyTipController' is not of the expected class NewSafetyTipController.")
      }
      return vc
    }

    case newSurveyViewControllerScene = "NewSurveyViewController"
    static func instantiateNewSurveyViewController() -> NewSurveyViewController {
      guard let vc = StoryboardScene.Menu.newSurveyViewControllerScene.viewController() as? NewSurveyViewController
      else {
        fatalError("ViewController 'NewSurveyViewController' is not of the expected class NewSurveyViewController.")
      }
      return vc
    }
  }
}

struct StoryboardSegue {
  enum Home: String, StoryboardSegueType {
    case segueMenu = "segueMenu"
  }
}
