//
//  LocationManager.swift
//  BusinessDirectory
//
//  Created by Aseem 13 on 18/01/17.
//  Copyright © 2017 Taran. All rights reserved.
//

import UIKit
import CoreLocation

class LocationManager: NSObject,CLLocationManagerDelegate {
    
    var locationManager : CLLocationManager?
    var currentLoc : CLLocation?
    var latitude = CLLocationDegrees()
    var longitude = CLLocationDegrees()
    var address : String?
    var name : String?
    var country : String? = "India"
    
    override init() {
        super.init()
        locationInitializer()
        updateLocation()
    }
    
    static let shared = LocationManager()
    
    func updateUserLocation(){
        locationInitializer()
        updateLocation()
    }
    
    func updateLocation(){
        locationManager?.delegate = self
        locationManager?.startUpdatingLocation()
    }
    
    func locationInitializer(){
        locationManager = CLLocationManager()
        locationManager?.delegate = self
        locationManager?.desiredAccuracy = kCLLocationAccuracyBest
        locationManager?.requestWhenInUseAuthorization()
        
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .authorizedWhenInUse,.authorizedAlways:
            locationManager?.startUpdatingLocation()
        case .notDetermined:
            locationManager?.requestWhenInUseAuthorization()
        case .restricted,.denied:
            settingsAlert()
        }
    }
    
    func settingsAlert(){
        
        AlertsClass.shared.showAlertController(withTitle: L10n.Permission.string, message: L10n.SettingsApp.string, buttonTitles: [L10n.Settings.string,L10n.Cancel.string]) { (value) in
            let type = value as AlertTag
            switch type {
            case .yes:
                UIApplication.shared.openURL(NSURL(string:UIApplicationOpenSettingsURLString)! as URL)
            default:
                return
            }
        }
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        currentLoc = locations.last
        if let lat = currentLoc?.coordinate.latitude ,let lng = currentLoc?.coordinate.longitude {
            latitude = lat
            longitude = lng
            
            Utility.shared.calculateAddress(lat: lat, long: lng, responseBlock: {[weak self] (coordinates, address,name,_,_,_, country) in
                
                self?.name = name
                self?.address = address
                self?.country = country
                self?.locationManager?.stopUpdatingLocation()
                self?.locationManager?.delegate = nil
            })
            
        }
        
        
        
    }
    
}
