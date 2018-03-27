//
//  MainDIPart.swift
//  taxi
//
//  Created Осина П.М. on 27.03.18.
//  Copyright © 2018 owl. All rights reserved.
//

import Foundation
import DITranquillity

class MainDIPart: DIPart {
    static func load(container: DIContainer) {
        container.register { () -> MainViewController in
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            return storyboard.instantiateInitialViewController() as! MainViewController
            }
            .as(MainView.self)
            .injection(cycle: true) { $0.presenter = $1 }
            .lifetime(.objectGraph)
        
        container.register(MainPresenterImpl.init)
            .as(MainPresenter.self)
                
        container.register(MainRouterImpl.init)
            .as(MainRouter.self)
    }
}
