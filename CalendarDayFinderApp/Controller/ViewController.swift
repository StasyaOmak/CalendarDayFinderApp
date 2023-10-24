 //
//  ViewController.swift
//  CalendarDayFinderApp
//
//  Created by Anastasiya Omak on 23/10/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dayTextFiled: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
   
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func findWeekDay() {
        #warning("find day of the year on Find tap")
    }
    
    @IBAction func findButtonTapped(_ sender: Any) {
        print(dayTextFiled.text ?? "")
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "info" {
            
            // Get the new view controller using segue.destination.
            
            guard let vc = segue.destination as? InfoViewController else { return }
            // Pass the selected object to the new view controller.
            vc.info 
        }
        
    }
   


}

