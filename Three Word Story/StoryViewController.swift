//
//  StoryViewController.swift
//  Three Word Story
//
//  Created by George Ashton on 30/08/2015.
//  Copyright © 2015 WolfTechApps. All rights reserved.
//

import UIKit
import GameKit

class StoryViewController: UIViewController, UITextFieldDelegate, EasyGameCenterDelegate {
    
    @IBOutlet weak var storyText: UITextView!                     // The story
    @IBOutlet weak var inputText: UITextField!                    // Where the user types
    @IBOutlet weak var characterCount: UILabel!                   // Amount of characters
    

    override func viewDidLoad() {
        super.viewDidLoad()
//        inputText.delegate = self
        storyText.text = "Once upon a time"
        
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(inputText: UITextField) -> Bool { // Make keyboard go away
        inputText.resignFirstResponder()
        return true

    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool { // Character Limit
        let newLength = inputText.text!.utf16.count + string.utf16.count - range.length
        //change the value of the label
        characterCount.text =  String(newLength)
        //you can save this value to a global var
        //myCounter = newLength
        //return true to allow the change, if you want to limit the number of characters in the text field use something like
        return newLength <= 25 // To just allow up to 25 characters
        // return true
    }

  
 
    @IBAction func updateCount(sender: UITextField) {
        
    
    }

    @IBAction func sendTurn(sender: UITextField) {

      
    
    }
    
    
    
    @IBAction func backButton(sender: UIButton) {
    }

}
