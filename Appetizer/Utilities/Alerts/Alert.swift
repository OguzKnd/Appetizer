//
//  Alert.swift
//  Appetizer
//
//  Created by Oğuz Kanda on 20.12.2023.
//

import SwiftUI

struct AlertItem:Identifiable {
    
    let id = UUID()
    let title:Text
    let message:Text
    let dismissButton: Alert.Button
    
}

struct AlertContext {
    
    //MARKS - Network Alerts
    
    static let invalidData       = AlertItem(title: Text("Server Error"),
                                              message: Text("The data received from the server was invalid. Please contact support.."),
                                              dismissButton: .default(Text("OK")))
    
    static let invalidResponse  = AlertItem(title: Text("Server Error"),
                                              message: Text("Invalid response from the server. Please contact support.."),
                                              dismissButton: .default(Text("OK")))
    
    static let invalidURL       = AlertItem(title: Text("Server Error"),
                                              message: Text("There was an issue connecting to the server. If this persist, please contact support."),
                                              dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                              message: Text("Unable to complete your request at this time. Please check your internet connection."),
                                              dismissButton: .default(Text("OK")))
    //MARKS - Account Alerts

    
    static let invalidForm = AlertItem(title: Text("Invalid Form"),
                                              message: Text("Please ensure all fields in the form have been filled out."),
                                              dismissButton: .default(Text("OK")))
    
    static let invalidEmail = AlertItem(title: Text("Server Error"),
                                              message: Text("Please ensure your e mail is correct."),
                                              dismissButton: .default(Text("OK")))
    
    static let userSaveSuccess = AlertItem(title: Text("Profile Saved"),
                                              message: Text("Your profile information successfully saved."),
                                              dismissButton: .default(Text("OK")))
    
    static let invalidUserData = AlertItem(title: Text("Profile Error"),
                                              message: Text("There was an error saving or retrieving your profile."),
                                              dismissButton: .default(Text("OK")))
    
    
}
