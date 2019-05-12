//
//  ViewController.swift
//  Trippy
//
//  Created by Jaeson Booker on 5/11/19.
//  Copyright © 2019 Jaeson Booker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var trippyField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addTripSegue" {
            let mainVC = segue.destination as! TableViewController
            if trippyField.text != nil {
                mainVC.trip.append(trippyField.text!)
            }
        }
    }
}

