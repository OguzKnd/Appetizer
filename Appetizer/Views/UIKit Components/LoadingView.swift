//
//  Loading.swift
//  Appetizer
//
//  Created by Oğuz Kanda on 20.12.2023.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.color = UIColor.brandPrimaryUIColor
        activityIndicatorView.startAnimating()
        return activityIndicatorView
        
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        
    }
        
}

struct LoadingView:View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            ActivityIndicator()
        }
    }
}
