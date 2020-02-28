//
//  InterfaceController.swift
//  HelloAppleWatch WatchKitApp WatchKit Extension
//
//  Created by Marcos Felipe Souza on 26/02/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var reloadButton: WKInterfaceButton!
    let emoji = EmojiData()
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        // Configure interface objects here.
    }
    override func willActivate() {
        super.willActivate()
        showFortune()
    }
    
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func newFortune() {
        self.showFortune()
    }    
    
    fileprivate func showFortune() {
        let people = emoji.people[emoji.people.count.random()]
        let nature = emoji.nature[emoji.nature.count.random()]
        let objects = emoji.objects[emoji.objects.count.random()]
        let places = emoji.places[emoji.places.count.random()]
        let symbols = emoji.symbols[emoji.symbols.count.random()]
        
        self.reloadButton.setTitle(people + nature + objects + places + symbols)
    }
}
