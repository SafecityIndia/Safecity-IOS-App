// Generated using SwiftGen, by O.Halligon — https://github.com/AliSoftware/SwiftGen

import Foundation

// swiftlint:disable file_length
// swiftlint:disable type_body_length
// swiftlint:disable nesting
// swiftlint:disable variable_name
// swiftlint:disable valid_docs

enum L10n {
  /// Please enter your email id
  case ValidateEmail
  /// Please enter valid email id
  case ValidateValidEmail
  /// Please enter your password
  case ValidatePassword
  /// Please enter your old password
  case ValidateOldPassword
  /// Please enter your new password
  case ValidateNewPassword
  /// Password must be of minimum 7 characters
  case ValidateValidPassword
  /// Please enter your first name
  case ValidateFirstName
  /// Please enter your last name
  case ValidateLastName
  /// Please enter your phone number
  case ValidatePhoneNumber
  /// Phone number must be of minimum 5 characters
  case ValidateValidPhone
  /// Please enter your city
  case ValidateCity
  /// Please choose your blood group
  case ValidateBloodGroup 
  /// Please enter your occupation
  case ValidateOccupation 
  /// Please upload your profile image
  case ValidateImage 
  /// Please write your safety Tip
  case ValidateSafetyTipDesc
  /// Please upload event Image
  case ValidateEventImage 
  /// Please enter your event title
  case ValidateTitle 
  /// Please enter your event description
  case ValidateEventDesc 
  /// Please choose your event start Date
  case ValidateStartDt
  /// Please choose your event end Date
  case ValidateEndDt 
  /// Please choose your event location
  case ValidateLocation 
  /// Please enter your report title
  case ValidateReportTitle 
  /// Please enter your survey title
  case ValidateSurveyTitle 
  /// Please enter your blog title
  case ValidateBlogTitle
  /// Please enter your blog description
  case ValidateBlogDesc
  /// Please upload blog Image
  case ValidateBlogImage 
  /// Please choose your blog type
  case ValidateBlogType
  /// Please choose your report incident Date
  case ValidateIncidentDt 
  /// Please choose your report location
  case ValidateReportLocation 
  /// Please choose at least 1 file for publishing report.
  case ValidateFiles
  /// Please write your message
  case ValidateMessage 
  /// Thanks, Your feedback has been submitted
  case FeedbackPosted 
  /// Thanks, Your problem has been reported
  case ProblemReported 
  /// We will get back to you soon!
  case Donation 
  /// Event's start and time difference must be minimum 1 hour
  case ValidateEventTime
  /// Sorry, your account has been logged in other device! Please login again to continue.
  case TokenExpire 
  /// Session Expired !!
  case SessionExpired 
  /// Sorry, your account has been blocked by admin.
  case Blocked 
  /// Admin Blocked !!
  case AdminBlocked
  /// Permission Required!
  case Permission
  /// Application can't be run without Location. Please allow Location Permissions from settings.
  case SettingsApp
  /// Camera permissions need to be allowed to scan the ticket. Please allow Camera Permissions from settings.
  case SettingsCameraApp
  /// Success
  case Success
  /// Uploading
  case Uploading
  /// Settings
  case Settings
  /// Oops
  case Oops
  /// OK
  case Ok
  /// Cancel
  case Cancel
  /// Forgot Password
  case ForgotPassword
  /// Some Error Occurred
  case ErrorOccurred
  /// Decasee
  case Delete
  /// Are you sure you want to logout ?
  case LogoutSure
  /// Are you sure you want to delete this image ?
  case DeleteImage
  /// Are you sure you want to delete this video ?
  case DeleteVideo
  /// Are you sure you want to delete this contact from Carelist ?
  case DeleteCarelist
  /// Are you sure you want to delete this contact from Safelist ?
  case DeleteSafelist
  /// Please enter your email address and we'll send you a password reset link.
  case PasswordResetLink
  /// The reset password link has been sent to your email id. Please check your email.
  case PasswordReset
  /// Password Changed Successfully
  case PasswordChanged
  /// Sorry
  case Sorry
  /// Logout
  case Logout
  /// Login
  case Login
  /// Error !!
  case Error
  /// Edit Profile
  case EditProfile
  /// Country
  case Country
  /// Safety Tip created successfully !!
  case SafetyTipCreated
  /// Your Profile has updated successfully !!
  case ProfileUpdated
  /// Selected place is marked successfully !!
  case PlaceMarked
  /// Choose place to be marked
  case ChoosePlace
  /// Event has created successfully !!
  case EventCreated
  /// Thank you for sharing your story. The Administrator will publish it shortly.
  case ReportPublished
  /// Survey has been posted successfully !!
  case SurveyPosted
  /// Please choose category
  case ChooseCategories
  /// Max Limit has been reached
  case MaxReached
  /// Post has been sent for approval. Please wait till admin approves it.
  case BlogPosted
  /// Profile Created Successfully. Please verify your email before login in.
  case VerifyEmail
  /// Welcome to Safecity
  case WelcomeToSafecity
  /// Signup
  case Signup
  /// THIS WEEK
  case THISWEEK
  /// NEXT WEEK
  case NEXTWEEK
  /// UPCOMING
  case UPCOMING
  /// POSTS
  case POSTS
  /// NEWS
  case NEWSupper
  /// LAWS
  case LAWS
  /// Q&A
  case QA
  /// REPORTS
  case REPORTSUpper
  /// SAFETY TIPS
  case SAFETYTIPS
  /// BLOG POSTS
  case BLOGPOSTS
  /// CARELIST
  case CARELIST
  /// SAFELIST
  case SAFELIST
  /// Choose your Location
  case ChooseLocation
  /// Choose at least 1 place category to apply filters
  case ChooseCategoriy
  /// Please choose that the information provided is true to your knowledge before proceeding
  case ChooseKnowledge
  /// Where did the incident take place?
  case ReportTitle
  /// Choose a location to post a safety tip for
  case SafetyTipTitle
  /// New Report
  case NewReport
  /// New Safety Tip
  case NewSafetyTip
  /// Verified
  case Verified
  /// Non Verified
  case NonVerified
  /// No safelisted Users
  case NoSafelisted
  /// No carelisted Users
  case NoCarelisted
  /// Answered on %@
  case Answeredon(p0: String)
  /// %@ ANSWERS
  case __ANSWERS(p0: String)
  /// Asked on %@
  case Askedon(p0: String)
  /// %@ likes
  case ___Likes(p0: String)
  /// %@ comments
  case ___Comments(p0: String)
  /// Anonumous User
  case AnonumousUser
  /// %@ kms away
  case __Kmsaway(p0: String)
  /// Custom Place
  case CustomPlace
  /// Place name to mark this place
  case Placename
  /// %@ Reports posted
  case __Reportsposted(p0: String)
  /// Sorry, No reports available
  case Noreports
  /// Sorry, No safety Tips available
  case NosafetyTips
  /// Sorry, No surveys found
  case Nosurveys
  /// Surveys
  case Surveys
  /// Marked Places
  case MarkedPlaces
  /// %i km
  case _IKm(p0: Int)
  /// Internet Connection appears to be offline.
  case InternetOffline
  /// Sorry, No places are marked yet
  case Noplacesmarked
  /// Reports
  case Reports
  /// Safety Tips
  case SafetyTipsupper
  /// %@ km
  case __Km(p0: String)
  /// Sorry, No activity feeds available
  case Noactivity
  /// Sorry, No notifications available
  case Nonotifications
  /// Heat map
  case HeatMap
  /// Blog
  case Blog
  /// Events
  case Events
  /// Activity
  case Activity
  /// Sorry, No events for this week found
  case Noeventsthisweek
  /// Sorry, No events for next week found
  case Noeventsnextweek
  /// Sorry, No upcoming events found
  case Noupcoming
  /// Sorry, No posts found
  case Noposts
  /// Sorry, No news found
  case Nonews
  /// Sorry, No laws found
  case Nolaws
  /// Sorry, No QA found
  case NoQA
  /// Sorry, No events found
  case Noevents
  /// Referral Code?
  case AskReferralCode
  /// Enter your referral Code
  case ChooseCode
  /// Are you sure you want to change your language?
  case ConfirmLanguage
  /// Choose your Blood Group
  case BloodGroup
  /// Choose your Place Category
  case ChooseCategory
  /// Choose your Report Category
  case ChooseReport
  /// Choose your Blog Type
  case ChooseBlogType
  /// Login for more access
  case LoginAccess
  /// Please do login to see notifications
  case LoginNotifications
  /// Please do login before adding contacts to your Safelist/Carelist
  case LoginContacts
  /// Please do login to see your Profile
  case LoginProfile
  /// Please do login before liking the Blog
  case LoginLike
  /// Please do login before commenting on blog
  case LoginCommentBlog
  /// Please do login before commenting on event
  case LoginCommentEvent
  /// Please do login before joining the event
  case LoginGoing
  /// Please do login before posting your safety tip
  case LoginSafetyTip
  /// Please do login before marking any place
  case LoginPlace
  /// Please do login before creating your event
  case LoginEvent
  /// Please do login before posting your blog
  case LoginBlog
  /// Please do login before creating your survey
  case LoginSurvey
  /// Please do login to view this Profile
  case LoginOtherProfile
  /// Please do login to follow this user
  case LoginFollow
  /// ALSO SHOW ON MAP
  case ALSOSHOWONMAP
  /// SHOW REPORTS FOR
  case SHOWREPORTSFOR
  /// SHOW REPORTS WITHIN
  case SHOWREPORTSWITHIN
  /// SHOW REPORTS FROM
  case SHOWREPORTSFROM
  /// FILTER REPORTS THAT CONTAIN
  case FILTERREPORTSTHATCONTAIN
  /// VERIFICATION STATUS
  case VERIFICATIONSTATUS
  /// Photos
  case Photos
  /// Videos
  case Videos
  /// News source link
  case NewsSourceLink
  /// I would like to report this as an LGBT issue
  case LGBTIssue
  /// I would like to report this as a Disability issue
  case DisabilityIssue
  /// I would like to report this as an Ethnicity issue
  case EthnicityIssue
  /// I have reported/ intend to report this to the police
  case PoliceIssue
  /// The information provided is true to my knowledge
  case Truetoknowledge
  /// Post a safety tip
  case PostASafetyTip
  /// Mark a place
  case MarkAPlace
  /// Create an Event
  case CreateAnEvent
  /// Create a blog post
  case CreateABlogPost
  /// Create a survey
  case CreateASurvey
  /// TITLE
  case TITLE
  /// DESCRIPTION
  case DESCRIPTION
  /// STARTS ON
  case STARTSON
  /// ENDS ON
  case ENDSON
  /// LOCATION
  case LOCATION
  /// Safety tips
  case SafetyTips
  /// Blog posts
  case BlogPosts
  /// Donate
  case Donate
  /// Send feedback
  case SendFeedback
  /// Rate us
  case RateUs
  /// Referral Code
  case ReferralCode
  /// Log Out
  case LogOut
  /// Not Sure
  case NotSure
  /// A+
  case Aplus
  /// A-
  case A
  /// B+
  case Bplus
  /// B-
  case B
  /// AB-
  case AB
  /// AB+
  case ABplus
  /// O+
  case Oplus
  /// O-
  case O
  /// SHOW ME
  case SHOWME
  /// SHOW ACTIVITIES WITHIN
  case SHOWACTIVITIESWITHIN
  /// Places
  case Places
  /// Post
  case Post
  /// News
  case News
  /// Law
  case Law
  /// Add to Safelist
  case AddToSafelist
  /// Language
  case Language
  /// Change password
  case ChangePassword
  /// English
  case English
  /// हिंदी
  case Hindi
  /// Español
  case Spanish
  /// By signing in, you agree to our Terms of Service and Privacy Policy
  case TermsPolicy
  ///Terms of Service
  case Terms
  ///Privacy Policy
  case Policy
    
}

extension L10n: CustomStringConvertible {
    var description: String { return self.string }
    
    var string: String {
        switch self {
        case .ValidateEmail: return L10n.tr("ValidateEmail")
            
        case .ValidateValidEmail: return L10n.tr("ValidateValidEmail")
            
        case .ValidatePassword: return L10n.tr("ValidatePassword")
            
        case .ValidateOldPassword: return L10n.tr("ValidateOldPassword")
            
        case .ValidateNewPassword: return L10n.tr("ValidateNewPassword")
            
        case .ValidateValidPassword: return L10n.tr("ValidateValidPassword")
            
        case .ValidateFirstName: return L10n.tr("ValidateFirstName")
            
        case .ValidateLastName: return L10n.tr("ValidateLastName")
            
        case .ValidatePhoneNumber: return L10n.tr("ValidatePhoneNumber")
            
        case .ValidateValidPhone: return L10n.tr("ValidateValidPhone")
            
        case .ValidateCity: return L10n.tr("ValidateCity")
            
        case .ValidateBloodGroup: return L10n.tr("ValidateBloodGroup")
            
        case .ValidateOccupation: return L10n.tr("ValidateOccupation")
            
        case .ValidateImage: return L10n.tr("ValidateImage")
            
        case .ValidateSafetyTipDesc: return L10n.tr("ValidateSafetyTipDesc")
            
        case .ValidateEventImage: return L10n.tr("ValidateEventImage")
            
        case .ValidateTitle: return L10n.tr("ValidateTitle")
            
        case .ValidateEventDesc: return L10n.tr("ValidateEventDesc")
       
        case .ValidateStartDt: return L10n.tr("ValidateStartDt")
        
        case .ValidateEndDt: return L10n.tr("ValidateEndDt")
        /// Please choose your event location
        case .ValidateLocation: return L10n.tr("ValidateLocation")
        /// Please enter your report title
        case .ValidateReportTitle: return L10n.tr("ValidateReportTitle")
        /// Please enter your survey title
        case .ValidateSurveyTitle: return L10n.tr("ValidateSurveyTitle")
        /// Please enter your blog title
        case .ValidateBlogTitle: return L10n.tr("ValidateBlogTitle")
        /// Please enter your blog description
        case .ValidateBlogDesc: return L10n.tr("ValidateBlogDesc")
        /// Please upload blog Image
        case .ValidateBlogImage: return L10n.tr("ValidateBlogImage")
        /// Please choose your blog type
        case .ValidateBlogType: return L10n.tr("ValidateBlogType")
        /// Please choose your report incident Date
        case .ValidateIncidentDt: return L10n.tr("ValidateIncidentDt")
        /// Please choose your report location
        case .ValidateReportLocation: return L10n.tr("ValidateReportLocation")
        /// Please choose at least 1 file for publishing report.
        case .ValidateFiles: return L10n.tr("ValidateFiles")
        /// Please write your message
        case .ValidateMessage: return L10n.tr("ValidateMessage")
        /// Thanks, Your feedback has been submitted
        case .FeedbackPosted: return L10n.tr("FeedbackPosted")
        /// Thanks, Your problem has been reported
        case .ProblemReported: return L10n.tr("ProblemReported")
        /// We will get back to you soon!
        case .Donation: return L10n.tr("Donation")
        /// Event's start and time difference must be minimum 1 hour
        case .ValidateEventTime: return L10n.tr("ValidateEventTime")
        /// Sorry, your account has been logged in other device! Please login again to continue.
        case .TokenExpire: return L10n.tr("TokenExpire")
        /// Session Expired !!
        case .SessionExpired: return L10n.tr("SessionExpired")
        /// Sorry, your account has been blocked by admin.
        case .Blocked: return L10n.tr("Blocked")
        /// Admin Blocked !!
        case .AdminBlocked: return L10n.tr("AdminBlocked")
        /// Permission Required!
        case .Permission: return L10n.tr("Permission")
        /// Application can't be run without Location. Please allow Location Permissions from settings.
        case .SettingsApp: return L10n.tr("SettingsApp")
        /// Camera permissions need to be allowed to scan the ticket. Please allow Camera Permissions from settings.
        case .SettingsCameraApp: return L10n.tr("SettingsCameraApp")
        /// Success
        case .Success: return L10n.tr("Success")
        /// Uploading
        case .Uploading: return L10n.tr("Uploading")
        /// Settings
        case .Settings: return L10n.tr("Settings")
        /// Oops
        case .Oops: return L10n.tr("Oops")
        /// OK
        case .Ok: return L10n.tr("Ok")
        /// Cancel
        case .Cancel: return L10n.tr("Cancel")
        /// Forgot Password
        case .ForgotPassword: return L10n.tr("ForgotPassword")
        /// Some Error Occurred
        case .ErrorOccurred: return L10n.tr("ErrorOccurred")
        /// Delete
        case .Delete: return L10n.tr("Delete")
        /// Are you sure you want to logout ?
        case .LogoutSure: return L10n.tr("LogoutSure")
        /// Are you sure you want to delete this image ?
        case .DeleteImage: return L10n.tr("DeleteImage")
        /// Are you sure you want to delete this video ?
        case .DeleteVideo: return L10n.tr("DeleteVideo")
        /// Are you sure you want to delete this contact from Carelist ?
        case .DeleteCarelist: return L10n.tr("DeleteCarelist")
        /// Are you sure you want to delete this contact from Safelist ?
        case .DeleteSafelist: return L10n.tr("DeleteSafelist")
        /// Please enter your email address and we'll send you a password reset link.
        case .PasswordResetLink: return L10n.tr("PasswordResetLink")
        /// The reset password link has been sent to your email id. Please check your email.
        case .PasswordReset: return L10n.tr("PasswordReset")
        /// Password Changed Successfully
        case .PasswordChanged: return L10n.tr("PasswordChanged")
        /// Sorry
        case .Sorry: return L10n.tr("Sorry")
        /// Logout
        case .Logout: return L10n.tr("Logout")
        /// Login
        case .Login: return L10n.tr("Login")
        /// Error !!
        case .Error: return L10n.tr("Error")
        /// Edit Profile
        case .EditProfile: return L10n.tr("EditProfile")
        /// Country
        case .Country: return L10n.tr("Country")
        /// Safety Tip created successfully !!
        case .SafetyTipCreated: return L10n.tr("SafetyTipCreated")
        /// Your Profile has updated successfully !!
        case .ProfileUpdated: return L10n.tr("ProfileUpdated")
        /// Selected place is marked successfully !!
        case .PlaceMarked: return L10n.tr("PlaceMarked")
        /// Choose place to be marked
        case .ChoosePlace: return L10n.tr("ChoosePlace")
        /// Event has created successfully !!
        case .EventCreated: return L10n.tr("EventCreated")
        /// Thank you for sharing your story. The Administrator will publish it shortly.
        case .ReportPublished: return L10n.tr("ReportPublished")
        /// Survey has been posted successfully !!
        case .SurveyPosted: return L10n.tr("SurveyPosted")
        /// Please choose category
        case .ChooseCategories: return L10n.tr("ChooseCategories")
        /// Max Limit has been reached
        case .MaxReached: return L10n.tr("MaxReached")
        /// Post has been sent for approval. Please wait till admin approves it.
        case .BlogPosted: return L10n.tr("BlogPosted")
        /// Profile Created Successfully. Please verify your email before login in.
        case .VerifyEmail: return L10n.tr("VerifyEmail")
        /// Welcome to Safecity
        case .WelcomeToSafecity: return L10n.tr("Welcome to Safecity")
        /// Signup
        case .Signup: return L10n.tr("Signup")
        /// THIS WEEK
        case .THISWEEK: return L10n.tr("THIS WEEK")
        /// NEXT WEEK
        case .NEXTWEEK: return L10n.tr("NEXT WEEK")
        /// UPCOMING
        case .UPCOMING: return L10n.tr("UPCOMING")
        /// POSTS
        case .POSTS: return L10n.tr("POSTS")
        /// NEWS
        case .NEWSupper: return L10n.tr("NEWSupper")
        /// LAWS
        case .LAWS: return L10n.tr("LAWS")
        /// Q&A
        case .QA: return L10n.tr("Q&A")
        /// REPORTS
        case .REPORTSUpper: return L10n.tr("REPORTSUpper")
        /// SAFETY TIPS
        case .SAFETYTIPS: return L10n.tr("SAFETYTIPS")
        /// BLOG POSTS
        case .BLOGPOSTS: return L10n.tr("BLOGPOSTS")
        /// CARELIST
        case .CARELIST: return L10n.tr("CARELIST")
        /// SAFELIST
        case .SAFELIST: return L10n.tr("SAFELIST")
        /// Choose your Location
        case .ChooseLocation: return L10n.tr("ChooseLocation")
        /// Choose at least 1 place category to apply filters
        case .ChooseCategoriy: return L10n.tr("ChooseCategoriy")
        /// Please choose that the information provided is true to your knowledge before proceeding
        case .ChooseKnowledge: return L10n.tr("ChooseKnowledge")
        /// Where did the incident take place?
        case .ReportTitle: return L10n.tr("ReportTitle")
        /// Choose a location to post a safety tip for
        case .SafetyTipTitle: return L10n.tr("SafetyTipTitle")
        /// New Report
        case .NewReport: return L10n.tr("New Report")
        /// New Safety Tip
        case .NewSafetyTip: return L10n.tr("New Safety Tip")
        /// Verified
        case .Verified: return L10n.tr("Verified")
        /// Non Verified
        case .NonVerified: return L10n.tr("NonVerified")
        /// No safelisted Users
        case .NoSafelisted: return L10n.tr("NoSafelisted")
        /// No carelisted Users
        case .NoCarelisted: return L10n.tr("NoCarelisted")
        /// Answered on %@
        
        case .Answeredon(let p0): return L10n.tr("Answeredon%@", p0)
        
        
        case .__ANSWERS(let p0): return L10n.tr("%@ANSWERS", p0)
        
        
        case .Askedon(let p0): return L10n.tr("Askedon%@", p0)
        
        
        case .___Likes(let p0): return L10n.tr("%@ likes", p0)
        
        case .___Comments(let p0): return L10n.tr("%@ comments", p0)
        
        case .AnonumousUser: return L10n.tr("Anonumous User")
       
        case .__Kmsaway(let p0): return L10n.tr("%@kmsaway", p0)
        
        case .CustomPlace: return L10n.tr("CustomPlace")
        
        case .Placename: return L10n.tr("Placename")
      
        case .__Reportsposted(let p0): return L10n.tr("%@Reportsposted", p0)
      
        case .Noreports: return L10n.tr("Noreports")
        
        case .NosafetyTips: return L10n.tr("NosafetyTips")
        
        case .Nosurveys: return L10n.tr("Nosurveys")
        
        case .Surveys: return L10n.tr("Surveys")
       
        case .MarkedPlaces: return L10n.tr("MarkedPlaces")
        
        case ._IKm(let p0): return L10n.tr("%i km", p0)
        
        case .InternetOffline: return L10n.tr("InternetOffline")
        
        case .Noplacesmarked: return L10n.tr("Noplacesmarked")
        
        case .Reports: return L10n.tr("Reports")
       
        case .SafetyTipsupper: return L10n.tr("SafetyTipsupperT")
        
        case .__Km(let p0): return L10n.tr("%@km", p0)
        
        case .Noactivity: return L10n.tr("Noactivity")
        /// Sorry, No notifications available
        case .Nonotifications: return L10n.tr("Nonotifications")
        /// Heat map
        case .HeatMap: return L10n.tr("HeatMap")
        /// Blog
        case .Blog: return L10n.tr("Blog")
        /// Events
        case .Events: return L10n.tr("Events")
        /// Activity
        case .Activity: return L10n.tr("Activity")
        /// Sorry, No events for this week found
        case .Noeventsthisweek: return L10n.tr("Noeventsthisweek")
        /// Sorry, No events for next week found
        case .Noeventsnextweek: return L10n.tr("Noeventsnextweek")
        /// Sorry, No upcoming events found
        case .Noupcoming: return L10n.tr("Noupcoming")
        /// Sorry, No posts found
        case .Noposts: return L10n.tr("Noposts")
        /// Sorry, No news found
        case .Nonews: return L10n.tr("Nonews")
        /// Sorry, No laws found
        case .Nolaws: return L10n.tr("Nolaws")
        /// Sorry, No QA found
        case .NoQA: return L10n.tr("NoQA")
        /// Sorry, No events found
        case .Noevents: return L10n.tr("Noevents")
        /// Referral Code?
        case .AskReferralCode: return L10n.tr("AskReferralCode")
        /// Enter your referral Code
        case .ChooseCode: return L10n.tr("ChooseCode")
        /// Are you sure you want to change your language?
        case .ConfirmLanguage: return L10n.tr("ConfirmLanguage")
        /// Choose your Blood Group
        case .BloodGroup: return L10n.tr("BloodGroup")
        /// Choose your Place Category
        case .ChooseCategory: return L10n.tr("ChooseCategory")
        /// Choose your Report Category
        case .ChooseReport: return L10n.tr("ChooseReport")
        /// Choose your Blog Type
        case .ChooseBlogType: return L10n.tr("ChooseBlogType")
        /// Login for more access
        case .LoginAccess: return L10n.tr("LoginAccess")
        /// Please do login to see notifications
        case .LoginNotifications: return L10n.tr("LoginNotifications")
        /// Please do login before adding contacts to your Safelist/Carelist
        case .LoginContacts: return L10n.tr("LoginContacts")
        /// Please do login to see your Profile
        case .LoginProfile: return L10n.tr("LoginProfile")
        /// Please do login before liking the Blog
        case .LoginLike: return L10n.tr("LoginLike")
        /// Please do login before commenting on blog
        case .LoginCommentBlog: return L10n.tr("LoginCommentBlog")
        /// Please do login before commenting on event
        case .LoginCommentEvent: return L10n.tr("LoginCommentEvent")
        /// Please do login before joining the event
        case .LoginGoing: return L10n.tr("LoginGoing")
        /// Please do login before posting your safety tip
        case .LoginSafetyTip: return L10n.tr("LoginSafetyTip")
        /// Please do login before marking any place
        case .LoginPlace: return L10n.tr("LoginPlace")
        /// Please do login before creating your event
        case .LoginEvent: return L10n.tr("LoginEvent")
        /// Please do login before posting your blog
        case .LoginBlog: return L10n.tr("LoginBlog")
        /// Please do login before creating your survey
        case .LoginSurvey: return L10n.tr("LoginSurvey")
        /// Please do login to view this Profile
        case .LoginOtherProfile: return L10n.tr("LoginOtherProfile")
        /// Please do login to follow this user
        case .LoginFollow: return L10n.tr("LoginFollow")
        /// ALSO SHOW ON MAP
        case .ALSOSHOWONMAP: return L10n.tr("ALSO SHOW ON MAP")
        /// SHOW REPORTS FOR
        case .SHOWREPORTSFOR: return L10n.tr("SHOW REPORTS FOR")
        /// SHOW REPORTS WITHIN
        case .SHOWREPORTSWITHIN: return L10n.tr("SHOW REPORTS WITHIN")
        /// SHOW REPORTS FROM
        case .SHOWREPORTSFROM: return L10n.tr("SHOW REPORTS FROM")
        /// FILTER REPORTS THAT CONTAIN
        case .FILTERREPORTSTHATCONTAIN: return L10n.tr("FILTER REPORTS THAT CONTAIN")
        /// VERIFICATION STATUS
        case .VERIFICATIONSTATUS: return L10n.tr("VERIFICATION STATUS")
        /// Photos
        case .Photos: return L10n.tr("Photos")
        /// Videos
        case .Videos: return L10n.tr("Videos")
        /// News source link
        case .NewsSourceLink: return L10n.tr("News source link")
        /// I would like to report this as an LGBT issue
        case .LGBTIssue: return L10n.tr("LGBT issue")
        /// I would like to report this as a Disability issue
        case .DisabilityIssue: return L10n.tr("Disability issue")
        /// I would like to report this as an Ethnicity issue
        case .EthnicityIssue: return L10n.tr("Ethnicity issue")
        /// I have reported/ intend to report this to the police
        case .PoliceIssue: return L10n.tr("police issue")
        /// The information provided is true to my knowledge
        case .Truetoknowledge: return L10n.tr("truetoknowledge")
        /// Post a safety tip
        case .PostASafetyTip: return L10n.tr("Post a safety tip")
        /// Mark a place
        case .MarkAPlace: return L10n.tr("Mark a place")
        /// Create an Event
        case .CreateAnEvent: return L10n.tr("Create an Event")
        /// Create a blog post
        case .CreateABlogPost: return L10n.tr("Create a blog post")
        /// Create a survey
        case .CreateASurvey: return L10n.tr("Create a survey")
        /// TITLE
        case .TITLE: return L10n.tr("TITLE")
        /// DESCRIPTION
        case .DESCRIPTION: return L10n.tr("DESCRIPTION")
        /// STARTS ON
        case .STARTSON: return L10n.tr("STARTS ON")
        /// ENDS ON
        case .ENDSON: return L10n.tr("ENDS ON")
        /// LOCATION
        case .LOCATION: return L10n.tr("LOCATION")
        /// Safety tips
        case .SafetyTips: return L10n.tr("Safety tips")
        /// Blog posts
        case .BlogPosts: return L10n.tr("Blog posts")
        /// Donate
        case .Donate: return L10n.tr("Donate")
        /// Send feedback
        case .SendFeedback: return L10n.tr("Send feedback")
        /// Rate us
        case .RateUs: return L10n.tr("Rate us")
        /// Referral Code
        case .ReferralCode: return L10n.tr("Referral Code")
        /// Log Out
        case .LogOut: return L10n.tr("Log Out")
        /// Not Sure
        case .NotSure: return L10n.tr("Not Sure")
        /// A+
        case .Aplus: return L10n.tr("Aplus")
        /// A-
        case .A: return L10n.tr("A")
        /// B+
        case .Bplus: return L10n.tr("Bplus")
        /// B-
        case .B: return L10n.tr("B")
        /// AB-
        case .AB: return L10n.tr("AB")
        /// AB+
        case .ABplus: return L10n.tr("ABplus")
        /// O+
        case .Oplus: return L10n.tr("Oplus")
        /// O-
        case .O: return L10n.tr("O")
        /// SHOW ME
        case .SHOWME: return L10n.tr("SHOW ME")
        /// SHOW ACTIVITIES WITHIN
        case .SHOWACTIVITIESWITHIN: return L10n.tr("SHOW ACTIVITIES WITHIN")
        /// Places
        case .Places: return L10n.tr("Places")
        /// Post
        case .Post: return L10n.tr("Post")
        /// News
        case .News: return L10n.tr("News")
        /// Law
        case .Law: return L10n.tr("Law")
        /// Add to Safelist
        case .AddToSafelist: return L10n.tr("Add to Safelist")
        /// Language
        case .Language: return L10n.tr("Language")
        /// Change password
        case .ChangePassword: return L10n.tr("Change password")
        /// English
        case .English: return L10n.tr("English")
        /// हिंदी
        case .Hindi: return L10n.tr("Hindi")
        /// Español
        case .Spanish: return L10n.tr("Spanish")
        /// By signing in, you agree to our Terms of Service and Privacy Policy
        case .TermsPolicy: return L10n.tr("TermsPolicy")
        ///Terms of Service
        case .Terms: return L10n.tr("Terms")
        ///Privacy Policy
        case .Policy: return L10n.tr("Policy")
            
        }}
    
    
    private static func tr(_ key: String, _ args: CVarArg...) -> String {
        let format = NSLocalizedString(key, comment: "")
         return String(format: format, locale: NSLocale.current, arguments: args)
//        return key.localizedFormat(arguments: args)
    }
    
    
}


func tr(key: L10n) -> String {
    return key.string
}

// swiftlint:enable type_body_length
// swiftlint:enable nesting
// swiftlint:enable variable_name
// swiftlint:enable valid_docs
