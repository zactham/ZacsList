//
//  ViewController.swift
//  QuickSell
//
//  Created by Akshay on 4/6/18.
//  Copyright © 2018 UMD. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBAction func NextScreen(_ sender: UIButton) {
        performSegue(withIdentifier: "NextScreen", sender: nil)
    }

    
    //MARK: Properties
    
    @IBOutlet weak var FirstName: UITextField!
    @IBOutlet weak var EnterName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FirstName.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        EnterName.text = textField.text
    }
    //MARK: Actions
    
}

