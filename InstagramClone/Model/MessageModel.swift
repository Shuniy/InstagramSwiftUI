//
//  MessageModel.swift
//  InstagramClone
//
//  Created by Shubham Kumar on 25/04/22.
//

import Foundation
import SwiftUI
import Firebase
import FirebaseFirestoreSwift

struct Message: Identifiable, Decodable, Hashable {
    @DocumentID var id: String?
    let message: String
    let receiverId: String
    let ownerImageURL: String
    let timestamp: Timestamp
    let uid: String
    
    var timestampText: String? {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.second, .minute, .hour, .day, .weekOfMonth]
        formatter.maximumUnitCount = 1
        formatter.unitsStyle = .abbreviated
        return formatter.string(from: timestamp.dateValue(), to: Date()) ?? ""
    }
}
