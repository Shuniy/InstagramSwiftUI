//
//  PostGridView.swift
//  InstagramClone
//
//  Created by Shubham Kumar on 28/01/22.
//

import SwiftUI

struct PostGridView: View {
    //MARK: PROPERTIES
    private let items = [GridItem(), GridItem(), GridItem()]
    private let size = UIScreen.main.bounds.width / 3
    
    
    //MARK: BODY
    var body: some View {
        LazyVGrid(columns: items, spacing: 2){
            ForEach(0..<10) {
                _ in
                Image("ted")
                    .resizable()
                    .scaledToFill()
                    .frame(width: size, height: size)
                    .clipped()
            }//:ForEach
        }//:LazyVGrid
    }//:Body
}

//MARK: PREVIEWS
struct PostGridView_Previews: PreviewProvider {
    static var previews: some View {
        PostGridView()
    }
}
