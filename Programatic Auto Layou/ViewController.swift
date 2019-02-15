//
//  ViewController.swift
//  Programatic Auto Layou
//
//  Created by Robert Graman on 2/15/19.
//  Copyright © 2019 Robert Graman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var submit: UIButton!
    @IBOutlet weak var messages: UITextView!
    @IBOutlet weak var textField: UITextField!
    var clicked:Int = 0

    @IBAction func clicked(_ sender: Any) {
        clicked = clicked + 1
//        let message:String = "Times Clicked:"+String(clicked) + " " + messages.text + textField.text! + "\n"
        messages.text = messages.text + "Times Clicked:"+String(clicked) + " " + textField.text! + "\n"
    }
    
    var textFieldLeading: NSLayoutConstraint?
    var messagesLeading: NSLayoutConstraint?
    var submitLeading: NSLayoutConstraint?
    
    var textFieldTrailing: NSLayoutConstraint?
    var messagesTrailing: NSLayoutConstraint?
    var submitTrailing: NSLayoutConstraint?
    
    var textFieldTop: NSLayoutConstraint?
    var messagesTop: NSLayoutConstraint?
    var submitTop: NSLayoutConstraint?
    
    var messagesBottom: NSLayoutConstraint?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clicked = 0
        messages.translatesAutoresizingMaskIntoConstraints = false
        textField.translatesAutoresizingMaskIntoConstraints = false
        submit.translatesAutoresizingMaskIntoConstraints = false
        
        submitLeading = NSLayoutConstraint(item: textField, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 16.0)
        
        submitTrailing = NSLayoutConstraint(item: textField, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: -87.0)
        
        submitTop = NSLayoutConstraint(item: textField, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 46.0)
        
        
        messagesLeading = NSLayoutConstraint(item: messages, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 16.0)
        
        messagesTrailing = NSLayoutConstraint(item: messages, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: -16.0)
        
        messagesTop = NSLayoutConstraint(item: messages, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 90.0)
        
        messagesBottom = NSLayoutConstraint(item: messages, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: -20.0)
        
        
        textFieldLeading = NSLayoutConstraint(item: submit, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 340.0)
        
        textFieldTrailing = NSLayoutConstraint(item: submit, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: -16.0)
        
        textFieldTop = NSLayoutConstraint(item: submit, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 46.0)
        
        
        textFieldLeading?.isActive = true
        textFieldTrailing?.isActive = true
        textFieldTop?.isActive = true
        
        submitLeading?.isActive = true
        submitTrailing?.isActive = true
        submitTop?.isActive = true
        
        messagesLeading?.isActive = true
        messagesTrailing?.isActive = true
        messagesTop?.isActive = true
        messagesBottom?.isActive = true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

