//
//  SecondViewController.swift
//  Segues
//
//  Created by LT Carbonell on 3/12/17.
//  Copyright © 2017 LT Carbonell. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var color: UIColor = UIColor.blue
    @IBOutlet weak var colorText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.black
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "sec2first" {
            if colorText.text == "black" {
                segue.destination.view.backgroundColor = UIColor.black
            } else if colorText.text == "blue" {
                segue.destination.view.backgroundColor = UIColor.blue
            } else if colorText.text == "red" {
                segue.destination.view.backgroundColor = UIColor.red
            } else if colorText.text == "green" {
                segue.destination.view.backgroundColor = UIColor.green
            } else {
                segue.destination.view.backgroundColor = UIColor.black
            }
        }
    }
    

}
