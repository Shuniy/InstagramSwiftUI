//
//  FeedCellView.swift
//  InstagramClone
//
//  Created by Shubham Kumar on 28/01/22.
//

import SwiftUI

struct FeedCellView: View {
    //MARK: PROPERTIES
    
    //MARK: BODY
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 15) {
                Image("ted")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36, height: 36)
                    .clipped()
                    .clipShape(Circle())
                Text("Shubham")
            }//:HStack
            .padding(.horizontal, 10)
            
            Image("ted")
                .resizable()
                .scaledToFill()
                .frame(maxHeight:440)
                .clipped()
            
            HStack(spacing:16) {
                Image(systemName: "heart")
                    .resizable()
                    .scaledToFill()
                    .foregroundColor(.primary)
                    .frame(width: 20, height: 20)
                    .font(.system(size: 20))
                    .padding(5)
                Image(systemName: "bubble.right")
                    .resizable()
                    .scaledToFill()
                    .foregroundColor(.primary)
                    .frame(width: 20, height: 20)
                    .font(.system(size: 20))
                    .padding(5)
                Image(systemName: "paperplane")
                    .resizable()
                    .scaledToFill()
                    .foregroundColor(.primary)
                    .frame(width: 20, height: 20)
                    .font(.system(size: 20))
                    .padding(5)
            }//:HStack
            .padding(.leading, 5)
            .foregroundColor(.primary)
            
            Text("25 Likes")
                .font(.system(size: 15, weight: .semibold))
                .padding(.leading, 10)
                .padding(.bottom, 1)
            HStack {
                Text("Shubham")
                    .font(.system(size: 15, weight: .semibold))
                Spacer(minLength: 10)
                Text("Look Great!")
                    .font(.system(size: 15))
            }//:HStack
            .padding(.vertical, 1)
            .padding(.horizontal, 10)
            
            Text("2H").padding(.horizontal, 10)
                .font(.system(size: 15))
                .foregroundColor(.secondary)
                .padding(.top, -2)
            
        }//:VStack
    }//:Body
}

//MARK: PREVIEW
struct FeedCellView_Previews: PreviewProvider {
    static var previews: some View {
        FeedCellView()
    }
}
