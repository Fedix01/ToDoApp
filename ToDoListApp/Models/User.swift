//
//  User.swift
//  ToDoListApp
//
//  Created by Federico Manna on 07/06/25.
//

import Foundation

struct User:Codable {
    let id:String
    let name:String
    let email:String
    let joined:TimeInterval
}
