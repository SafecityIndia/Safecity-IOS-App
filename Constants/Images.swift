// Generated using SwiftGen, by O.Halligon — https://github.com/AliSoftware/SwiftGen

#if os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIImage
  typealias Image = UIImage
#elseif os(OSX)
  import AppKit.NSImage
  typealias Image = NSImage
#endif

// swiftlint:disable file_length
// swiftlint:disable type_body_length
enum Asset: String {
  case _9 = "9"
  case Arrow_downWhite = "arrow_downWhite"
  case BlogImage = "BlogImage"
  case Cross_c = "cross_c"
  case Group_5 = "Group 5"
  case Ic_Backarrow = "ic-backarrow"
  case Ic_activity = "ic_activity"
  case Ic_activity_inactive = "ic_activity_inactive"
  case Ic_backarrow = "ic_backarrow"
  case Ic_blog = "ic_blog"
  case Ic_blog_inactive = "ic_blog_inactive"
  case Ic_bug = "ic_bug"
  case Ic_camera_c = "ic_camera_c"
  case Ic_check_green = "ic_check_green"
  case Ic_check_violet = "ic_check_violet"
  case Ic_checkbox_active = "ic_checkbox_active"
  case Ic_checkbox_inactive = "ic_checkbox_inactive"
  case Ic_comment = "ic_comment"
  case Ic_contact = "ic_contact"
  case Ic_custom = "ic_custom"
  case Ic_dd_down = "ic_dd_down"
  case Ic_delete_big = "ic_delete_big"
  case Ic_diamond = "ic_diamond"
  case Ic_dislike = "ic_dislike"
  case Ic_dislike_normal = "ic_dislike_normal"
  case Ic_dislike_pressed = "ic_dislike_pressed"
  case Ic_document = "ic_document"
  case Ic_donate = "ic_donate"
  case Ic_dropdown = "ic_dropdown"
  case Ic_events = "ic_events"
  case Ic_events_inactive = "ic_events_inactive"
  case Ic_eye_active = "ic_eye_active"
  case Ic_eye_inactive = "ic_eye_inactive"
  case Ic_facebook = "ic_facebook"
  case Ic_feedback = "ic_feedback"
  case Ic_filter = "ic_filter"
  case Ic_google = "ic_google"
  case Ic_gps = "ic_gps"
  case Ic_heart_pressed = "ic_heart_pressed"
  case Ic_heat_small = "ic_heat_small"
  case Ic_heatmap = "ic_heatmap"
  case Ic_heatmap_inactive = "ic_heatmap_inactive"
  case Ic_hospital = "ic_hospital"
  case Ic_image = "ic_image"
  case Ic_lbl_comment = "ic_lbl_comment"
  case Ic_lbl_like = "ic_lbl_like"
  case Ic_lbl_request = "ic_lbl_request"
  case Ic_like = "ic_like"
  case Ic_like_normal = "ic_like_normal"
  case Ic_like_pressed = "ic_like_pressed"
  case Ic_linkedin = "ic_linkedin"
  case Ic_list = "ic_list"
  case Ic_location = "ic_location"
  case Ic_logout = "ic_logout"
  case Ic_mark_place = "ic_mark_place"
  case Ic_number = "ic_number"
  case Ic_pin_map = "ic_pin_map"
  case Ic_place_pin = "ic_place_pin"
  case Ic_plus_1 = "ic_plus-1"
  case Ic_plus = "ic_plus"
  case Ic_plus_c = "ic_plus_c"
  case Ic_plus_white = "ic_plus_white"
  case Ic_police = "ic_police"
  case Ic_poll = "ic_poll"
  case Ic_poor_light = "ic_poor_light"
  case Ic_profile_circle = "ic_profile_circle"
  case Ic_safety_1 = "ic_safety-1"
  case Ic_safety = "ic_safety"
  case Ic_search = "ic_search"
  case Ic_search_thin = "ic_search_thin"
  case Ic_settings = "ic_settings"
  case Ic_share = "ic_share"
  case Ic_share_c = "ic_share_c"
  case Ic_survey = "ic_survey"
  case Ic_text_list = "ic_text_list"
  case Ic_title = "ic_title"
  case Ic_washroom = "ic_washroom"
  case Img_alert = "img_alert"
  case Img_overlay_black = "img_overlay_black"
  case Img_safecity_logo = "img_safecity_logo"
  case Logo_splash = "logo_splash"
  case Photo_verybig = "photo_verybig"
  case SafeCity = "safeCity"
  case Spark = "spark"
  case Success = "success"
  case Transparent = "transparent"

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
