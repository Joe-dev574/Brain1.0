//
//  Tag.swift
//  Forenza
//
//  Created by Joseph DeWeese on 2/7/25.
//

import SwiftUI
import SwiftData

@Model
class Tag {
    var name: String = ""
    var color: String = "FF0000"
    var items: [Item]?
    
    init(name: String, color: String) {
        self.name = name
        self.color = color
    }
    
//    var hexColor: Color {
//        Color(hex: self.color) ?? .green
//    }
}


