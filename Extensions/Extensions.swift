//
//  ViewExtension.swift
//  BusinessDirectory
//
//  Created by Aseem 13 on 28/12/16.
//  Copyright © 2016 Taran. All rights reserved.
//

import UIKit
import Foundation
import SwiftyJSON

protocol StringType { var get: String { get } }

extension String: StringType { var get: String { return self } }

extension Optional where Wrapped: StringType {
    func unwrap() -> String {
        return self?.get ?? ""
    }
}

extension UIColor {
    static var ColorApp: UIColor  { get { return UIColor(red: 115.0/255.0, green: 61.0/255.0, blue: 182.0/255.0, alpha: 1.0) } }
    
    static var ColorGreen: UIColor  { get { return UIColor(red: 86.0/255.0, green: 210.0/255.0, blue: 152.0/255.0, alpha: 1.0) } }
}

extension NSObject {
    var appDelegate:AppDelegate? {
        return UIApplication.shared.delegate as? AppDelegate
    }
}

extension Date {
    var startOfWeek: Date {
        let date = Calendar.current.date(from: Calendar.current.dateComponents([.yearForWeekOfYear, .weekOfYear], from: self)) ?? Date()
        let dslTimeOffset = NSTimeZone.local.daylightSavingTimeOffset(for: date)
        return date.addingTimeInterval(dslTimeOffset)
    }
    
    var endOfWeek: Date {
        return Calendar.current.date(byAdding: .second, value: 604799, to: self.startOfWeek) ?? Date()
    }
    
    var startOfMonth : Date {
        return Calendar.current.date(from: Calendar.current.dateComponents([.year, .month], from: Calendar.current.startOfDay(for: self))) ?? Date()
    }
    
    var endOfMonth : Date {
        return Calendar.current.date(byAdding: DateComponents(month: 1, day: -1), to: self.startOfMonth) ?? Date()
    }
    
    var endToday : String{
        return Utility.shared.dateToString(date: Calendar.current.date(byAdding:.hour, value: -6, to: Date())) ?? ""
    }
    
    var startToday : String{
        return Utility.shared.dateToString(date: Calendar.current.startOfDay(for: self)) ?? ""
    }
    
    var startAllTime : String{
        return "2015-01-01 00:00:00"
    }
    
    func add(minutes: Int) -> Date {
        return Calendar(identifier: .gregorian).date(byAdding: .minute, value: minutes, to: self)!
    }
}



enum XibError : Error {
    case XibNotFound
    case None
}


extension UIView {
    class func fromNib<T : UIView>() -> T {
        return Bundle.main.loadNibNamed(String(describing: T.self), owner: nil, options: nil)![0] as! T
    }
    
    func loadViewFromNib(withIdentifier identifier : String) throws -> UIView? {
        
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName:identifier, bundle: bundle)
        let xibs = nib.instantiate(withOwner: self, options: nil)
        
        if xibs.count == 0 {
            return nil
        }
        guard let firstXib = xibs[0] as? UIView else{
            throw XibError.XibNotFound
        }
        return firstXib
    }
}


private var __maxLengths = [UITextField: Int]()
extension UITextField {
    @IBInspectable var maxLength: Int {
        get {
            guard let l = __maxLengths[self] else {
                return 150 
            }
            return l
        }
        set {
            __maxLengths[self] = newValue
            addTarget(self, action: #selector(fix), for: .editingChanged)
        }
    }
    func fix(textField: UITextField) {
        let t = textField.text
        textField.text = t?.safelyLimitedTo(length: maxLength)
    }
}

extension String
{
    func safelyLimitedTo(length n: Int)->String {
        let c = self.characters
        if (c.count <= n) { return self }
        return String( Array(c).prefix(upTo: n) )
    }
    
    var stringByRemovingWhitespaces: String {
        
        let components = self.components(separatedBy: .whitespaces)
        return components.joined(separator: "")
    }
    
    var boolValue: Bool {
        return NSString(string: self).boolValue
    }
    
    func truncate(length: Int) -> String {
        if self.characters.count > length {
            return String(self.characters.prefix(length)) + "…"
        } else {
            return self
        }
    }
    
    func removeSpecialChars() -> String {
        struct Constants {
            static let validChars = Set("+1234567890".characters)
        }
        return String(self.characters.filter { Constants.validChars.contains($0) })
    }
    
}


infix operator =>
infix operator =|
infix operator =<

typealias OptionalJSON = [String : JSON]?

func =>(key : ParamKeys, json : OptionalJSON) -> String?{
    return json?[key.rawValue]?.stringValue
}

func =<(key : ParamKeys, json : OptionalJSON) -> [String : JSON]?{
    return json?[key.rawValue]?.dictionaryValue
}

func =|(key : ParamKeys, json : OptionalJSON) -> [JSON]?{
    return json?[key.rawValue]?.arrayValue
}

prefix operator /
prefix func /(value : String?) -> String {
    return value.unwrap()
}


