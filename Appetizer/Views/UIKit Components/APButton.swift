//
//  APButton.swift
//  Appetizer
//
//  Created by Oğuz Kanda on 21.12.2023.
//

import SwiftUI

struct APButton: View {
    
    let title:LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(Color(.brandPrimary))
            .cornerRadius(30)    }
}

#Preview {
    APButton(title: "Test title")
}
