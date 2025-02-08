//
//  ItemListScreen.swift
//  Brain1.0
//
//  Created by Joseph DeWeese on 2/8/25.
//

import SwiftUI

struct ItemListScreen: View {
    @State private var activeTab: Category = .today
    @State private var showAddItemSheet: Bool = false
    /// Scroll Properties
    @State private var scrollOffset: CGFloat = 0
    @State private var topInset: CGFloat = 0
    @State private var startTopInset: CGFloat = 0
        var body: some View {
        NavigationStack{
            HeaderView()
            CustomTabBar(activeTab: $activeTab)
            ScrollView{
                VStack(spacing: 0){
                    
                }
            }
          
        }
    }
}

#Preview {
    ItemListScreen()
}
