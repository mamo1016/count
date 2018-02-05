//
//  ViewController.swift
//  count
//
//  Created by 上田　護 on 2018/02/05.
//  Copyright © 2018年 上田　護. All rights reserved.
//test

import UIKit

class ViewController: UIViewController {
    @IBOutlet var label: UILabel!
    var number: Double = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func plus(){
        number = number + 1
        label.text = String(number)
//        color()
        backGround()
    
    }
    @IBAction func minus(){
        number = number - 1
        label.text = String(number)
//        color()
        backGround()
    }

    func color(){
        if number <= -10 {
            label.textColor = UIColor.red
        }else if number >= 10{
            label.textColor = UIColor.blue
        }
    }
    
    func backGround(){
        self.view.backgroundColor = UIColor(red: CGFloat(number*0.1), green: CGFloat(number*0.01), blue: CGFloat(number*0.001), alpha: 1.0)
    }
}

