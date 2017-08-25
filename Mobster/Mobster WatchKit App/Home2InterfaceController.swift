//
//  HomeInterfaceController.swift
//  Mobster
//
//  Created by HARRISON, DARIUS [AG/1000] on 8/25/17.
//  Copyright © 2017 HARRISON, DARIUS [AG/1000]. All rights reserved.
//

import UIKit
import WatchKit

class Home2InterfaceController: WKInterfaceController, WKCrownDelegate {
    @IBOutlet var timer: WKInterfaceTimer!
    @IBOutlet var people: WKInterfaceLabel!
    var ourNumber: Double = 0.0
    
    @IBAction func editPeople() {
        
    }
    
    @IBAction func startTimer() {
        
        
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        print("hey again")
        crownSequencer.delegate = self
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        crownSequencer.focus()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func crownDidRotate(_ crownSequencer: WKCrownSequencer?, rotationalDelta: Double) {
        var crownAccumulator : Double = 0
        crownAccumulator += rotationalDelta
        
        if crownAccumulator > 0.1 {
            ourNumber += 1
            crownAccumulator = 0.0
        } else if (crownAccumulator < -0.1 && ourNumber > 0) {
            ourNumber -= 1
            crownAccumulator = 0.0
        }
        
        
        timer.setDate(NSDate(timeIntervalSinceNow: ourNumber*60 ) as Date)
        print("hey \(ourNumber) ")
    }
}
