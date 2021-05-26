//
//  UserModel.swift
//  InstagramClone
//
//  Created by Pelin ASLAN on 22.05.2021.
//

import Foundation

struct User: Encodable, Decodable{
    var uid:String
    var email: String
    var username:String
    var searchname:[String]
    var bio:String
}
