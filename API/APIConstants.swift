//
//  APIConstants.swift
//  BusinessDirectory
//
//  Created by Aseem 13 on 04/01/17.
//  Copyright © 2017 Taran. All rights reserved.
//


import Foundation

internal struct APIConstants {
    
    static let basePath = "http://ELB-Oregon-879997959.us-west-2.elb.amazonaws.com/Api/V1/"
//    static let basePath = "http://192.168.100.69:9091/Api/V1/"
    static let status = "statuscode"
    static let success = "success"
    static let message = "msg"
    static let login = "login"
    static let signin = "signin"
    static let emailCheck = "email_check"
    static let createReport = "create_report"
    static let categories = "other_data"
    static let createSafetyTip = "safetytip_create"
    static let markPlace = "place_create"
    static let createEvent = "event_create"
    static let home = "home_map"
    static let reportAll = "report_all"
    static let reportSurveys = "user_reports_surveys"
    static let blogAll = "blog_all"
    static let eventAll = "event_all"
    static let activity = "activity_feed"
    static let profile = "user_profile"
    static let createBlog = "blog_create"
    static let appContacts = "app_users_lists"
    static let joinEvent = "event_join"
    static let blogComments = "blog_comments"
    static let like = "blog_like"
    static let notifications = "notification_all"
    static let userPlaces = "user_place_all"
    static let userEvents = "user_event_all"
    static let blogDetails = "blog_details"
    static let blogCommentAdd = "blog_comment_add"
    static let blogUpdate = "blog_update"
    static let eventCommentAdd = "event_comment_add"
    static let eventDetails = "event_details"
    static let followUser = "follow_user"
    static let addRemoveUser = "add_remove_user"
    static let otherProfile = "ouser_profile"
    static let profileUpdate = "profile_update"
    static let blogVote = "blog_comment_vote"
    static let sendFeedback = "send_feedback"
    static let forgot = "forgot_password"
    static let changePassword = "change_password"
    static let sendScPush = "send_sc_notifications"
    static let addReferral = "add_referal"
    static let logout = "logout"
}

enum Keys : String{
    
    //Signup
    case email
    case password
    case firstName = "first_name"
    case lastName = "last_name"
    case timezone
    case latitude
    case longitude
    case deviceId = "device_id"
    case profilePic = "profile_pic"
    case phoneCode = "phone_code"
    case phoneNumber = "phone_number"
    case language
    case fbId = "facebook_id"
    case linkedinId = "linkedin_id"
    case googleId = "gmail_id"
    case address
    case bloodGroup = "blood_group"
    case occupation
    
    //Report
    case accessToken = "access_token"
    case title
    case description = "descriptions"
    case addLat = "address_latitude"
    case addLng = "address_longitude"
    case incidentDate = "incident_dt"
    case categories
    case image
    case lgbtIssue = "lgbt_issue"
    case policeIssue = "police_issue"
    case disability
    case ethnicity
    case trueIssue = "true_issue"
    case anonumous
    case type
    case files
    case surveyId = "survey_id"
    
    //Place
    case name
    case categoryId = "category_id"
    case startingDt = "starting_dt_1"
    case endingDt = "ending_dt_1"
    case location
    case state
    case city
    case customPlace = "custom_filed"
    
    //map
    case distance
    case startDt = "start_dt"
    case endDt = "end_dt"
    case reportCategories = "report_categories"
    case placeCategories = "place_categories"
    case photos
    case videos
    case sourceLink = "source_link"
    case adminVerified = "admin_verified"
    case safetyTip = "safety_tip"
    case page
    case offset
    case surveys
    case reports
    case safetytips
    case places
    case paginate = "paginate_by"
    case report
    case place
    case country
    case message
    case link
    
    case status
    case eventId = "event_id"
    case blogId = "blog_id"
    case userId = "user_id"
    case comment
    case active
    case followedId = "followed_id"
    case otherId = "ouser_id"
    case contacts = "contact_lists"
    case commentId = "blog_comment_id"
    case voted
    case old = "oldPassword"
    case new = "newPassword"
    case fcmId = "fcm_id"
    case isNeedConfirm
    case referalNo = "referal_number"
    
}

enum Validate : String {
    
    case none
    case success = "200"
    case failure = "400"
    case invalidAccessToken = "-1"
    case adminBlocked = "-2"
    case verifyEmail = "-3"
    
    func map(response message : String?) -> String? {
        
        switch self {
        case .success,.failure, .invalidAccessToken, .adminBlocked, .verifyEmail:
            return message
        
        default:
            return nil
        }
        
    }
}

enum Response {
    case success(AnyObject?)
    case failure(String?)
}

typealias OptionalDictionary = [String : Any]?

struct Parameters {
    
    static let signIn : [Keys] = [.email, .password, .firstName, .lastName, .timezone, .latitude, .longitude, .deviceId, .profilePic, .phoneCode, .phoneNumber, .language, .fbId, .googleId, .linkedinId, .address, .bloodGroup, .occupation,.fcmId, .isNeedConfirm, .addLat, .addLng]
    
    static let login : [Keys] = [.email, .password, .deviceId, .latitude, .longitude, .timezone, .fcmId]
    
    static let emailCheck : [Keys] = [.email]
    
    static let createReport : [Keys] = [.accessToken, .title, .description, .latitude, .longitude, .address, .addLat, .addLng, .incidentDate, .categories, .distance, .image, .lgbtIssue, .disability, .ethnicity, .policeIssue, .trueIssue, .anonumous, .type, .files, .surveyId, .timezone, .language]
    
    static let categories : [Keys] = [.language]
    
    static let createSafetyTip : [Keys] = [.accessToken, .latitude, .longitude, .description, .address, .addLat, .addLng, .anonumous]
    
    static let markPlace : [Keys] = [.accessToken, .name, .latitude, .longitude, .categoryId, .address, .addLat, .addLng ,.customPlace, .description]
    
    static let createEvent : [Keys] = [.accessToken, .latitude, .longitude, .title, .description, .image, .startingDt, .endingDt, .location, .state, .city, .addLat, .addLng]
    
    static let home : [Keys] = [.accessToken, .language, .timezone, .latitude, .longitude, .distance, .startDt, .endDt, .reportCategories, .placeCategories, .photos, .videos, .sourceLink, .adminVerified, .safetyTip, .page, .offset, .report, .place]
    
    static let reportAll : [Keys] = [.accessToken, .language, .timezone, .page, .offset, .latitude, .longitude, .distance, .startDt, .endDt, .reportCategories, .photos, .videos, .sourceLink, .adminVerified, .otherId]
    
    static let logout : [Keys] = [.accessToken]
    
    static let blogAll : [Keys] = [.accessToken, .language, .timezone, .page, .offset, .otherId, .adminVerified, .latitude, .longitude, .paginate, .country]
    
    static let eventAll : [Keys] = [.accessToken, .language, .timezone, .latitude, .longitude,.distance, .page, .offset, .paginate]
    
    static let activity : [Keys] = [.accessToken, .language, .timezone, .latitude, .longitude, .page, .offset, .distance, .surveys, .reports, .safetytips, .places]
    
    static let profile : [Keys] = [.userId]
    
    static let createBlog : [Keys] = [.accessToken, .latitude, .longitude, .title, .description, .image, .type, .country]
    
    static let joinEvent : [Keys] = [.accessToken, .status, .eventId]
    
    static let like : [Keys] = [.accessToken , .status, .blogId]
    
    static let notifications : [Keys] = [.accessToken, .page, .offset]
    
    static let blogDetails : [Keys] = [.accessToken, .blogId, .page, .offset, .latitude, .longitude, .timezone, .language]
    
    static let blogCommentAdd : [Keys] = [.accessToken, .blogId, .comment]
    
    static let eventCommentAdd : [Keys] = [.accessToken, .eventId, .comment]
    
    static let eventDetails : [Keys] = [.accessToken, .eventId, .page, .offset, .latitude, .longitude, .timezone, .language]
    
    static let followUser : [Keys] = [.accessToken, .active, .followedId]
    
    static let userEvents : [Keys] = [.accessToken, .page, .offset]
    
    static let reportSurveys : [Keys] = [.accessToken, .type]
    
    static let userPlaces : [Keys] = [.accessToken]
    
    static let appContacts : [Keys] = [.accessToken, .contacts]
    
    static let addRemoveUser : [Keys] = [.accessToken, .otherId, .type, .active]
    
    static let otherProfile : [Keys] = [.accessToken, .otherId, .page, .offset, .latitude, .longitude, .language, .timezone]
    
    static let blogComments : [Keys] = [.accessToken, .blogId, .page, .offset]
    
    static let blogUpdate : [Keys] = [.accessToken, .blogId , .latitude, .longitude, .title, .description, .type, .country]
    
    static let profileUpdate : [Keys] = [.accessToken , .firstName, .lastName, .timezone, .latitude, .longitude, .deviceId, .profilePic, .language, .address, .bloodGroup, .occupation, .phoneCode, .phoneNumber, .addLat, .addLng]
    
    static let blogVote : [Keys] = [.accessToken, .commentId, .voted]
    
    static let forgot : [Keys] = [.email]
    
    static let sendFeedback : [Keys] = [.accessToken, .message, .type]
    
    static let changePassword : [Keys] = [.accessToken, .old, .new]
    
    static let sendScPush : [Keys] = [.accessToken, .address, .link]
    
    static let addReferral : [Keys] = [.accessToken, .referalNo]
}





