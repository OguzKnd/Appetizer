//
//  OrderView.swift
//  Appetizer
//
//  Created by Oğuz Kanda on 19.12.2023.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("Place order")
                    } label: {
                        APButton(title: "\(order.totalPrice, specifier: "%.2f")₺ - Place Order")
                    }
                    .padding(.bottom, 30)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order",
                               message: "You have no items in your order. Please add an appetizer")
                }
            }
                .navigationTitle("🧾 Orders ")
        }   
    }
}

#Preview {
    OrderView()
}
