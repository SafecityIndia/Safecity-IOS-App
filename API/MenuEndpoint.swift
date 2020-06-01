//
//  MenuEndpoint.swift
//  SafeCity
//
//  Created by Aseem 13 on 20/06/17.
//  Copyright © 2017 Taran. All rights reserved.
//

import UIKit
import Alamofire

enum reportType : String{
    case Report
    case Survey
}

enum MenuEndpoint{
    
    case createReport(title : String?, desc : String?, add : String?, addLat : String?, addLng : String?, incidentDt : String?, categories : String?,distance : String?, image : String?, lgbtIssue : String?, disablity : String?, ethnicity : String?, policeIssue : String?, trueIssue : String?, anonymous : String?, type : reportType, files : Any?, surveyId : String?)
    
    case categories()
    
    case createSafetyTip(desc : String?, address : String?, addLat : String?, addLng : String?, anonomous : String?)
    
    case markPlace(name : String?, categoryId : String?, address : String?, addLat : String?, addLng : String?, customPlace : String?, desc : String?)
    
    case createEvent(title : String?, desc : String?, image : String?, startDt : String?, endDt : String?, address : String?, state : String?, city : String?, addLat : String?, addLng : String?)
    
    case createBlog(title : String?, desc : String?, image : String?, type : String?)
}

extension MenuEndpoint : Router{
    
    var route : String  {
        switch self {
            
        case .createReport(_): return APIConstants.createReport
        case .categories(): return APIConstants.categories
        case .createSafetyTip(_): return APIConstants.createSafetyTip
        case .markPlace(_): return APIConstants.markPlace
        case .createEvent(_): return APIConstants.createEvent
        case .createBlog(_): return APIConstants.createBlog
            
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
        
        let lat = LocationManager.shared.latitude, lng = LocationManager.shared.longitude, accesstoken = (Defaults.login.get() as? UserModal)?.accessToken, timezone = HelperNames.timezone, country = LocationManager.shared.country

        
        switch self {
            
        case .createReport(let title,let desc, let add, let addLat, let addLng,let incidentDt,let categories,let distance, let image, let lgbtIssue,let disbaility,let ethnicity,let policeIssue,let trueIssue, let anonymous, let type, let files, let id):
            
            switch type {
            case .Report:
                return Parameters.createReport.map(values: [accesstoken, title, desc, lat.toString, lng.toString, add, addLat,addLng, incidentDt, categories,nil, image, lgbtIssue,disbaility,ethnicity,  policeIssue, trueIssue, anonymous, type.rawValue, files, id,timezone,language])
                
            case .Survey:
                return Parameters.createReport.map(values: [accesstoken, title, desc, lat.toString, lng.toString, add, addLat,addLng, Date().endToday, "[2]" , distance, nil, "0",nil,nil, "0", "0", "0", type.rawValue, nil, nil,timezone,language])
            }
            
            
            
        case .categories():
            return Parameters.categories.map(values: [language])
            
        case .createSafetyTip(let desc, let address,let addLat,let addLng,let anonomous):
            return Parameters.createSafetyTip.map(values: [accesstoken, lat, lng, desc, address, addLat, addLng, anonomous])
            
        case .markPlace(let name, let categoryId,let address, let addLat,let addLng, let place, let desc):
            return Parameters.markPlace.map(values: [accesstoken, name, lat.toString, lng.toString, categoryId, address, addLat, addLng, place, desc])
          
        case .createEvent(let title,let desc,let image, let startDt, let endDt, let address, let state, let city,let addLat,let addLng):
            return Parameters.createEvent.map(values: [accesstoken, lat.toString, lng.toString, title, desc, image, startDt, endDt, address, state, city, addLat, addLng])
           
        case .createBlog(let title, let desc, let image, let type):
            return Parameters.createBlog.map(values: [accesstoken, lat.toString, lng.toString, title, desc, image, type, country])
            
        }
    }
    
    var method : Alamofire.HTTPMethod {
        switch self {
        default: return .post
        }
    }
    
    var baseURL: String{
        return APIConstants.basePath
    }
    
    
}

