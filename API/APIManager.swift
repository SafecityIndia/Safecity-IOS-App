//
//  APIManager.swift
//  BusinessDirectory
//
//  Created by Aseem 13 on 04/01/17.
//  Copyright © 2017 Taran. All rights reserved.
//


import Foundation
import SwiftyJSON


class APIManager : NSObject{
    
    typealias Completion = (Response) -> ()
    static let shared = APIManager()
    private lazy var httpClient : HTTPClient = HTTPClient()
    
    func request(with api : Router , completion : @escaping Completion )  {
        
        if isLoaderNeeded(api: api) {
            Utility.shared.loader()
        }
        
        httpClient.postRequest(withApi: api, success: {[weak self] (data) in
            Utility.shared.removeLoader()
            
            guard let response = data else {
                completion(Response.failure(.none))
                return
            }
            
            let json = JSON(response)
            print(json)
            
            if json[APIConstants.success].stringValue == Validate.invalidAccessToken.rawValue{
                self?.tokenExpired()
                return
            }
            if json[APIConstants.success].stringValue == Validate.adminBlocked.rawValue{
                self?.adminBlocked()
                return
            }
    
            let responseType = Validate(rawValue: json[APIConstants.status].stringValue) ?? .failure
            switch responseType {
            case .success:
                let object : AnyObject?
                object = api.handle(parameters: json)
                completion(Response.success(object))
                
            case .failure(_):
                completion(Response.failure(json[APIConstants.message].stringValue))
            default : break
            }
            
        }, failure: { (message) in
            
            Utility.shared.removeLoader()
            AlertsClass.shared.showAlert(with : /message)
            
        })
        
    }
    
    
    
    func tokenExpired(){
        
        AlertsClass.shared.showAlertController(withTitle: L10n.SessionExpired.string, message: L10n.TokenExpire.string, buttonTitles: [L10n.Ok.string]) { _ in
            let delegate = UIApplication.shared.delegate as? AppDelegate
            delegate?.logout()
        }
    }
    
    func adminBlocked(){
        
        AlertsClass.shared.showAlertController(withTitle: L10n.AdminBlocked.string, message: L10n.Blocked.string, buttonTitles: [L10n.Ok.string]) { _ in
            let delegate = UIApplication.shared.delegate as? AppDelegate
            delegate?.logout()
        }
    }
    
    func isLoaderNeeded(api : Router) -> Bool{
        
        switch api.route {
        case APIConstants.categories, APIConstants.home, APIConstants.blogAll, APIConstants.eventAll, APIConstants.activity, APIConstants.profile, APIConstants.joinEvent , APIConstants.like, APIConstants.followUser, APIConstants.appContacts, APIConstants.notifications, APIConstants.blogVote: return false
        default: return true
        }
    }
    
    
    
    
}
