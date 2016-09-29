//
//  CSUViewController.swift
//  GPA Calculator
//
//  Created by Milind Pathiyal on 7/27/16.
//  Copyright © 2016 Milind Pathiyal. All rights reserved.
//

import Foundation

import UIKit

class CSUSchool: UIViewController {
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func CalStateChico(sender: AnyObject) {
            if let url = NSURL(string: "http://www.csuchico.edu/") {
                UIApplication.sharedApplication().openURL(url)
            }
    }
    
    @IBAction func CalStateFresno(sender: AnyObject) {
        if let url = NSURL(string: "http://www.fresnostate.edu/") {
            UIApplication.sharedApplication().openURL(url)
        }
    }
    
    @IBAction func CalStateFullerton(sender: AnyObject) {
        if let url = NSURL(string: "http://www.fullerton.edu/") {
            UIApplication.sharedApplication().openURL(url)
        }
    }
    
    @IBAction func CalStateLongBeach(sender: AnyObject) {
        if let url = NSURL(string: "https://www.csulb.edu/") {
            UIApplication.sharedApplication().openURL(url)
        }
    }
    
    
    @IBAction func CalStateLosAngeles(sender: AnyObject) {
        
        if let url = NSURL(string: "http://www.calstatela.edu/") {
            UIApplication.sharedApplication().openURL(url)
        }
    }
    
    @IBAction func CalStateNorthridge(sender: AnyObject) {
        if let url = NSURL(string: "http://www.csun.edu/") {
            UIApplication.sharedApplication().openURL(url)
        }
    }
    
    @IBAction func CalStatePomona(sender: AnyObject) {
        if let url = NSURL(string: "http://www.cpp.edu/") {
            UIApplication.sharedApplication().openURL(url)
        }
    }
    
    @IBAction func CalStateSacramento(sender: AnyObject) {
        if let url = NSURL(string: "http://www.csus.edu/") {
            UIApplication.sharedApplication().openURL(url)
        }
    }
    
    @IBAction func CalStateSanBernardino(sender: AnyObject) {
        if let url = NSURL(string: "https://www.csusb.edu/") {
            UIApplication.sharedApplication().openURL(url)
        }
    }
    
    @IBAction func CalStateSanDiego(sender: AnyObject) {
        if let url = NSURL(string: "https://www.sdsu.edu/") {
            UIApplication.sharedApplication().openURL(url)
        }
    }
    
    @IBAction func CalPolySanLuis(sender: AnyObject) {
        if let url = NSURL(string: "http://www.calpoly.edu/") {
            UIApplication.sharedApplication().openURL(url)
        }
    }
    
    
    @IBAction func CalStateSanMarcos(sender: AnyObject) {
        if let url = NSURL(string: "http://www.csusm.edu/") {
            UIApplication.sharedApplication().openURL(url)
        }
    }
    
    @IBAction func HumboldtState(sender: AnyObject) {
        if let url = NSURL(string: "https://www.humboldt.edu/") {
            UIApplication.sharedApplication().openURL(url)
        }
    }
    
    @IBAction func SanFranciscoState(sender: AnyObject) {
        if let url = NSURL(string: "http://www.sfsu.edu/") {
            UIApplication.sharedApplication().openURL(url)
        }
    }
    
    @IBAction func SonomaState(sender: AnyObject) {
        if let url = NSURL(string: "http://www.sonoma.edu/") {
            UIApplication.sharedApplication().openURL(url)
        }
    }
    
    
    
    
    
    
    
}

