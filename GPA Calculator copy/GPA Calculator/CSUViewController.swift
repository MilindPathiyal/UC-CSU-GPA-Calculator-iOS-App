//
//  CSUViewController.swift
//  GPA Calculator
//
//  Created by Milind Pathiyal on 7/27/16.
//  Copyright © 2016 Milind Pathiyal. All rights reserved.
//

import Foundation

import UIKit

class CSUViewController: UIViewController {
    
    
    
    
    
    
    
    @IBOutlet weak var CSUa: UITextField!
    
    @IBOutlet weak var CSUb: UITextField!
    
    @IBOutlet weak var CSUc: UITextField!
    
    @IBOutlet weak var CSUd: UITextField!
    
    @IBOutlet weak var CSUf: UITextField!
    
    @IBOutlet weak var CSUap: UITextField!
    
    @IBOutlet weak var csugpaType: UISegmentedControl!
    
  
    @IBOutlet weak var gpaCSUTotal: UITextField!
    
    
    @IBAction func calculateCSUGPA(sender: AnyObject) {
        
        var bruh = 0
        
        if CSUa.text!.isEmpty || CSUb.text!.isEmpty || CSUc.text!.isEmpty || CSUd.text!.isEmpty || CSUf.text!.isEmpty || CSUap.text!.isEmpty {
            
            let refreshAlert = UIAlertController(title: "Error", message: "You must enter a value for each box.", preferredStyle: UIAlertControllerStyle.Alert)
            
            refreshAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { (action: UIAlertAction!) in
                print("Handle Ok logic here")
            }))
            
            presentViewController(refreshAlert, animated: true, completion: nil)
            
            bruh = 1
        }
        
        if bruh == 0{
        let csuA = Double(CSUa.text!)
        
        let csuB = Double(CSUb.text!)
        
        let csuC = Double(CSUc.text!)
        
        let csuD = Double(CSUd.text!)
        
        let csuF = Double(CSUf.text!)
        
        var csuAP = Double(CSUap.text!)
        
        
        var gpaType = 0.0
        
        switch csugpaType.selectedSegmentIndex {
        case 0:
            gpaType = 1.0
        case 1:
            gpaType = 2.0
        case 2:
            gpaType = 3.0
        default:
            break
        }
        
        if gpaType == 1.0{
            let a = csuA! * 4
            let b = csuB! * 3
            let c = csuC! * 2
            let d = csuD! * 1
            let f = csuF! * 0
            let divide = (csuA! + csuB! + csuC! + csuD! + csuF!)
            let gpaTotal = (a + b + c + d + f) / divide
            gpaCSUTotal.text = String(format: "%.2f", gpaTotal)
        }
            
        else if gpaType == 2.0{
            
            let a = csuA! * 4
            let b = csuB! * 3
            let c = csuC! * 2
            let d = csuD! * 1
            let f = csuF! * 0
            let divide = (csuA! + csuB! + csuC! + csuD! + csuF!)
            let add = (a + b + c + d + f)
            let gpaTotal = (add + csuAP!) / divide
            gpaCSUTotal.text = String(format: "%.2f", gpaTotal)
            
        }
            
        else if gpaType == 3.0{
            
            let a = csuA! * 4
            let b = csuB! * 3
            let c = csuC! * 2
            let d = csuD! * 1
            let f = csuF! * 0
            let divide = (csuA! + csuB! + csuC! + csuD! + csuF!)
            let add = (a + b + c + d + f)
            if csuAP > 8{
                
                csuAP = 8
            }
            let gpaTotal = (add + csuAP!) / divide
            gpaCSUTotal.text = String(format: "%.2f", gpaTotal)
            
        }
        
    }
  }


    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(CSUViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

