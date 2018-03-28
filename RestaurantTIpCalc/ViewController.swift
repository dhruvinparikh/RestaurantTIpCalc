//
//  ViewController.swift
//  RestaurantTIpCalc
//
//  Created by Parikh Dhruvin S. on 3/28/18.
//  Copyright © 2018 Parikh Dhruvin S. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLbl: UILabel!
    @IBAction func tipSlider(_ sender: Any) {
        
    }
    
    @IBAction func tipSlide(_ sender: UISlider) {
        tipLbl.text = String(sender.value)+"%"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

