//
//  Update.swift
//  Forenza
//
//  Created by Joseph DeWeese on 2/7/25.
//

import Foundation
import SwiftData

@Model
class Update {
    var dateUpdated: Date = Date.now
    var text: String = ""
    var page: String? = ""
    
    init(text: String, page: String? = nil) {
        self.text = text
        self.page = page
    }
    
    var item: Item?
}


