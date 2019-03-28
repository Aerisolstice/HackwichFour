//
//  detailViewController.swift
//  HackwichFour
//
//  Created by K Keliiholokai on 3/28/19.
//  Copyright © 2019 Ari Keliiholokai. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    var imagePass: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let imageName = imagePass {
            imageView.image = UIImage (named: imageName)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
