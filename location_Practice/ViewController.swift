//
//  ViewController.swift
//  location_Practice
//
//  Created by Javier Porras jr on 11/5/19.
//  Copyright © 2019 Javier Porras jr. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyKilometer
        //locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[0]
        let lat = location.coordinate.latitude
        let lon = location.coordinate.longitude
        
        print(location)
        print(lat)
        print(lon)
    }
}

