//
//  ViewController.swift
//  RestaurantTIpCalc
//
//  Created by Parikh Dhruvin S. on 3/28/18.
//  Copyright © 2018 Parikh Dhruvin S. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Bill Amount field
    @IBOutlet weak var billTF: UITextField!
    @IBOutlet weak var slidetipvallbl: UILabel!
    @IBOutlet weak var tipVallbl: UILabel!
    @IBOutlet weak var tipPerlbl: UILabel!
    @IBOutlet weak var tipLbl: UILabel!
    @IBOutlet weak var totalvallbl: UILabel!
    @IBOutlet weak var totalslidevallbl: UILabel!
    @IBOutlet weak var lblTipSlider: UISlider!
    
    //Called when billa amount is edited
    @IBAction func editingchangeBill(_ sender: UITextField) {
        tipVallbl.text = String(0.15 * Float(billTF.text!)!)
        totalvallbl.text = String(0.15 * Float(billTF.text!)! + Float(billTF.text!)!)
        slidetipvallbl.text = String((lblTipSlider.value/100.0) * Float(billTF.text!)!)
        totalslidevallbl.text = String((lblTipSlider.value/100.0) * Float(billTF.text!)! + Float(billTF.text!)!)
        
    }
    @IBAction func billValueChnage(_ sender: Any) {
    }
    @IBAction func tipSlider(_ sender: Any) {
        
    }
    //called when horizontal slider is changed
    @IBAction func tipSlide(_ sender: UISlider) {
        tipLbl.text = String(sender.value)+"%"
        tipPerlbl.text = String(sender.value)+"%"
        
        if(billTF.text != ""){
            
            slidetipvallbl.text = String((sender.value/100.0) * Float(billTF.text!)!)
            totalslidevallbl.text = String((sender.value/100.0) * Float(billTF.text!)! + Float(billTF.text!)!)
            tipVallbl.text = String(0.15 * Float(billTF.text!)!)
            totalvallbl.text = String(0.15 * Float(billTF.text!)! + Float(billTF.text!)!)
        }
        
    }
    //called during init of app
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
            tipVallbl.text = String(0.00)
            totalvallbl.text = String(0.00)
        tipPerlbl.text = String(lblTipSlider.value)+"%"
        tipLbl.text = String(lblTipSlider.value)+"%"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

