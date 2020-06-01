//
//  Home.swift
//  APISampleClass
//
//  Created by Aseem 13 on 23/02/17.
//  Copyright © 2017 Taran. All rights reserved.
//

import UIKit
import Alamofire

enum User{
    case other
    case me
}

enum List : String{
    case Safelist
    case Carelist
}

enum HomeEndpoint{
    
    case home(distance : String?, startDt : String?, endDt : String?, reportCat : Any?, placeCat : Any?, photos : String?, videos : String?, sourceLink : String?, verified : String?, safetyTip : String?, page : String?, report : String?, place : String?)
    
    case reportAll(distance : String?, startDt : String?, endDt : String?, reportCat : Any?,photos : String?, videos : String?, sourceLink : String?, verified : String?,page : String?)
    
    case userReportsSurveys(page : String?, type : ActivityType)
    case userEvents(page : String?)
    case userPlaces()
    
    case blogAll(type : User, page : String?, index : String?)
    case eventAll(page : String?, index : String?)
    case profile()
    case appContacts()
    
    case activity(distance : String?,surveys : String?, reports : String?, safetytips : String?, places : String?, page : String?)
    
    case joinEvent(status : String?, eventId : String?)
    case like(status : String?, blogId : String?)
    
    case blogDetails(blogId : String?, page : String?)
    case blogCommentAdd(blogId : String?, comment : String?)
    case blogComments(blogId : String?, page : String?)
    case blogUpdate(blogId: String?, title : String?, desc : String?)
    
    case sendFeedback(message : String?, type : Feedback)
    
    case eventdetails(eventId : String?, page : String?)
    case eventCommentAdd(eventId : String?, comment : String?)
    
    case followUser(active : String?, id : String?)
    
    
    case addRemoveUser(id : String?, type : List, active : String?)
    
    case otherProfile(id : String?, page : String?)
    case profileUpdate(first : String?, last : String?, pic : String?, address : String?, blood : String?, occupation : String?, code : String?, phone : String?, addLat : String?, addLng : String?)
    
    case notifications(page : String?)
    case blogVote(id : String?, voted : String?)
    case changePassword(old : String?, new : String?)
    case sendSCPush()
    case addReferral(code : String?)
    case logout()
}
 
extension HomeEndpoint : Router{
    
    var route : String  {
        switch self {
            
        case .home(_) : return APIConstants.home
        case .reportAll(_): return APIConstants.reportAll
        case .blogAll(_): return APIConstants.blogAll
        case .eventAll(_): return APIConstants.eventAll
        case .userPlaces(): return APIConstants.userPlaces
        case .logout(): return APIConstants.logout
        case .activity(_): return APIConstants.activity
        case .profile(): return APIConstants.profile
        case .joinEvent(_): return APIConstants.joinEvent
        case .like(_): return APIConstants.like
        case .blogDetails(_): return APIConstants.blogDetails
        case .blogCommentAdd(_): return APIConstants.blogCommentAdd
        case .blogComments(_): return APIConstants.blogComments
        case .eventdetails(_): return APIConstants.eventDetails
        case .eventCommentAdd(_): return APIConstants.eventCommentAdd
        case .followUser(_): return APIConstants.followUser
        case .userEvents(_): return APIConstants.userEvents
        case .userReportsSurveys(_, let type):
            switch type {
            case .Report:  return APIConstants.reportAll
            default: return APIConstants.reportSurveys
            }
            
        case .appContacts(): return APIConstants.appContacts
        case .addRemoveUser(_): return APIConstants.addRemoveUser
        case .otherProfile(_): return APIConstants.otherProfile
        case .blogUpdate(_): return APIConstants.blogUpdate
        case .profileUpdate(_): return APIConstants.profileUpdate
        case .notifications(_): return APIConstants.notifications
        case .blogVote(_): return APIConstants.blogVote
        case .sendFeedback(_): return APIConstants.sendFeedback
        case .changePassword(_): return APIConstants.changePassword
        case .sendSCPush(): return APIConstants.sendScPush
        case .addReferral(_): return APIConstants.addReferral
        }
    }
    
    var parameters: OptionalDictionary{
         return format()
        
    }
    
    func format() -> OptionalDictionary {
        
        var reportCategories = [String]()
        var language = "en"
        
        let lat = LocationManager.shared.latitude, lng = LocationManager.shared.longitude, address = LocationManager.shared.address, timezone = HelperNames.timezone, accesstoken = (Defaults.login.get() as? UserModal)?.accessToken, userId = (Defaults.login.get() as? UserModal)?.id, appdelegate = UIApplication.shared.delegate as? AppDelegate, country = LocationManager.shared.country, link = "https://www.google.com/maps/search/?api=1&query=\(/(lat.toString)),\(/(lng.toString))"
        
        if let modal = Defaults.categories.get() as? CategoriesModal ,let reportCat = modal.arrReportCategories{
            for item in reportCat {
                reportCategories.append(/item.id)
            }
        }
        
        if let lang =  UserDefaults.standard.value(forKey: HelperNames.language) as? String, let value = Languages(rawValue : lang)?.get() {
            
            language = value
        }
        
        
        switch self {
            
        case .home(_, let startDt, let endDt,let reportCat,let placeCat,let photos, let videos, let sourceLink,let verified, let safetyTip, let page, let report, let place):
            return Parameters.home.map(values: [accesstoken, language, timezone, lat, lng, "7000", startDt, endDt, reportCat, placeCat, photos, videos, sourceLink, verified, safetyTip, page, "500", report, place])
        
            
        case .reportAll(let distance, let startDt, let endDt,let reportCat, let photos, let videos, let sourceLink,let verified,let page):
            return Parameters.reportAll.map(values: [accesstoken, language, timezone, page, "30", lat, lng, distance, startDt, endDt, reportCat, photos, videos, sourceLink, verified, nil ])
           
        case .userReportsSurveys(let page, let type):
            switch type {
            case .Report:
                return Parameters.reportAll.map(values: [accesstoken, language, timezone, page, "30", lat, lng, "7000", Date().startAllTime, Date().endToday, Utility.shared.converyToJSONString(array: reportCategories), "0", "0", "0", "2",userId])
            default:
                return Parameters.reportSurveys.map(values: [accesstoken, type.rawValue])
            }
            
            
            
        case .blogAll(let type,let page,let index):
            switch type {
            case .other:
                return Parameters.blogAll.map(values: [accesstoken, language, timezone, page, "30",nil, "1", lat, lng, index,country])
            default:
                return Parameters.blogAll.map(values: [accesstoken, language, timezone, page, "30",userId, "1", lat, lng, index,country])
            }
            
            
        case .sendFeedback(let message, let type):
            return Parameters.sendFeedback.map(values: [accesstoken, message, type.rawValue])
            
        case .logout():
            return Parameters.logout.map(values: [accesstoken])
            
        case .eventAll(let page,let index):
            return Parameters.eventAll.map(values: [accesstoken, language, timezone, lat, lng, "7000", page, "30",index])
 
        case .activity(let distance, let surveys,let reports,let safetytips,let places, let page):
            return Parameters.activity.map(values: [accesstoken, language, timezone, lat, lng, page, "30", distance, surveys, reports, safetytips, places])
            
        case .profile():
            return Parameters.profile.map(values : [userId])
            
        case .joinEvent(let status,let eventId):
            return Parameters.joinEvent.map(values: [accesstoken, status, eventId])
            
        case .like(let status,let blogId):
            return Parameters.like.map(values: [accesstoken, status, blogId])
            
        case .blogDetails(let blogId, let page):
            return Parameters.blogDetails.map(values: [accesstoken, blogId, page, "30", lat,lng, timezone, language])
            
        case .blogCommentAdd(let blogId, let comment):
            return Parameters.blogCommentAdd.map(values: [accesstoken, blogId, comment])
            
        case .blogComments(let blogId,let page):
            return Parameters.blogComments.map(values: [accesstoken, blogId, page, "30"])
            
        case .eventdetails(let eventId,let page):
            return Parameters.eventDetails.map(values: [accesstoken, eventId, page, "30", lat, lng, timezone, language])
            
        case .eventCommentAdd(let eventId, let comment):
            return Parameters.eventCommentAdd.map(values: [accesstoken, eventId, comment])
            
        case .followUser(let active, let id):
            return Parameters.followUser.map(values: [accesstoken, active, id])
            
        case .userEvents(let page):
            return Parameters.userEvents.map(values: [accesstoken, page, "30"])
            
        case .userPlaces():
            return Parameters.userPlaces.map(values : [accesstoken])
            
        case .appContacts():
            return Parameters.appContacts.map(values: [accesstoken, Utility.shared.fetchContacts()])
            
        case .addRemoveUser(let id,let type,let active):
            return Parameters.addRemoveUser.map(values: [accesstoken, id,type.rawValue, active])
            
        case .otherProfile(let id, let page):
            return Parameters.otherProfile.map(values: [accesstoken, id, page, "30", lat, lng, language, timezone])
            
        case .blogUpdate(let blogId, let title, let desc):
            return Parameters.blogUpdate.map(values: [accesstoken,blogId, lat, lng, title, desc, "QA",country])
            
        case .profileUpdate(let first ,let last, let pic, let address, let blood, let occupation, let code, let phone,let addLat,let addLng):
            return Parameters.profileUpdate.map(values: [accesstoken, first, last, timezone, lat, lng,  appdelegate?.deviceId, pic, language, address, blood, occupation, code, phone, addLat, addLng])
            
        case .notifications(let page):
            return Parameters.notifications.map(values: [accesstoken,page, "30"])
            
        case .blogVote(let id, let voted):
            return Parameters.blogVote.map(values : [accesstoken, id, voted])
            
            
        case .changePassword(let old,let new):
            return Parameters.changePassword.map(values: [accesstoken, old, new])
            
        case .sendSCPush():
            return Parameters.sendScPush.map(values: [accesstoken, address, link])
            
        case .addReferral(let code):
            return Parameters.addReferral.map(values: [accesstoken, code])
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
