//
//  ViewController.swift
//  DatePicker4Mac
//
//  Created by Noel Valentine on 05/04/2019.
//  Copyright © 2019 Noel Valentine. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet var lblResult: NSTextField!
    @IBOutlet var lblCurTime: NSTextField!
    @IBOutlet var lblSelTime: NSTextField!
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0
    var strAlarm:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func changeDatePicker(_ sender: NSDatePicker) {
        let datePickerView = sender
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm aaa"
        let selTime = formatter.string(from: datePickerView.dateValue)
        lblSelTime.stringValue = "Selected Time : " + selTime
        strAlarm = selTime
    }
    @objc func updateCounter(){
        lblCurTime.stringValue = String(count)
        count += 1
        
    }
    
    @objc func updateTime()
    {
        let date = NSDate()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm aaa"
        let curTime = formatter.string(from: date as Date)
        lblCurTime.stringValue = "Current Time : " + curTime
        if let _strAlarm = strAlarm {
            if curTime == _strAlarm {
                lblResult.stringValue = "Alarm!!"
            }
            else{
                lblResult.stringValue = ""
            }
        }
        
    }
}

