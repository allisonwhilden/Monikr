//
//  LifeItem.swift
//  Renamer
//
//  Created by Allison Gallant on 9/4/16.
//  Copyright © 2016 Allison Whilden. All rights reserved.
//

import UIKit

class LifeItem: NSObject {
    let itemName: String
    let itemDescription: String
    let required:String
    var completed: Bool
    var highlighted: Bool
    var deleted: Bool
    
    init(itemName: String, itemDescription: String, required: String = "", completed: Bool = false, highlighted: Bool = false, deleted: Bool = false) {
        self.itemName = itemName
        self.itemDescription = itemDescription
        self.required = required
        self.completed = completed
        self.highlighted = highlighted
        self.deleted = deleted
    }
}
