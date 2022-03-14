//
//  UIApplicationExtension.swift
//  InstagramClone
//
//  Created by Shubham Kumar on 30/01/22.
//

import Foundation
import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
