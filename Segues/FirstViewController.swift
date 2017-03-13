//
//  FirstViewController.swift
//  Segues
//
//  Created by LT Carbonell on 3/12/17.
//  Copyright © 2017 LT Carbonell. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var colorText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
        if segue.identifier == "first2sec" {
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
