//
//  ViewController.swift
//  HelloWorld4Mac
//
//  Created by Noel Valentine on 22/03/2019.
//  Copyright © 2019 Noel Valentine. All rights reserved.
//
//  Explanation::
//  This Application is Print "Hello! OOO"
//  If you click 'Do' button, the label is Changed.
//  If you click 'Reset' button, the label is Clear.

import Cocoa

class ViewController: NSViewController {

    //This is Outlet Variables
    //txtName : for Get String from the Text Field.
    //lblResult : for Print String
    @IBOutlet var txtName: NSTextField!
    @IBOutlet var lblResult: NSTextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    //This Action Function performs a Reset Function.
    //This Function just change lblResult.stringValue.
    @IBAction func btnReset(_ sender: NSButton) {
        lblResult.stringValue = ""
        //stringValue is the string displayed on the label.
    }
    //This Action Function performs a Change String.
    //This Function Just Change lblResult.stringValue.
    @IBAction func btnDo(_ sender: NSButton) {
        lblResult.stringValue = "Hello! " + txtName.stringValue
        //txtName's stringValue is the string value written to the text field.
    }
}

