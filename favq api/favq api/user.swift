//
//  user.swift
//  favq api
//
//  Created by pads on 2022/12/17.
//

import Foundation
struct  CreatedSessionBody:Encodable {
    public let user:SessionUser
}

struct SessionUser :Encodable{
    public let login: String
    public let password: String
}

struct  CreateSessionResponse:Decodable {
    public let Token: String
    public let login: String
    public let email:String
    
    enum CodingKeys:String,CodingKey{
        case Token = "User-Token"
        case login
        case email
    }
}
