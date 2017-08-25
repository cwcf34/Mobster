//
//  StartInterfaceController.swift
//  Mobster
//
//  Created by HARRISON, DARIUS [AG/1000] on 8/25/17.
//  Copyright © 2017 HARRISON, DARIUS [AG/1000]. All rights reserved.
//

import UIKit
import WatchKit


class StartInterfaceController: WKInterfaceController {
    
    @IBOutlet var person: WKInterfaceLabel!
    @IBOutlet var timer: WKInterfaceTimer!
    
    @IBAction func cancel() {
    }
    @IBAction func pause() {

    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
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
}
