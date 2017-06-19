//
//  ViewController.swift
//  ViewsDemos
//
//  Created by Doncho Minkov on 6/6/17.
//  Copyright © 2017 Doncho Minkov. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateLabel.text = "Date: \(Date())"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var currentY = 300

    @IBAction func updateDate(_ sender: Any) {
        let width = 50
        let height = 50
        let x = (Int(view.bounds.width) - width) / 2
        let y = (Int(view.bounds.height) - height) / 2
    
        let rect = CGRect(x: x, y: y, width: width, height: height)
        
        currentY += 100
        
        let label = UILabel(frame: rect)
        label.backgroundColor = .yellow
        
        label.text = "Date: \(Date())"
        view.addSubview(label)
        
        dateLabel.text = "Date: \(Date())"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToNext" {
            var nextVC = segue.destination as? NextViewController
            nextVC?.date = Date()
        }
    }
}

