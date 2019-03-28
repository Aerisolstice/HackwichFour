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
    
    var myFriends = ["Kapolei Kalapawai"]
    
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
    
    func tableView ( tableView: UITableView, didSelectRowAt indexPath: IndexPath){
    tableView.deselectRow(at: indexPath as IndexPath, animated: true)
    }
    
    var restaurantImageData = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
       
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        restaurantImageData = dict!.object(forKey: "restaurantImages") as! [String]
    }

    override func prepare (for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "mySegue" {
            let s1 = segue.destination as! detailViewController
            let imageIndex = tableView.indexPathForSelectedRow?.row
            s1.imagePass = restaurantImageData[imageIndex!]
            
        }
    }
}

