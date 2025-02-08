//
//  ContentView.swift
//  Brain1.0
//
//  Created by Joseph DeWeese on 2/8/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
       
            ItemListScreen()
      
        }
    }

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
