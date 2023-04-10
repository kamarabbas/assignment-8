//
//  LocationManager.swift
//  Track Current location
//
//  Created by KAMAR ABBAS SAIYAD on 31/03/23.
//

import CoreLocation
import Foundation

class LocationManager: NSObject, CLLocationManagerDelegate {
    static let shared = LocationManager()
    
    let manager = CLLocationManager()
    
    var completion: ((CLLocation) -> Void)?
    
    public func getuserLocation(completetion: @escaping ((CLLocation) -> Void)) {
        manager.requestWhenInUseAuthorization()
        manager.delegate = self
        manager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else {
        return
        }
        completion?(location)
        manager.stopUpdatingLocation()
        
        }
    }

