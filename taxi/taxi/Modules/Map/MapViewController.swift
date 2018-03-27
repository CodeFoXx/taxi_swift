//
//  MapViewController.swift
//  taxi
//
//  Created Осина П.М. on 27.03.18.
//  Copyright © 2018 owl. All rights reserved.
//

import UIKit

class MapViewController: UIViewController {

	var presenter: MapPresenter!

	override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension MapViewController: MapView {
    
}
