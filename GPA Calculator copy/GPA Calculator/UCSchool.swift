//
//  ViewController.swift
//  GPA Calculator
//
//  Created by Milind Pathiyal on 7/22/16.
//  Copyright © 2016 Milind Pathiyal. All rights reserved.
//

import UIKit

class UCSchool: UIViewController {
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
  
    @IBAction func UCBerkeley(sender: AnyObject) {
            if let url = NSURL(string: "http://www.berkeley.edu/") {
                UIApplication.sharedApplication().openURL(url)
            }
        }
    
  
 
    @IBAction func UCDavis(sender: AnyObject) {
        if let url = NSURL(string: "https://www.ucdavis.edu/") {
            UIApplication.sharedApplication().openURL(url)
        }
    }

    
    @IBAction func UCIrvine(sender: AnyObject) {
        if let url = NSURL(string: "https://uci.edu/") {
            UIApplication.sharedApplication().openURL(url)
        }
    }
    
    @IBAction func UCLosAngeles(sender: AnyObject) {
        if let url = NSURL(string: "http://www.ucla.edu/") {
            UIApplication.sharedApplication().openURL(url)
        }

        
    }
    
    @IBAction func UCMerced(sender: AnyObject) {
        if let url = NSURL(string: "http://www.ucmerced.edu/") {
            UIApplication.sharedApplication().openURL(url)
        }
        
    }

    @IBAction func UCRiverside(sender: AnyObject) {
        if let url = NSURL(string: "http://www.ucr.edu/") {
            UIApplication.sharedApplication().openURL(url)
        }

    }
    @IBAction func UCSanDiego(sender: AnyObject) {
        if let url = NSURL(string: "https://ucsd.edu/") {
            UIApplication.sharedApplication().openURL(url)
        }
    }
    @IBAction func UCSanFrancisco(sender: AnyObject) {
        if let url = NSURL(string: "https://www.ucsf.edu/") {
            UIApplication.sharedApplication().openURL(url)
        }
    }

    @IBAction func UCSantaBarbra(sender: AnyObject) {
        if let url = NSURL(string: "http://www.ucsb.edu/") {
            UIApplication.sharedApplication().openURL(url)
        }

    }
    @IBAction func UCSantaCruz(sender: AnyObject) {
        if let url = NSURL(string: "http://www.ucsc.edu/") {
            UIApplication.sharedApplication().openURL(url)
        }
    }
}

