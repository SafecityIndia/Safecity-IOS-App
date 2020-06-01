// Generated using SwiftGen, by O.Halligon — https://github.com/AliSoftware/SwiftGen

#if os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIFont
  typealias Font = UIFont
#elseif os(OSX)
  import AppKit.NSFont
  typealias Font = NSFont
#endif

// swiftlint:disable file_length

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
  enum CircularStd: String, FontConvertible {
    case BookItalic = "CircularStd-BookItalic"
    case Book = "CircularStd-Book"
    case MediumItalic = "CircularStd-MediumItalic"
    case Black = "CircularStd-Black"
    case BlackItalic = "CircularStd-BlackItalic"
    case Medium = "CircularStd-Medium"
    case BoldItalic = "CircularStd-BoldItalic"
    case Bold = "CircularStd-Bold"
  }
  enum Gotham: String, FontConvertible {
    case Book = "Gotham-Book"
  }
}
