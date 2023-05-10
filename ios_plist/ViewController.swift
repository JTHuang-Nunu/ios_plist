//
//  ViewController.swift
//  ios_plist
//
//  Created by Mac15 on 2023/5/10.
//

import UIKit

class ViewController: UIViewController {
    var path: String = ""
    @IBAction func chgtoRed(_ sender: UIButton) {
        if let plist = NSMutableDictionary(contentsOfFile: path){
            plist["Color"] = "Red"
            if let color = plist["Color"]{
                if plist.write(toFile: path, atomically: true) {
                    chgLabel.text = "The color is changed to \(color)"
                }
            }
        }
    }
    @IBAction func chgToGreen(_ sender: UIButton) {
        if let plist = NSMutableDictionary(contentsOfFile: path){
            plist["Color"] = "Green"
            if let color = plist["Color"]{
                if plist.write(toFile: path, atomically: true) {
                    chgLabel.text = "The color is changed to \(color)"
                }
            }
        }
    }
    @IBOutlet weak var chgLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        path = NSHomeDirectory() + "/Documents/Property List.plist"
        if let plist = NSMutableDictionary(contentsOfFile: path){
            if let color = plist["Color"] {
                chgLabel.text = "The color is \(color)"
            }
        }
    }


}

