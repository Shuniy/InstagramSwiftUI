//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Shubham Kumar on 28/01/22.
//

import SwiftUI

struct ProfileView: View {
    //MARK: PROPERTIES
    
    //MARK: BODY
    var body: some View {
        ScrollView {
            VStack(spacing: 32) {
                ProfileHeaderView()
                    .padding()
                PostGridView()
            }//:VStack
            .padding(.top)
        }//:ScrollView
    }
}

//MARK: PREVIEW
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
