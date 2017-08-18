//
//  ViewController.swift
//  my-first-app
//
//  Created by macstudent on 15/08/2017.
//  Copyright © 2017 RektPH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var redView: UISlider!
    @IBOutlet weak var bluView: UISlider!
    @IBOutlet weak var greView: UISlider!
    @IBOutlet weak var textInput: UITextField!
    @IBOutlet weak var tglBtn: UISwitch!
    var setBackground = false;
    @IBOutlet weak var current: UILabel!
    var background: UIColor!
    var textcolor: UIColor!
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.setValue(0.0, animated: true)
        bluView.setValue(0.0, animated: true)
        greView.setValue(0.0, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func change(_ sender: AnyObject) {
        if(setBackground) {
            setBackground = false
            current.text = "Text"
            
            desc.textColor = UIColor(red: CGFloat(redView.value),
                                     green: CGFloat(greView.value),
                                     blue: CGFloat(bluView.value),
                                     alpha: 1)
            current.textColor = UIColor(red: CGFloat(redView.value),
                                        green: CGFloat(greView.value),
                                        blue: CGFloat(bluView.value),
                                        alpha: 1)
        } else {
            setBackground = true
            current.text = "Background"
            self.view.backgroundColor = UIColor(red:CGFloat(redView.value), green:CGFloat(greView.value), blue:CGFloat(bluView.value), alpha:1.0)
        }
        
        
        
    }
    
    @IBAction func shwMsg(_ sender: AnyObject) {
        if(textInput.text == "") {
            desc.text = "Sample Text"
        } else {
            desc.text = textInput.text
        }
        desc.textColor = textcolor
    }
    
    @IBAction func reset(_ sender: AnyObject) {
        redView.setValue(0.0, animated: true)
        bluView.setValue(0.0, animated: true)
        greView.setValue(0.0, animated: true)
        textInput.text = ""
        tglBtn.setOn(true, animated: true)
        desc.text = "Sample Text"
        current.text = "Text"
        setBackground = false
        current.textColor = UIColor(red:0.0, green:0.0, blue:0.00, alpha:1.0)
        self.view.backgroundColor = UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.0)
        desc.textColor = UIColor(red:0.0, green:0.0, blue:0.00, alpha:1.0)
    }
    
    @IBAction func redSlider(_ sender: AnyObject) {
        if(setBackground) {
            self.view.backgroundColor = UIColor(red:CGFloat(redView.value), green:CGFloat(greView.value), blue:CGFloat(bluView.value), alpha:1.0)
        } else {
            desc.textColor = UIColor(red: CGFloat(redView.value),
                                     green: CGFloat(greView.value),
                                     blue: CGFloat(bluView.value),
                                     alpha: 1)
            current.textColor = UIColor(red: CGFloat(redView.value),
                                       green: CGFloat(greView.value),
                                       blue: CGFloat(bluView.value),
                                       alpha: 1)
        }
    }
    @IBAction func blueSlider(_ sender: AnyObject) {
        if(setBackground) {
            self.view.backgroundColor = UIColor(red:CGFloat(redView.value), green:CGFloat(greView.value), blue:CGFloat(bluView.value), alpha:1.0)
        } else {
            desc.textColor = UIColor(red: CGFloat(redView.value),
                                     green: CGFloat(greView.value),
                                     blue: CGFloat(bluView.value),
                                     alpha: 1)
            current.textColor = UIColor(red: CGFloat(redView.value),
                                        green: CGFloat(greView.value),
                                        blue: CGFloat(bluView.value),
                                        alpha: 1)
        }
    }
    @IBAction func greSlider(_ sender: AnyObject) {
        if(setBackground) {
            self.view.backgroundColor = UIColor(red:CGFloat(redView.value), green:CGFloat(greView.value), blue:CGFloat(bluView.value), alpha:1.0)
        } else {
            desc.textColor = UIColor(red: CGFloat(redView.value),
                                     green: CGFloat(greView.value),
                                     blue: CGFloat(bluView.value),
                                     alpha: 1)
            current.textColor = UIColor(red: CGFloat(redView.value),
                                        green: CGFloat(greView.value),
                                        blue: CGFloat(bluView.value),
                                        alpha: 1)
        }
    }
}

