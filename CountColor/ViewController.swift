//
//  ViewController.swift
//  CountColor
//
//  Created by Ken Tominaga on 6/5/16.
//  Copyright © 2016 ken0nek. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    private var number = 0
    @IBOutlet weak private var numberLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction private func plus() {
        number += 1
        handleNumber()
    }

    @IBAction private func minus() {
        number -= 1
        handleNumber()
    }

    @IBAction private func times() {
        number *= 2
        handleNumber()
    }

    @IBAction private func divide() {
        number /= 2
        handleNumber()
    }

    @IBAction private func clear() {
        number = 0
        handleNumber()
    }

    private func handleNumber() {
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

