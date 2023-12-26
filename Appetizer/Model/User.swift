//
//  User.swift
//  Appetizer
//
//  Created by Oğuz Kanda on 22.12.2023.
//

import Foundation

struct User: Codable {
    
    
    var firstname           = ""
    var lastname            = ""
    var email               = ""
    var birthday            = Date()
    var extraNapkins        = false
    var frequentRefills     = false
    
}
