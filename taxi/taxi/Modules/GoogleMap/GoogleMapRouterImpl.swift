//
//  GoogleMapRouterImpl.swift
//  taxi
//
//  Created owl on 02.04.18.
//  Copyright © 2018 owl. All rights reserved.
//

import UIKit
import DITranquillity

class GoogleMapRouterImpl: GoogleMapRouter {
    
    private weak var viewController: UIViewController?
    private let container: DIContainer!
    
    init(viewController: GoogleMapViewController, container: DIContainer) {
        self.viewController = viewController
        self.container = container
    }
}
