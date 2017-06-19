//
//  ViewController.swift
//  ViewsDemos2
//
//  Created by Doncho Minkov on 6/15/17.
//  Copyright © 2017 Doncho Minkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var updateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeLabel.text = "Showing the date"
        
        updateButton.setTitleColor(UIColor.white, for: UIControlState.normal)
        updateButton.setTitleColor(UIColor.black, for: UIControlState.highlighted)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func getRandonColor() -> UIColor{
        let red = Float(arc4random() % 256) / 255.0;
        let green = Float(arc4random() % 256) / 255.0;
        let blue = Float(arc4random() % 256) / 255.0;
        
        return UIColor(colorLiteralRed: red,
                       green: green,
                       blue: blue,
                       alpha: 1)
    }
    
    func getInvertedColor(color: UIColor) -> UIColor {
        // UIColor -> views
        // CGColor -> graphics
        let cgColor = color.cgColor
        print(cgColor)
        let red = 1 - (cgColor.components?[0])!
        let blue = 1 - (cgColor.components?[1])!
        let green = 1 - (cgColor.components?[2])!
    
        return UIColor(colorLiteralRed: Float(red),
                       green: Float(green),
                       blue: Float(blue),
                       alpha: 1)
    }
    
    
    // rgb(0, 0, 0) -> 255, 255, 255
    // r, g, b -> 255 - r, 255 - g, 255 - b
    // 0, 0, 0 -> white
    // 1, 1, 1 -> dark white
    // 128, 128, 128 -> gray
    
    // 0, 0, 255 -> 255, 255, 0
    

    @IBAction func updateTime(_ sender: Any) {
        timeLabel.text = "\(Date())"
        
        timeLabel.textColor = getRandonColor()
//        timeLabel.backgroundColor = getRandonColor()
        view.backgroundColor = getRandonColor()
        timeLabel.textColor = getInvertedColor(color: view.backgroundColor!)
        updateButton.titleLabel?.textColor = getInvertedColor(color: view.backgroundColor!)
    }
}

