//
//  XDissmissButton.swift
//  Appetizer
//
//  Created by Oğuz Kanda on 21.12.2023.
//

import SwiftUI

struct XDissmissButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
                .opacity(0.6)
            Image(systemName: "xmark")
                .imageScale(.small)
                .frame(width: 44, height: 44)
                .foregroundColor(.black)
            
        }
    }
}

#Preview {
    XDissmissButton()
}
