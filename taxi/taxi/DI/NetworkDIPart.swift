//
//  NetworkDIPart.swift
//  taxi
//
//  Created by Осина П.М. on 27.03.18.
//  Copyright © 2018 owl. All rights reserved.
//

import Foundation
import DITranquillity


class NetworkDIPart: DIPart {
    
    static func load(container: DIContainer){
        container.register{}
        .lifetime(.single)
    }
}
