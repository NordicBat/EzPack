//
//  TestTableViewController.swift
//  EzPack
//
//  Created by Sabrina Tardio on 15/10/2018.
//  Copyright © 2018 BathroomTeam. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController, FinalListViewControllerDelegate {
    
    var dateFormatter = DateFormatter()
    var convertedDate: String!

  
    
    func dismissVC() {
        self.dismiss(animated: true) {
            //
        }
    }
    
    
    var journeys = DataManager.mockData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return journeys.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "JourneyCell", for: indexPath)
        
        let journey = journeys[indexPath.row]
        cell.textLabel?.text = journey.destination
        dateFormatter.dateFormat = "dd/MM/yyyy"
        convertedDate = dateFormatter.string(from: journey.departureDate)
        cell.detailTextLabel?.text = convertedDate
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    
    
    func saveData(journey: Journey) {
        journeys.append(journey)
        self.tableView.reloadData()
        
        self.dismiss(animated: true) {
            //
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showFormController" {
            if let destVC = segue.destination as? UINavigationController {
                if let finalVC = destVC.viewControllers.first as? FormViewController {
                    finalVC.delegate = self
                }
            }
        }
    }

}


