//
//  InterfaceController.swift
//  HappyTummy Watch Extension
//
//  Created by Piero Junior Gaetani on 09/01/18.
//  Copyright © 2018 Anna Grazia Cervo. All rights reserved.
//

import WatchKit
import Foundation

//*** 1: ok
import WatchConnectivity

class InterfaceController: WKInterfaceController {
    
    let watchSession = WCSession.default
    
    //*** 2 Label that specifies if the app is active: ok
   
    @IBOutlet var isHTActiveLabel: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
      /* if Connection.shared.flag == true
        {
            isHTActiveLabel.setText("true")
        }
        
       if Connection.shared.flag == false
        {
            isHTActiveLabel.setText("false")
        }
        */
        // Configure interface objects here.
        
        //*** 3 observer che verifichi riceva messaggio dall'iphone e quindi esegui "didReceivedPhoneData"
        NotificationCenter.default.addObserver(self, selector: #selector(didReceivedPhoneData), name: NSNotification.Name(rawValue: "receivedPhoneData"), object: nil)
    }
    
    //*** 4 print text: ok
    @objc func didReceivedPhoneData(info: NSNotification){
        
        
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
