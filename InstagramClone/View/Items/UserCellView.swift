//
//  UserCellView.swift
//  InstagramClone
//
//  Created by Shubham Kumar on 30/01/22.
//

import SwiftUI

struct UserCellView: View {
    //MARK: PROPERTIES
    
    //MARK: BODY
    var body: some View {
        HStack(spacing: 3) {
            Image("ted")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipped()
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 2) {
                Text("Shubham")
                    .font(.system(size: 15, weight: .semibold))
                
                Text("Shubham Kumar")
                    .font(.system(size: 15))
            }//:VStack
            Spacer()
        }//:HStack
    }//:Body
}

//MARK: PREVIEW
struct UserCellView_Previews: PreviewProvider {
    static var previews: some View {
        UserCellView()
    }
}
