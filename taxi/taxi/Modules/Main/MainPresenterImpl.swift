//
//  MainPresenterImpl.swift
//  taxi
//
//  Created Осина П.М. on 27.03.18.
//  Copyright © 2018 owl. All rights reserved.
//

import UIKit

class MainPresenterImpl: MainPresenter {

    weak private var view: MainView!
    private let router: MainRouter

    init(view: MainView, router: MainRouter) {
        self.view = view
        self.router = router
    }

}
