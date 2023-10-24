//
//  AppearenceViewController.swift
//  CalendarDayFinderApp
//
//  Created by Anastasiya Omak on 23/10/2023.
//

import UIKit

class AppearenceViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabelText()
    }
    
    @IBAction func closeItemTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func openSettings(_ sender: Any) {
        #warning("Open iOS simulator setting app, UIApplication")
    }
    
    func setLabelText() {
        var labelText = "Unable specify UI style"
        textLabel.text = labelText
        #warning("Light Mode is On to Dark Mode is On")
    }
}

extension AppearenceViewController {
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        setLabelText()
    }
}
