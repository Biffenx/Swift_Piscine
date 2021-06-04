//
//  ViewController.swift
//  Ex 02
//
//  Created by Jochum Wilen on 6/4/21.
//  Copyright © 2021 Jochum Wilen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var calculatingWorkings: UILabel!
    @IBOutlet weak var caluclatingResults: UILabel!
    
    var working:String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
        // Do any additional setup after loading the view.
    }
    
    func clearAll()
    {
        working = ""
        caluclatingResults.text = ""
        calculatingWorkings.text = ""
    }
    
    @IBAction func sumTap(_ sender: Any)
    {
        if(validInput())
        {
            let checkedWorkingForPercent = working.replacingOccurrences(of: "%", with: "*0.01")
            let expression = NSExpression(format: checkedWorkingForPercent)
            let result = expression.expressionValue(with: nil, context: nil) as! Double
            let resultString = formatResult(result: result)
            caluclatingResults.text = resultString
        }
        else
        {
            let alert = UIAlertController(
                title: "Invalid Input",
                message: "Calculator unable to do math based on input",
                preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .default))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func validInput() -> Bool
    {
        var count = 0
        var funcCharIndex = [Int]()
        
        for char in working
        {
            if(specialCharachter(char: char))
            {
                funcCharIndex.append(count)
            }
            count += 1;
        }
        var previous: Int = -1
        
        for index in funcCharIndex
        {
            if(index == 0)
            {
                return false
            }
            if(index == working.count - 1)
            {
                return false
            }
            if(previous != 1)
            {
                if(index - previous == 1)
                {
                    return false
                }
            }
            previous = index
        }
        return true
    }

    func specialCharachter(char: Character) -> Bool
    {
        if(char == "*")
        {
            return true
        }
        if(char == "/")
        {
            return true
        }
        if(char == "+")
        {
            return true
        }
        return false
    }
    
    func formatResult(result: Double) -> String
    {
        if(result.truncatingRemainder(dividingBy: 1) == 0)
        {
            return String(format: "%.0f", result)
        }
        else
        {
            return String(format: "%.2f", result)
        }
    }

    @IBAction func allClearTap(_ sender: Any)
    {
        clearAll()
    }
    @IBAction func backTap(_ sender: Any)
    {
        if(!working.isEmpty)
        {
            working.removeLast()
            calculatingWorkings.text = working
        }
        
    }
    func addToWorking(value: String)
    {
        working = working + value
        calculatingWorkings.text = working
    }
    @IBAction func negTap(_ sender: Any) {
    }
    @IBAction func percentTap(_ sender: Any)
    {
        addToWorking(value: "%")
    }
    @IBAction func divideTap(_ sender: Any)
    {
        addToWorking(value: "/")
    }
    @IBAction func multipleTap(_ sender: Any)
    {
        addToWorking(value: "*")
    }
    @IBAction func minusTap(_ sender: Any)
    {
        addToWorking(value: "-")
    }
    @IBAction func plusTap(_ sender: Any)
    {
        addToWorking(value: "+")
    }
    @IBAction func decimalTap(_ sender: Any)
    {
        addToWorking(value: ".")
    }
    @IBAction func zeroTap(_ sender: Any)
    {
        addToWorking(value: "0")
    }
    @IBAction func oneTap(_ sender: Any)
    {
        addToWorking(value: "1")
    }
    @IBAction func twoTap(_ sender: Any)
    {
        addToWorking(value: "2")
    }
    @IBAction func threeTap(_ sender: Any)
    {
        addToWorking(value: "3")
    }
    @IBAction func fourTap(_ sender: Any)
    {
        addToWorking(value: "4")
    }
    @IBAction func fiveTap(_ sender: Any)
    {
        addToWorking(value: "5")
    }
    @IBAction func sixTap(_ sender: Any)
    {
        addToWorking(value: "6")
    }
    @IBAction func sevenTap(_ sender: Any)
    {
        addToWorking(value: "7")
    }
    @IBAction func eightTap(_ sender: Any)
    {
        addToWorking(value: "8")
    }
    @IBAction func nineTap(_ sender: Any)
    {
        addToWorking(value: "9")
    }
    
}

