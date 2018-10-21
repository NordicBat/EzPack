//
//  FormViewController.swift
//  EzPack
//
//  Created by Sabrina Tardio on 18/10/2018.
//  Copyright © 2018 BathroomTeam. All rights reserved.
//

import UIKit


class FormViewController: UITableViewController {
    
    var journey: Journey?
    var delegate: FinalListViewControllerDelegate?
    
    @IBOutlet weak var destinationTextField: UITextField!
    @IBOutlet weak var departureTextField: UITextField!
    @IBOutlet weak var returnTextField: UITextField!
    @IBOutlet weak var luggageTextField: UITextField!
    @IBOutlet weak var nLadiesTextField: UITextField!
    @IBOutlet weak var nManTextField: UITextField!
    @IBOutlet weak var continueButton: UIButton!
    var guestSwitchValue: Bool = false
    var leisureSwitchValue: Bool = false
    var businessSwitchValue: Bool = false
    
    private var departureDatePicker: UIDatePicker?
    private var returnDatePicker: UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        continueButton.layer.cornerRadius = 10
        continueButton.layer.borderWidth = 0
       
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(viewTapped(gestureRecognizer:)))
        departureDatePicker = UIDatePicker()
        departureDatePicker?.datePickerMode = .date
        departureDatePicker?.addTarget(self, action: #selector(FormViewController.dateChanged1(datePicker:)), for: .valueChanged)
        view.addGestureRecognizer(tapGesture)
        departureTextField.inputView = departureDatePicker

        returnDatePicker = UIDatePicker()
        returnDatePicker?.datePickerMode = .date
        returnDatePicker?.addTarget(self, action: #selector(FormViewController.dateChanged2(datePicker:)), for: .valueChanged)
        view.addGestureRecognizer(tapGesture)
        returnTextField.inputView = returnDatePicker
        view.endEditing(true)
        
        luggageTextField?.keyboardType = .numberPad
        nLadiesTextField?.keyboardType = .decimalPad
        nManTextField?.keyboardType = .decimalPad
    }
    

    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer) {
        view.endEditing(true)
    }

    @objc func dateChanged1(datePicker: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyy"
        departureTextField.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true)
    }
    
    @objc func dateChanged2(datePicker: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyy"
        returnTextField.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true)
    }



    @IBAction func cancelToMainTableViewController() {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func guestSwitch(_ sender: UISwitch) {
        if sender.isOn == true {
            guestSwitchValue = true
        }
    }
    
    @IBAction func leisureSwitch(_ sender: UISwitch) {
        if sender.isOn == true {
            leisureSwitchValue = true
        }
    }
    
    @IBAction func businessSwitch(_ sender: UISwitch) {
        if sender.isOn == true {
            businessSwitchValue = true
        } else {
            businessSwitchValue = false
        }
    }
    
    
    @IBAction func continueButtonPressed(_ sender: Any) {
        self.createNewJourney()
        if journey!.daysBetweenDates() < 1 {
            self.showAlertMessage(title: "Hint", message: "Invalid return date")
        }
        if let _ = journey {
            self.performSegue(withIdentifier: "showActivitiesScreen", sender: self)
        } else {
            self.showAlertMessage(title: "Hint", message: "Please check the provided data")
        }
    }
    
    
    
    private func showAlertMessage(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showActivitiesScreen" {
            if let destVC = segue.destination as? ActivitiesViewController {
                destVC.delegate = self.delegate
                destVC.journey = self.journey
            }
        }
        
    }
    
    func createNewJourney() {
        if let destination = destinationTextField.text, !destination.isEmpty,
            let departureDate = departureDatePicker,
            let returnDate = returnDatePicker {
            journey = Journey(destination: destination, departureDate: departureDate.date, returnDate: returnDate.date)
            print("\(journey!.destination) \(journey!.departureDate) + \(journey!.returnDate)")
            print ("\(String(describing: journey?.daysBetweenDates()))")
            if let weight = luggageTextField.text, !weight.isEmpty {
                journey!.luggageWeight = Double(weight)
            }
            if let nLadies = nLadiesTextField.text, !nLadies.isEmpty {
                journey!.numberOfLadies = Int(nLadies)
            }
            if let nMen = nManTextField.text, !nMen.isEmpty {
                journey!.numberOfMen = Int(nMen)
            }
            journey!.guest = guestSwitchValue
            journey!.leisure = leisureSwitchValue
            journey!.business = businessSwitchValue
            
        }
        
    }
    
    

    
}
