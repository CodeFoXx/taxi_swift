//
//  MapRouterImpl.swift
//  taxi
//
//  Created Осина П.М. on 27.03.18.
//  Copyright © 2018 owl. All rights reserved.
//

import UIKit
import DITranquillity

class MapRouterImpl: MapRouter {
    
    private weak var viewController: UIViewController?
    private let container: DIContainer!
    
    init(viewController: MapViewController, container: DIContainer) {
        self.viewController = viewController
        self.container = container
    }
}
