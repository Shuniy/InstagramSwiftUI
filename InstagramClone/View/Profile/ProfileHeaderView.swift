//
//  ProfileHeaderView.swift
//  InstagramClone
//
//  Created by Shubham Kumar on 19/03/22.
//

import SwiftUI

struct ProfileHeaderView: View {
    //MARK: PROPERTIES
    
    //MARK: BODY
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("ted")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80, alignment: .center)
                    .clipShape(Circle())
                    .padding(.leading, 16)
                Spacer()
                HStack(spacing: 16) {
                    UserStatsView(value: 210, title: "Posts")
                    UserStatsView(value: 211, title: "Followers")
                    UserStatsView(value: 212, title: "Following")
                }//:HStack
                .padding(.trailing, 32)
            }//:HStack
        }//:VStack
    }
}

//MARK: PREVIEW
struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
