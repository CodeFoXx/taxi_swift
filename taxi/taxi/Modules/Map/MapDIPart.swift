//
//  MapDIPart.swift
//  taxi
//
//  Created Осина П.М. on 27.03.18.
//  Copyright © 2018 owl. All rights reserved.
//

import Foundation
import DITranquillity

class MapDIPart: DIPart {
    static func load(container: DIContainer) {
        container.register { () -> MapViewController in
            let storyboard = UIStoryboard(name: "Map", bundle: nil)
            return storyboard.instantiateInitialViewController() as! MapViewController
            }
            .as(MapView.self)
            .injection(cycle: true) { $0.presenter = $1 }
            .lifetime(.objectGraph)
        
        container.register(MapPresenterImpl.init)
            .as(MapPresenter.self)
                
        container.register(MapRouterImpl.init)
            .as(MapRouter.self)
    }
}
