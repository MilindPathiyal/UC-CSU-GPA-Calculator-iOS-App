//
//  ViewController.swift
//  GPA Calculator
//
//  Created by Milind Pathiyal on 7/22/16.
//  Copyright © 2016 Milind Pathiyal. All rights reserved.
//

import UIKit

class UCViewController: UIViewController {
  
    
    @IBOutlet weak var UCa: UITextField!
    @IBOutlet weak var UCb: UITextField!
    @IBOutlet weak var UCc: UITextField!
    @IBOutlet weak var UCd: UITextField!
    @IBOutlet weak var UCf: UITextField!
    @IBOutlet weak var UCap: UITextField!

    @IBOutlet weak var ucgpaType: UISegmentedControl!
    
    
    @IBOutlet weak var gpaUCTotal: UITextField!

    

    
    @IBAction func calculateUCGPA(sender: AnyObject) {
        
        var bruh = 0
        
        if UCa.text!.isEmpty || UCb.text!.isEmpty || UCc.text!.isEmpty || UCd.text!.isEmpty || UCf.text!.isEmpty || UCap.text!.isEmpty {
            
            let refreshAlert = UIAlertController(title: "Error", message: "You must enter a value for each box.", preferredStyle: UIAlertControllerStyle.Alert)
            
            refreshAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { (action: UIAlertAction!) in
                print("Handle Ok logic here")
            }))
            presentViewController(refreshAlert, animated: true, completion: nil)
            
            bruh = 1
            
        }

        if bruh == 0{
        
        let ucA = Double(UCa.text!)
        
        let ucB = Double(UCb.text!)
        
        let ucC = Double(UCc.text!)
        
        let ucD = Double(UCd.text!)
        
        let ucF = Double(UCf.text!)
        
        var ucAP = Double(UCap.text!)
        
        

        
        var gpaType = 0.0
        
        switch ucgpaType.selectedSegmentIndex {
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
            
            
            let a = ucA! * 4
            let b = ucB! * 3
            let c = ucC! * 2
            let d = ucD! * 1
            let f = ucF! * 0
            let divide = (ucA! + ucB! + ucC! + ucD! + ucF!)
            let gpaTotal = (a + b + c + d + f) / divide
            
            gpaUCTotal.text = String(format: "%.2f", gpaTotal)
        }
            
        else if gpaType == 2.0{
            
        
            let a = ucA! * 4
            let b = ucB! * 3
            let c = ucC! * 2
            let d = ucD! * 1
            let f = ucF! * 0
            let divide = (ucA! + ucB! + ucC! + ucD! + ucF!)
            let add = (a + b + c + d + f)
            let gpaTotal = (add + ucAP!) / divide
            gpaUCTotal.text = String(format: "%.2f", gpaTotal)
            
        }
            
        else if gpaType == 3.0{
            
           
            
            let a = ucA! * 4
            let b = ucB! * 3
            let c = ucC! * 2
            let d = ucD! * 1
            let f = ucF! * 0
            let divide = (ucA! + ucB! + ucC! + ucD! + ucF!)
            let add = (a + b + c + d + f)
            if ucAP > 8{
                
                ucAP = 8
            }
            let gpaTotal = (add + ucAP!) / divide
            gpaUCTotal.text = String(format: "%.2f", gpaTotal)
            
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
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UCViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

