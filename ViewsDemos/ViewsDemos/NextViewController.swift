//
//  NextViewController.swift
//  ViewsDemos
//
//  Created by Doncho Minkov on 6/6/17.
//  Copyright © 2017 Doncho Minkov. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    var date: Date?

    @IBOutlet weak var dateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateLabel.text = "Date: \(date!)"
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
