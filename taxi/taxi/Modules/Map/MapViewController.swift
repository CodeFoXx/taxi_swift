//
//  MapViewController.swift
//  taxi
//
//  Created Осина П.М. on 27.03.18.
//  Copyright © 2018 owl. All rights reserved.
//

import UIKit
import MapsAPI
import JavaScriptCore


class MapViewController: MapsAPIViewController {

	var presenter: MapPresenter!

    func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func viewDidLoad() {
        //self.apiParams["mode"] = "debug"
        
        // Default: "ru_RU".
        self.apiParams["lang"] = "ru_RU"
        
        // Default: "release".
        self.apiParams["mode"] = "debug"
        
        // Default: "2.1".
        self.apiVersion = "2.1-dev"
        
        // Default: false. See https://tech.yandex.com/maps/doc/jsapi/2.1/commercial/index-docpage/
        //only for commercial account
        //self.apiEnterprise = true
        //self.apiParams["apikey"] = "fe6805a4-1c1b-4e34-8ad9-13854c62e3bc"
        
//        // By default is taken from view controller name. I.e. "myMap" for MyMapViewController.
        self.jsFileName = "map"
        
        
        
        super.viewDidLoad()
    }
}

extension MapViewController: MapView {
    
}
