 //
//  AppDelegate.swift
//  SafeCity
//
//  Created by Aseem 13 on 30/05/17.
//  Copyright © 2017 Taran. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import GoogleMaps
import GooglePlaces
import LinkedinSwift
import Google
import GoogleSignIn
import Fabric
import Crashlytics
import Firebase
import FirebaseMessaging

 
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var configureError: NSError?
    var deviceToken : String?
    var timer = Timer()
    var deviceId : String?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        FBSDKApplicationDelegate.sharedInstance().application(application, didFinishLaunchingWithOptions: launchOptions)
        GGLContext.sharedInstance().configureWithError(&configureError)
        
        Fabric.with([Crashlytics.self])
        FIRApp.configure()
        
        Utility.shared.changeLanguage()
        
        
        
        
        let _ = LocationManager.shared.currentLoc
        deviceId = UIDevice.current.identifierForVendor?.uuidString
        
        GMSServices.provideAPIKey(HelperNames.GoogleMapsApiKey)
        GMSPlacesClient.provideAPIKey(HelperNames.GoogleMapsApiKey)
        GIDSignIn.sharedInstance().clientID = "215958907647-krfpcjkpl8e1itligj0404feo85t5a4n.apps.googleusercontent.com"
        
        initializeFirebase(application: application, launchOptions : launchOptions)
        
        if let token =  UserDefaults.standard.value(forKey: HelperNames.Token) as? String {deviceToken = token}
        
        
        return true
    }

    
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        
        Utility.shared.loader()
        if FBSDKApplicationDelegate.sharedInstance().application(app, open: url, options: options){return true}
        
        if LinkedinSwiftHelper.shouldHandle(url) {
            return LinkedinSwiftHelper.application(app, open: url, sourceApplication: options[UIApplicationOpenURLOptionsKey.sourceApplication] as? String, annotation: options[UIApplicationOpenURLOptionsKey.annotation])
        }
        if GIDSignIn.sharedInstance().handle(url, sourceApplication: options[UIApplicationOpenURLOptionsKey.sourceApplication] as? String, annotation: options[UIApplicationOpenURLOptionsKey.annotation]){return true}
        
        return true
    }
    
    func logout(){
        
        self.window?.rootViewController?.dismiss(animated: false, completion: nil)
        UserDefaults.standard.removeObject(forKey: Defaults.login.rawValue)
        UserDefaults.standard.removeObject(forKey: Defaults.filters.rawValue)
        UserDefaults.standard.removeObject(forKey: Defaults.filterActivities.rawValue)
        
        
        let navControler = self.window?.rootViewController as? UINavigationController
        if let array = navControler?.viewControllers{
            for controller in array as Array {
                if controller is SplashViewController {
                    _ = navControler?.popToViewController(controller as UIViewController, animated: true)
                }
            }
        }
    }
    
    
    func applicationWillResignActive(_ application: UIApplication) {
        
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        
        FIRMessaging.messaging().disconnect()
    }
    
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        FBSDKAppEvents.activateApp()
        connectToFcm()
        
    }
    

    func applicationWillTerminate(_ application: UIApplication) {
       
    }


}

