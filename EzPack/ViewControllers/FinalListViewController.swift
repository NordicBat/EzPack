//
//  FinalListViewController.swift
//  EzPack
//
//  Created by Sabrina Tardio on 18/10/2018.
//  Copyright © 2018 BathroomTeam. All rights reserved.
//

import UIKit

protocol FinalListViewControllerDelegate {
    func saveData(journey: Journey)
}

class FinalListViewController: UITableViewController {
    
    var delegate: FinalListViewControllerDelegate?
    var journey: Journey?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func save() {
        self.delegate?.saveData(journey: journey!)
    }


}
