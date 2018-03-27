//
//  MainRouterImpl.swift
//  taxi
//
//  Created Осина П.М. on 27.03.18.
//  Copyright © 2018 owl. All rights reserved.
//

import UIKit
import DITranquillity

class MainRouterImpl: MainRouter {
    
    private weak var viewController: UIViewController?
    private let container: DIContainer!
    
    init(viewController: MainViewController, container: DIContainer) {
        self.viewController = viewController
        self.container = container
    }
    
    func navigateToMapViewController(){
        let mapVC: MapViewController = *container
        let title = UILabel()
        title.text = "Map"
        mapVC.navigationItem.titleView = title
        viewController?.navigationController?.pushViewController(mapVC, animated: true)
    }
}
