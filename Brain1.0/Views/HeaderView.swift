//
//  HeaderView.swift
//  Brain1.0
//
//  Created by Joseph DeWeese on 2/8/25.
//

import SwiftUI

struct HeaderView: View {
    @State private var showAddItemSheet: Bool = false
    
    
    var body: some View {
        HStack{
            EditButton()
            Spacer( )
            ZStack{
                Image(systemName: "memorychip")
                    .resizable()
                    .frame(width: 45, height: 45)
                    .foregroundColor(.blue).opacity(0.3)
                HStack {
                    Text("Mind")
                        .font(.callout)
                        .fontDesign(.serif)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .offset(x: 13, y: 1)
                    Text("Map")
                        .font(.callout)
                        .fontDesign(.serif)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                        .offset(x: 5, y: 1)
                    
                    Text("1.0")
                        .font(.caption)
                        .fontDesign(.serif)
                        .fontWeight(.regular)
                        .padding(.leading, 10)
                        .foregroundColor(.blue)
                        .offset(x: -15, y: -5)
                }
            }
            Spacer( )
            Button{
                showAddItemSheet = true
                HapticManager.notification(type: .success)
            } label: {
                Image(systemName: "plus")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 35, height: 35)
                    .background(.blue.gradient, in: .circle)
                    .contentShape(.circle)
            }
        }.padding(.horizontal)
                .sheet(isPresented: $showAddItemSheet) {
                    AddItemView()
                        .presentationDetents([.medium])
                }
                .blur(radius: showAddItemSheet ? 8 : 0)///background blurs when add item
        }
    }

#Preview {
    HeaderView()
}
