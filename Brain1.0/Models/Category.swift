//
//  Category.swift
//  Forenza
//
//  Created by Joseph DeWeese on 2/7/25.
//

import SwiftUI

enum Category: String, CaseIterable {
    case today  = "Today"
    case upcoming = "Upcoming"
    case ideas  = "Ideas"
    case complete = "Complete"
    case dates = "Dates!"
    
    var color: Color {
        switch self {
        case .today: .blue
        case .upcoming: .orange
        case .complete: .green
       case .dates: Color.primary
        case .ideas: .yellow
        }
    }
    
    var symbolImage: String {
        switch self {
        case .today: "alarm"
        case .upcoming: "calendar"
        case .complete: "tray.full"
        case .dates: "repeat"
        case .ideas: "lightbulb.max"
        }
    }
}

