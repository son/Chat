//
//  User.swift
//  Chat
//
//  Created by takeru on 2018/04/21.
//  Copyright © 2018年 takeru. All rights reserved.
//

import UIKit

class User: NSObject {
    
    var id: String?
    var name: String?
    var email: String?
    var profileImageUrl: String?
    
    init(dic: [String: Any]) {
        self.id = dic["id"] as? String
        self.name = dic["name"] as? String
        self.email = dic["email"] as? String
        self.profileImageUrl = dic["profileImageUrl"] as? String
    }
}
