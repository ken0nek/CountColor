//
//  ViewController.swift
//  CountColor
//
//  Created by Ken Tominaga on 6/5/16.
//  Copyright © 2016 ken0nek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var number = 0
    @IBOutlet weak var numberLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func plus() {
        number += 1
        handleNumber()
    }

    @IBAction func minus() {
        number -= 1
        handleNumber()
    }

    @IBAction func times() {
        number *= 2
        handleNumber()
    }

    @IBAction func divide() {
        number /= 2
        handleNumber()
    }

    @IBAction func clear() {
        number = 0
        handleNumber()
    }

    func handleNumber() {
        numberLabel.text = "\(number)"

        if number > 0 {
            numberLabel.textColor = UIColor.blueColor()
        } else if number == 0 {
            numberLabel.textColor = UIColor.blackColor()
        } else {
            numberLabel.textColor = UIColor.redColor()
        }
    }
}

