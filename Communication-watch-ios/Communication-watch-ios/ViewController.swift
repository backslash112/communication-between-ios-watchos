//
//  ViewController.swift
//  Communication-watch-ios
//
//  Created by Carl.Yang on 7/8/15.
//  Copyright (c) 2015 Carl.Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var msgLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func changeBackgroundColor() {
        self.view.backgroundColor = UIColor.redColor()
    }
    
    func setLabelContent(content: String) {
        self.msgLabel.text = content
    }

}

