//
//  GoogleMapDIPart.swift
//  taxi
//
//  Created owl on 02.04.18.
//  Copyright © 2018 owl. All rights reserved.
//

import Foundation
import DITranquillity

class GoogleMapDIPart: DIPart {
    static func load(container: DIContainer) {
        container.register { () -> GoogleMapViewController in
            let storyboard = UIStoryboard(name: "GoogleMap", bundle: nil)
            return storyboard.instantiateInitialViewController() as! GoogleMapViewController
            }
            .as(GoogleMapView.self)
            .injection(cycle: true) { $0.presenter = $1 }
            .lifetime(.objectGraph)
        
        container.register(GoogleMapPresenterImpl.init)
            .as(GoogleMapPresenter.self)
                
        container.register(GoogleMapRouterImpl.init)
            .as(GoogleMapRouter.self)
    }
}
