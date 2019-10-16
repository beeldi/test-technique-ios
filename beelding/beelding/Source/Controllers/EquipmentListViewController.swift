//
//  ViewController.swift
//  beelding
//
//  Created by AdrienGreiner on 16/10/2019.
//  Copyright © 2019 Beeldi. All rights reserved.
//

import UIKit

final class EquipmentListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.loadData()
    }
}

fileprivate extension EquipmentListViewController {
    
    func loadData() {
        let dispatchGroup = DispatchGroup()
        
        dispatchGroup.enter()
        EquipmentDataFetcher.fetchEquipments { (dict, error) in
            if let dict = dict {
                print("Equipments: \(dict)")
            }
            dispatchGroup.leave()
        }
        
        dispatchGroup.enter()
        EquipmentDataFetcher.fetchCheckpoints { (dict, error) in
            if let dict = dict {
                print("Checkpoints: \(dict)")
            }
            dispatchGroup.leave()
        }
    }
}

