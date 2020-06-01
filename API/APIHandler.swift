//
//  APIHandler.swift
//  BusinessDirectory
//
//  Created by Aseem 13 on 04/01/17.
//  Copyright © 2017 Taran. All rights reserved.
//

import Foundation
import SwiftyJSON

enum ResponseKeys : String {
    case user
    case blog
    case event
    case events
    case places
    case data
    case comments
    case notifications
}

extension LoginEndpoint {
    
    func handle(parameters : JSON) -> AnyObject? {
        
        switch self {
        case .signin(_),.signup(_), .login(_):
            do {
                return try UserModal(attributes: parameters[ResponseKeys.user.rawValue].dictionaryValue)
            } catch _ { return nil }
            
        case .emailCheck(_), .forgot(_):
            return parameters.dictionaryValue as AnyObject?
        }
    }
}

extension HomeEndpoint {
    
    func handle(parameters : JSON) -> AnyObject? {
        do {
            switch self {
                
            case .home(_):
                return try HomeModal(attributes: parameters.dictionaryValue)
                
            case .reportAll(_):
                return try HomeListModal(attributes: parameters.dictionaryValue)
                
            case .logout(), .joinEvent(_), .like(_), .blogCommentAdd(_), .eventCommentAdd(_), .followUser(_), .addRemoveUser(_), .blogVote(_), .sendFeedback(_), .changePassword(_), .sendSCPush(),.addReferral(_) :
                return parameters.dictionaryValue as AnyObject?
                
            case .blogAll(_):
                return try BlogAllModal(attributes: parameters.dictionaryValue)
                
            case .eventAll(_):
                return try EventAllModal(attributes: parameters.dictionaryValue)
                
                
            case .activity(_):
                return try ActivityModal(attributes: parameters.dictionaryValue)
                
                
            case .profile():
                return try UserModal(attributes: parameters[ResponseKeys.user.rawValue].dictionaryValue)
                
                
            case .blogDetails(_):
                return try BlogDetailsModal(attributes: parameters[ResponseKeys.blog.rawValue].dictionaryValue)
                
                
            case .eventdetails(_):
                return try EventDetailsModal(attributes: parameters[ResponseKeys.event.rawValue].dictionaryValue)
                
                
            case .userEvents(_):
                return EventAllModal.parseArray(withAttributes: parameters[ResponseKeys.events.rawValue].arrayValue)
                
                
            case .userReportsSurveys(_ , let type):
                switch type {
                case .Report:
                    return try HomeListModal(attributes: parameters.dictionaryValue)
                    
                default:
                    return ActivityModal.parseArray(withAttributes: parameters[ResponseKeys.data.rawValue].arrayValue)
                }
            case .userPlaces():
                return ActivityModal.parseArray(withAttributes: parameters[ResponseKeys.places.rawValue].arrayValue)
              
            case .appContacts():
                return try ContactModal(attributes: parameters.dictionaryValue)
                
            case .otherProfile(_):
                return try OtherUserModal(attributes: parameters.dictionaryValue)
                
            case .blogComments(_):
                return BlogAllModal.parseArray(withAttributes: parameters[ResponseKeys.comments.rawValue].arrayValue)
                
            case .blogUpdate(_):
                return try BlogAllModal(attributes: parameters[ResponseKeys.blog.rawValue].dictionaryValue)
                
            case .profileUpdate(_):
                return try UserModal(attributes: parameters[ResponseKeys.user.rawValue].dictionaryValue)
                
                
            case .notifications(_):
                return ActivityModal.parseArray(withAttributes: parameters[ResponseKeys.notifications.rawValue].arrayValue)
                
            }
            
        } catch _ { return nil }
    }
}


extension MenuEndpoint {
    
    func handle(parameters : JSON) -> AnyObject? {
        do {
            switch self {
            case .createSafetyTip(_), .markPlace(_), .createEvent(_), .createReport(_):
                return parameters.dictionaryValue as AnyObject?
                
            case .createBlog(_):
                return try BlogAllModal(attributes: parameters[ResponseKeys.blog.rawValue].dictionaryValue)
                
            case .categories():
                
                return try CategoriesModal(attributes: parameters.dictionaryValue)
                
                
            }
        } catch _ { return nil }
    }
}
