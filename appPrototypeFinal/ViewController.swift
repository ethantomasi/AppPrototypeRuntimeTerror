//
//  ViewController.swift
//  appPrototypeFinal
//
//  Created by Ethan Tomasi on 4/12/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // These strings will be the data for the language cell
    let generalSettings: [String] = ["Language", "Subscription", "Notifications", "Dark Mode"]
    
    let cellReuseIdentifier = "cell"
    
    @IBOutlet var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // Number of row in table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.generalSettings.count
    }
    
    // Create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: settingsCellView = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! settingsCellView
        cell.myCellLabel.text = self.generalSettings[indexPath.row]
        
        return cell
    }

    // Method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapepd cell number \(indexPath.row)")
    }
    
    @IBAction func settings(tab: UIStoryboardSegue) {
        
    }
    
    
    
    
    
     
}

