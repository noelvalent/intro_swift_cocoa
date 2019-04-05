//
//  ViewController.swift
//  macOs_imgView
//
//  Created by Noel Valentine on 22/03/2019.
//  Copyright © 2019 Noel Valentine. All rights reserved.
//
import Cocoa
import Foundation


class ViewController: NSViewController {    
    @IBOutlet var btnResize: NSButton!
    @IBOutlet var imgView: NSImageView!
    var isZoom = false
    var imgOn: NSImage?
    var imgOff: NSImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgOn = NSImage(named: "lamp_on.png")
        imgOff = NSImage(named: "lamp_off.png")
        imgView.image = imgOn
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func btnResizeImage(_ sender: NSButton) {
        let scale : CGFloat = 2.0
        var newWidth:CGFloat, newHeight:CGFloat
        
        if (isZoom){
            newWidth = imgView.frame.width/scale
            newHeight = imgView.frame.height/scale
            imgView.frame.size = CGSize(width: newWidth, height: newHeight)
            btnResize.title = "Zoom-in"
        } else {
            newWidth = imgView.frame.width*scale
            newHeight = imgView.frame.height*scale
            imgView.frame.size = CGSize(width: newWidth, height: newHeight)
            btnResize.title = "Zoom-out"
            
        }
        isZoom = !isZoom
    }
    @IBAction func changeOnoff(_ sender: NSButton) {
        if sender.state == NSControl.StateValue.on {
            imgView.image = imgOn
        } else {
            imgView.image = imgOff
        }
    }
    
}

