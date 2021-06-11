//
//  ViewControllerB.swift
//  ex00
//
//  Created by Jochum Wilen on 6/8/21.
//  Copyright © 2021 Jochum Wilen. All rights reserved.
//

import UIKit

class ViewControllerB: UIViewController {

  
    
    @IBOutlet weak var rip_description: UITextView!
    @IBOutlet weak var rip_name: UITextField!
    @IBOutlet weak var rip_calender: UIDatePicker!
    
    
    @IBAction func doneBtn(_ sender: Any) {
        if let name = rip_name.text {
            print("Name: \(name)")
        }
        if let description = rip_description.text {
            print("Description: \(description)")
        }
        let date = DateFormatter()
        date.dateFormat = "dd MMMM yyyy"
        let formatDate = date.string(from: rip_calender.date)
        print("Date: \(formatDate)")
      
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        rip_calender.minimumDate = Date()
        rip_name.placeholder = "name"
        rip_description.text = nil
        rip_description.layer.borderWidth = 1
        rip_description.layer.borderColor = UIColor.black.cgColor
    }
    
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let format = DateFormatter()
        format.dateFormat = "dd MMMM yyyy HH:mm:ss"
        let date = format.string(from:rip_calender.date)
        if rip_name.text?.isEmpty == false
              {
        Data.death.append((rip_name.text!, rip_description.text!, date))
//         Get the new view controller using segue.destination.
//         Pass the selected object to the new view controller.
        }
    }
 

}
