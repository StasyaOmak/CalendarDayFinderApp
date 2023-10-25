//
//  ViewController.swift
//  CalendarDayFinderApp
//
//  Created by Anastasiya Omak on 23/10/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dayTextFiled: UITextField!
    @IBOutlet weak var monthTextFiled: UITextField!
    @IBOutlet weak var yearTextFiled: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var findButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    func findWeekDay() {
#warning("find day of the year on Find tap")
        
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        
        guard let day = Int(dayTextFiled.text!), let month = Int(monthTextFiled.text!), let year = Int(yearTextFiled.text!)
        else{
            errorMessage(title: "Error", message: "The line cannot be empty. Please enter a value.")
            return
        }
        
        dateComponents.day = day
        dateComponents.month = month
        dateComponents.year = year
        
        guard let date = calendar.date(from: dateComponents) else {
            return
        }
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_EN")
        dateFormatter.dateFormat = "EEEE, MMM d, yyyy"
        
        switch findButton.titleLabel?.text {
        case "Find":
            findButton.setTitle("Clear", for: .normal)
            if day >= 1 && day <= 31 && month >= 1 && month <= 12 {
                let weekday = dateFormatter.string(from: date)
                self.resultLabel.text = weekday.capitalized
            }else{
                clearTextField()
                errorMessage(title: "Wrong Date", message: "Plese enter the correct date!")
            }
        default:
            findButton.setTitle("Find", for: .normal)
            clearTextField()
        }
        
    }
    func clearTextField(){
        dayTextFiled.text = ""
        monthTextFiled.text = ""
        yearTextFiled.text = ""
        resultLabel.text = "Enter a new date and press Result"
    }
    
    
    @IBAction func findButtonTapped(_ sender: Any) {
        findWeekDay()
    }
    
    
    func errorMessage(title: String?, message: String?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    
    
    
    // MARK: - Navigation
    
    //     In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "info" {
            guard let info = segue.destination as? InfoViewController else { return }
            info.info = "Day of the week is: "
            info.desc = resultLabel.text ?? "Unknown"
        }
    }
}
