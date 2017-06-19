//
//  ColorsTableViewController.swift
//  ViewsDemos3
//
//  Created by Doncho Minkov on 6/19/17.
//  Copyright © 2017 Doncho Minkov. All rights reserved.
//

import UIKit

class ColorsTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 256
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //        let cell = UITableViewCell()
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        
        if indexPath.row == 10 {
            cell.backgroundColor = .black
        }
        
//        let red = 1 -  Float(indexPath.row) / 255.0
        
        //        cell.backgroundColor =
        //            UIColor(colorLiteralRed: red, green: 0, blue: 0, alpha: 1)
        cell.textLabel?.text = "Text: \(indexPath.row)"
        
        return cell
    }
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true;
    }
    
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let alert = UIAlertController(
                title: "Deleting row \(indexPath.row)",
                message: "Are you sure you want to delete \(indexPath.row)?",
                preferredStyle: .alert)
            
            let noAction = UIAlertAction(title: "No", style: .cancel, handler: nil)
            let yesAction = UIAlertAction(title: "Yes", style: .default)
            { action in
                print("Deleted")
            }
            
            alert.addAction(noAction)
            alert.addAction(yesAction)
            present(alert, animated: true, completion: nil)
        } else if editingStyle == .insert {
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        let alert = UIAlertController(title: "Row selected",
                                      message: "You have selected \(indexPath.row)",
            preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
