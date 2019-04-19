//
//  ViewController.swift
//  SImpleJoysticWithSlider
//
//  Created by Noel Valentine on 19/04/2019.
//  Copyright © 2019 Noel Valentine. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet var imgDirection: NSImageView!
    @IBOutlet var imgBall: NSImageView!
    @IBOutlet var sliderY: NSSlider!
    @IBOutlet var sliderX: NSSlider!
    @IBOutlet var lblX: NSTextField!
    @IBOutlet var lblY: NSTextField!
    let ballX : CGFloat = 42.0
    let ballY : CGFloat = 180.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgBall.image = NSImage(named: "ball.png")
        imgDirection.image = NSImage(named: "direction.png")
        sliderY.integerValue = 0
        sliderY.maxValue = 1.0
        sliderY.minValue = -1.0
        sliderX.integerValue = 0
        sliderX.maxValue = 1.0
        sliderX.minValue = -1.0
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    @IBAction func changeSliderX(_ sender: NSSlider) {
        lblX.stringValue = String(sender.integerValue)
        let ptrX = ballX + CGFloat(30 * sender.integerValue)
        imgBall.frame.origin = CGPoint(x: ptrX, y: ballY)
    }
    
    @IBAction func changeSliderY(_ sender: NSSlider) {
        lblY.stringValue = String(sliderY.integerValue)
        let ptrY = ballY + CGFloat(30 * sender.integerValue)
        imgBall.frame.origin = CGPoint(x:ballX , y: ptrY)
    }
    
}

