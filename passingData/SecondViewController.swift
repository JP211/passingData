//
//  SecondViewController.swift
//  passingData
//
//  Created by Jessica Peters on 9/28/18.
//  Copyright © 2018 Jessica Peters. All rights reserved.
//

import UIKit

protocol CanReceive {
    func dataReceived(data: String)
}

class SecondViewController: UIViewController {
    
    var delegate : CanReceive?

   var data = ""
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = data
    }
    
    @IBAction func sendBackButtonPressed(_ sender: Any) {
        
        delegate?.dataReceived(data: textField.text!)
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
