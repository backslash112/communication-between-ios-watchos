//
//  InterfaceController.swift
//  Communication-watch-ios WatchKit Extension
//
//  Created by Carl.Yang on 7/8/15.
//  Copyright (c) 2015 Carl.Yang. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet weak var label1: WKInterfaceLabel!
    @IBOutlet weak var label2: WKInterfaceLabel!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func sendMsgButtonClicked() {
        var userInfo = ["msg": "Hi~ from watch"]
        WKInterfaceController.openParentApplication(userInfo, reply: { (values:[NSObject : AnyObject]!, error: NSError!) -> Void in
            if let returnValues = (values as? Dictionary<String, String>) {
                let msg1 = returnValues["retVal1"]
                let msg2 = returnValues["retVal2"]
                self.label1.setText(msg1)
                self.label2.setText(msg2)
            }
        })
        
    }
    
}
