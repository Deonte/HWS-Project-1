//
//  ViewController.swift
//  HWS: Project 1
//
//  Created by Deonte on 6/5/19.
//  Copyright © 2019 Deonte. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var pictures = [String]()
    let cellID = "Picture"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl") {
                // This is a picture to load!
                pictures.append(item)
            }
        }
        
        print(pictures)
    }

}

extension  ViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
}

