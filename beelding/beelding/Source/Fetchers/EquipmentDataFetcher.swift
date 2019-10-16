//
//  EquipmentDataFetcher.swift
//  beelding
//
//  Created by AdrienGreiner on 16/10/2019.
//  Copyright © 2019 Beeldi. All rights reserved.
//

import Foundation
import Firebase

final class EquipmentDataFetcher {
    
    typealias FetcherHandler = ((NSDictionary?, Error?) -> Void)
    
    enum DatebaseRefPath: String {
        case equipment = "Equipments"
        case checkpoints = "Checkpoints"
        
        var reference: DatabaseReference {
            Database.database().reference(withPath: self.rawValue)
        }
    }
    
    class func fetchEquipments(completionHandler: @escaping FetcherHandler) {
        return self.fetch(path: .equipment, completionHandler: completionHandler)
    }
    
    class func fetchCheckpoints(completionHandler: @escaping FetcherHandler) {
        return self.fetch(path: .checkpoints, completionHandler: completionHandler)
    }
}

fileprivate extension EquipmentDataFetcher {
    
    class func fetch(path: DatebaseRefPath, completionHandler: @escaping FetcherHandler) {
        let ref = path.reference
        ref.keepSynced(true)
        ref.observe(.value, with: { (snapshot) in
            guard let dict = snapshot.value as? NSDictionary else {
                completionHandler(nil, nil)
                return
            }
            completionHandler(dict, nil)
        }, withCancel: { error in
            completionHandler(nil, error)
        })
    }
}
