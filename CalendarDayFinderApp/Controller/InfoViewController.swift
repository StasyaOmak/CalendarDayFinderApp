//
//  InfoViewController.swift
//  CalendarDayFinderApp
//
//  Created by Anastasiya Omak on 23/10/2023.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet weak var appDescLabel: UILabel!
    @IBOutlet weak var appInfoLabel: UILabel!
    
    
    
    var info: String?
    var desc: String?
    
  
    
#warning("assigned value to labels")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let info = info, let desc = desc {
            appInfoLabel.text = info
            appDescLabel.text = desc
        }
    }
}
