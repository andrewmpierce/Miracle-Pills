//
//  ViewController.swift
//  Miracle Pills
//
//  Created by Andrew Pierce on 12/1/16.
//  Copyright © 2016 Andrew Pierce. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var cityText: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var addressText: UITextField!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var fullNameText: UITextField!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var successImage: UIImageView!
    let states = ["Alaska","Arkansas", "Alabama","California","Maine","New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        label1.isHidden = true
        label2.isHidden = true
    }
    @IBAction func buyNowBtn(_ sender: Any) {
        successImage.isHidden = false
        label1.isHidden = true
        label2.isHidden = true
        statePicker.isHidden = true
        statePickerBtn.isHidden = true
        stateLabel.isHidden = true
        cityText.isHidden = true
        cityLabel.isHidden = true
        addressText.isHidden = true
        addressLabel.isHidden = true
        fullNameText.isHidden = true
        fullNameLabel.isHidden = true
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState()) //UIControlState.normal
        statePicker.isHidden = true
        label1.isHidden = false
        label2.isHidden = false

    }
    
}

