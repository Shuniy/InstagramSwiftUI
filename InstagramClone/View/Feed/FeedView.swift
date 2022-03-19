//
//  FeedView.swift
//  InstagramClone
//
//  Created by Shubham Kumar on 28/01/22.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing:32) {
                ForEach(0..<5) { item in
                    FeedCellView()
                }//ForEach
            }//:LazyVStack
            .padding([.top, .bottom])
        }//:ScrollView
    }//:Body
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
