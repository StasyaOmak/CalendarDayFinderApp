//
//  AppearenceViewController.swift
//  CalendarDayFinderApp
//
//  Created by Anastasiya Omak on 23/10/2023.
//

import UIKit

class AppearenceViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var settingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabelText()
    }
    
    
    @IBAction func closeItemTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
#warning("Open iOS simulator setting app, UIApplication")
    
    @IBAction func openSettings(_ sender: Any) {
        UIApplication.shared.open(URL(string: "App-prefs:Bluetooth")!)
    }
    
#warning("Light Mode is On to Dark Mode is On")
    
    func setLabelText() {
        textLabel.text = self.traitCollection.userInterfaceStyle == .dark ? "Dark mode is on" : "Light mode is on"
        }
    }


extension AppearenceViewController {
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        setLabelText()
    }
}
