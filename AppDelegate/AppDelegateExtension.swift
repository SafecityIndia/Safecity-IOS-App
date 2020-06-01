//
//  AppDelegateExtension.swift
//  BusinessDirectory
//
//  Created by Aseem 13 on 16/02/17.
//  Copyright © 2017 Taran. All rights reserved.
//

import UIKit
import Firebase
import UserNotifications
import FirebaseMessaging
import SwiftyJSON

extension AppDelegate : UNUserNotificationCenterDelegate, FIRMessagingDelegate{
    
    
    
    func initializeFirebase(application : UIApplication, launchOptions : [UIApplicationLaunchOptionsKey: Any]?){
        
        if #available(iOS 10.0, *) {
            let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
            UNUserNotificationCenter.current().requestAuthorization(
                options: authOptions,
                completionHandler: {_, _ in })
            
            UNUserNotificationCenter.current().delegate = self
            FIRMessaging.messaging().remoteMessageDelegate = self
            
        } else {
            let settings: UIUserNotificationSettings =
                UIUserNotificationSettings(types: [.alert, .badge, .sound], categories: nil)
            application.registerUserNotificationSettings(settings)
        }
        
        application.registerForRemoteNotifications()
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(self.tokenRefreshNotification),
                                               name: .firInstanceIDTokenRefresh,
                                               object: nil)
        
        
        if let remoteNotif =  launchOptions?[UIApplicationLaunchOptionsKey.remoteNotification] as? [String : Any]{
            
            var dict = [String : String]()
            dict[Noti.senderId] = remoteNotif[Noti.senderId] as? String
            dict[Noti.type] = remoteNotif[Noti.type] as? String
            UserDefaults.standard.set(dict, forKey: Noti.dict)
        }
        
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(AppDelegate.update), userInfo: nil, repeats: true)
      
        
    }
    
    
    func update(){
        if deviceToken == nil{
            
            let tokenString = FIRInstanceID.instanceID().token()
            print("Device Token: \(tokenString)")
            UserDefaults.standard.set(tokenString, forKey: HelperNames.Token)
            deviceToken = tokenString
            
        }else{
            timer.invalidate()
        }
    }
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken token: Data) {
        
//        FIRInstanceID.instanceID().setAPNSToken(token, type: FIRInstanceIDAPNSTokenType.sandbox)
        FIRInstanceID.instanceID().setAPNSToken(token, type: FIRInstanceIDAPNSTokenType.prod)
        
        let tokenString = FIRInstanceID.instanceID().token()
        print("Device Token: \(tokenString)")
        UserDefaults.standard.set(tokenString, forKey: HelperNames.Token)
        deviceToken = tokenString
    }
    
    
    @available(iOS 10.0, *)
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler(UNNotificationPresentationOptions.alert)
        
    }
    
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable: Any]) {
        print(userInfo)
    }
    
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        
        var dict = [String : String]()
        dict[Noti.senderId] = userInfo[Noti.senderId] as? String
        dict[Noti.type] = userInfo[Noti.type] as? String
        dict[Noti.eventId] = userInfo[Noti.eventId] as? String
        dict[Noti.blogId] = userInfo[Noti.blogId] as? String
        UserDefaults.standard.set(dict, forKey: Noti.dict)
        
//        if let _ = Defaults.login.get() as? UserModal{
            
//            if let tabBar = self.window?.rootViewController?.presentedViewController as? TabBarController{
            
//                if tabBar.selectedIndex == 0{
                    NotificationCenter.default.post(name: NSNotification.Name(rawValue: Noti.postNot), object: nil)
        
//        }
//                else{tabBar.selectedIndex = 0}
                
////            }
//        }else{
//            
//            let navControler = self.window?.rootViewController as? UINavigationController
//            let vc = StoryboardScene.Home.instantiateTabBarController()
//            navControler?.presentVC(vc)
//            
//        }
        
        print(dict)
        
    
    }
    
    func applicationReceivedRemoteMessage(_ remoteMessage: FIRMessagingRemoteMessage) {
        
    }
    
    func tokenRefreshNotification(_ notification: Notification) {
        connectToFcm()
    }
    
    func connectToFcm() {
    
        guard FIRInstanceID.instanceID().token() != nil else {
            return;
        }
        
        FIRMessaging.messaging().disconnect()
        
        FIRMessaging.messaging().connect { (error) in            
        }
    }
    

}
