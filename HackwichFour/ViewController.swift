//
//  ViewController.swift
//  HackwichFour
//
//  Created by K Keliiholokai on 2/28/19.
//  Copyright © 2019 Ari Keliiholokai. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    @IBOutlet weak var tableView: UITableView!
    
    var myFriends = ["Haley","Kasen","K'lyn","Annalyn","Jamilynn","John","Charles","And","last","but","not","least,","Unknown!"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFriends.count
        func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
        let text = myFriends[indexPath.row]
        cell.textLabel?.text = text
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

