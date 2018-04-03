

//
//  GoogleMapViewController.swift
//  taxi
//
//  Created owl on 02.04.18.
//  Copyright © 2018 owl. All rights reserved.
//

import UIKit
import GoogleMaps

class GoogleMapViewController: UIViewController {

    @IBOutlet weak var mapView: GMSMapView!
    var presenter: GoogleMapPresenter!
    private let locationManager = CLLocationManager()

	override func viewDidLoad() {
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        super.viewDidLoad()
    }
}

extension GoogleMapViewController: GoogleMapView, CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        guard status == .authorizedWhenInUse else{
            return
        }
        locationManager.startUpdatingHeading()
        
        mapView.isMyLocationEnabled = true
        mapView.settings.myLocationButton = true
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        guard let location = locations.first else {
            return
        }
        mapView.camera = GMSCameraPosition(target: location.coordinate, zoom: 15, bearing: 0, viewingAngle: 0)
        locationManager.stopUpdatingLocation()
    }
}
