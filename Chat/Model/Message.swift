//
//  Message.swift
//  Chat
//
//  Created by takeru on 2018/05/25.
//  Copyright © 2018年 takeru. All rights reserved.
//

import UIKit
import FirebaseAuth

class Message: NSObject {
    
    var fromId: String?
    var toId: String?
    var text: String?
    var timestamp: NSNumber?
    
    var imageUrl: String?
    var imageWidth: NSNumber?
    var imageHeight: NSNumber?
    
    var videoUrl: String?
    
    init(dict: [String: Any]) {
        self.fromId = dict["fromId"] as? String
        self.text = dict["text"] as? String
        self.toId = dict["toId"] as? String
        self.timestamp = dict["timestamp"] as? NSNumber
        
        self.imageUrl = dict["imageUrl"] as? String
        self.imageWidth = dict["imageWidth"] as? NSNumber
        self.imageHeight = dict["imageHeight"] as? NSNumber
        
        self.videoUrl = dict["videoUrl"] as? String
    }
    
    func chatPartnerId() -> String? {
        return fromId == Auth.auth().currentUser?.uid ? toId : fromId
    }
}
