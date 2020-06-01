//
//  Login.swift
//  APISampleClass
//
//  Created by cbl20 on 2/23/17.
//  Copyright © 2017 Taran. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import EZSwiftExtensions

protocol Router {
    var route : String { get }
    var baseURL : String { get }
    var parameters : OptionalDictionary { get }
    var method : Alamofire.HTTPMethod { get }
    func handle(parameters : JSON) -> AnyObject?
}

extension Sequence where Iterator.Element == Keys {
    
    func map(values: [Any?]) -> OptionalDictionary {
        
        var params = [String : Any]()
        
        for (index,element) in zip(self,values) {
            params[index.rawValue] = element
        }
        return params
        
    }
}


enum LoginEndpoint {
    
    case signin(email : String? , password : String? , firstName : String? , lastName : String?, profilePic : String?, phoneCode : String?, phoneNumber : String?, fbId : String?, googleId : String?, linkedInId : String?, city : String?, bloodGroup : String?, occupation : String?, isNeedConfirm : String?,addLat : String?, addLng : String?)
    
    case signup(email : String? , firstName : String? , lastName : String?, fbId : String?, googleId : String?, linkedInId : String?)
    
    case emailCheck(email : String?)
    
    case login(email : String?, password : String?)
    
    
    case forgot(email : String?)
}


extension LoginEndpoint : Router{
    
    var route : String  {
        
        switch self {
    
        case .signin(_), .signup(_): return APIConstants.signin
        case .login(_): return APIConstants.login
        case .emailCheck(_): return APIConstants.emailCheck
        case .forgot(_): return APIConstants.forgot
        }
    }
    
    var parameters: OptionalDictionary{
        return format()
    }
    
    
    func format() -> OptionalDictionary {
        
        var language = "en"
        
        if let lang =  UserDefaults.standard.value(forKey: HelperNames.language) as? String, let value = Languages(rawValue : lang)?.get() {
            language = value
        }
        
        let lat = LocationManager.shared.latitude, lng = LocationManager.shared.longitude , appdelegate = UIApplication.shared.delegate as? AppDelegate, timezone = HelperNames.timezone
        
        
        switch self {
            
        case .signin(let email,let password,let firstName,let lastName,let profilePic,let phoneCode,let phoneNumber,let fbId,let googleId, let linkedInId,let city,let bloodGroup,let occupation, let confirm,let addLat, let addLng):
            
            return Parameters.signIn.map(values: [email, password, firstName, lastName, timezone, lat.toString, lng.toString, appdelegate?.deviceId, profilePic, phoneCode, phoneNumber , language, fbId, googleId, linkedInId, city, bloodGroup, occupation,appdelegate?.deviceToken, confirm, addLat, addLng])
        
        case .signup(let email,let firstName, let lastName, let fbId, let googleId, let linkedInId):
            return Parameters.signIn.map(values: [email, nil, firstName, lastName, timezone, lat.toString, lng.toString, appdelegate?.deviceId, nil, nil, nil , language, fbId, googleId, linkedInId, nil, nil, nil,appdelegate?.deviceToken, "0", nil,nil])
           
        case .login(let email,let password):
            return  Parameters.login.map(values: [email, password, appdelegate?.deviceId, lat.toString, lng.toString, timezone,appdelegate?.deviceToken])
            
            
        case .emailCheck(let email):
            return Parameters.emailCheck.map(values: [email])
            
        case .forgot(let email):
            return Parameters.forgot.map(values : [email])
            
        }
    }
    
    var method : Alamofire.HTTPMethod {
        switch self {
        default:
            return .post
        }
    }
    
    var baseURL: String{
        return APIConstants.basePath
    }
   
    
}
