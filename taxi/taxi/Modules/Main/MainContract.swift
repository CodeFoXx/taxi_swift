//
//  MainContract.swift
//  taxi
//
//  Created Осина П.М. on 27.03.18.
//  Copyright © 2018 owl. All rights reserved.
//

import Foundation

protocol MainView: class {
    
}

protocol MainPresenter {
    func navigateToMapViewController()
}

protocol MainRouter {
    func navigateToMapViewController()
}
