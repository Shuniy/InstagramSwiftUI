//
//  UserListView.swift
//  InstagramClone
//
//  Created by Shubham Kumar on 30/01/22.
//

import SwiftUI

struct UserListView: View {
    //MARK: PROPERTIES
    
    //MARK: BODY
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<10) {
                    _ in
                    UserCellView()
                }
            }//:LazyVStack
        }//:ScrollView
    }//:Body
}

//MARK: PREVIEW
struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
    }
}
