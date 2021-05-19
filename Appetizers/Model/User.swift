//
//  User.swift
//  Appetizers
//
//  Created by Katerina Utlik on 4/13/21.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthday = Date()
    var extraNapkins = false
    var frequentRefills = true
}
