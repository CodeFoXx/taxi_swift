//
//  GoogleMapPresenterImpl.swift
//  taxi
//
//  Created owl on 02.04.18.
//  Copyright © 2018 owl. All rights reserved.
//

import UIKit

class GoogleMapPresenterImpl: GoogleMapPresenter {

    weak private var view: GoogleMapView!
    private let router: GoogleMapRouter

    init(view: GoogleMapView, router: GoogleMapRouter) {
        self.view = view
        self.router = router
    }

}
