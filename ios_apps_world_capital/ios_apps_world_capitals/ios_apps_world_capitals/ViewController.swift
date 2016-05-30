//
//  ViewController.swift
//  ios_apps_world_capitals
//
//  Created by sky on 30.05.16.
//  Copyright © 2016 sky. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {
    @IBOutlet var image1: UIImageView!
    @IBOutlet var image2: UIImageView!

    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var message: UILabel!
    var data = [["USA", "Italy", "China", "England"],["Washington", "Rome", "Beijing", "London"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{///////////////////
    
    return data.count
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
    
        return data[component].count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
    
    return data[component][row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    
        let item1 = data[0][pickerView.selectedRowInComponent(0)]
        let item2 = data[1][pickerView.selectedRowInComponent(1)]
        
        let usa = UIImage(named: "usa.png")
        let italy = UIImage(named: "italy.png")
        let china = UIImage(named: "china.png")
        let england = UIImage(named: "england.png")
        
        let washington = UIImage(named: "washington.jpg")
        let rome = UIImage(named: "rome.jpg")
        let beijing = UIImage(named: "beijing.jpg")
        let london = UIImage(named: "london.jpg")
        
        var correctMess = "The capital of \(item1) is \(item2) ."
        var mess = "Match the flags to the capitals."
        
        switch (item1) {
        case "USA":
            image1.image = usa
            label1.text = "USA"
        case "Italy":
            image1.image = italy
            label1.text = "Italy"
        case "China":
            image1.image = china
            label1.text = "China"
        case "England":
            image1.image = england
            label1.text = "England"
        default:
            image1.image = usa
            label1.text = "USA"
        }
        
        switch (item2) {
        case "Beijing":
            image2.image = beijing
            label2.text = "Beijing"
            
            if (label1.text == "China"){
                message.text = correctMess
            }
            else {
                message.text = mess
            }
        case "London":
            image2.image = london
            label2.text = "London"
            
            if (label1.text == "England") {
                message.text = correctMess
            }
            else {
                message.text = mess
            }
        case "Rome":
            image2.image = rome
            label2.text = "Rome"
            
            if (label1.text == "Italy") {
                message.text = correctMess
            }
            else {
                message.text = mess
            }
        case "Washington":
            image2.image = washington
            label2.text = "Washington"
            
            if (label1.text == "USA") {
                message.text = correctMess
            }
            else {
                message.text = mess
            }
        default:
            image2.image = washington
            label2.text = "Washington "
        }
        
    }
}

