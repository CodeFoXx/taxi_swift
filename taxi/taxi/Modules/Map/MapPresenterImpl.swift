//
//  MapPresenterImpl.swift
//  taxi
//
//  Created Осина П.М. on 27.03.18.
//  Copyright © 2018 owl. All rights reserved.
//

import UIKit

class MapPresenterImpl: MapPresenter {

    weak private var view: MapView!
    private let router: MapRouter

    init(view: MapView, router: MapRouter) {
        self.view = view
        self.router = router
    }

}
