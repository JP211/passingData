//
//  ViewController.swift
//  passingData
//
//  Created by Jessica Peters on 9/28/18.
//  Copyright © 2018 Jessica Peters. All rights reserved.
//

import UIKit



class ViewController: UIViewController, CanReceive {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func sendButtonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "sendDataForwards", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataForwards" {
            
            let secondVC = segue.destination as! SecondViewController
            
            secondVC.data = textField.text!
            
            secondVC.delegate = self
        }
    }
    
    func dataReceived(data: String) {
        label.text = data
    }
    
}

