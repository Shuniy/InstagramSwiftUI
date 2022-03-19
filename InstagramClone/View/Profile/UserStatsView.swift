//
//  UserStatsView.swift
//  InstagramClone
//
//  Created by Shubham Kumar on 19/03/22.
//

import SwiftUI

struct UserStatsView: View {
    //MARK: PROPERTIES
    let value: Int
    let title: String
    
    //MARK: BODY
    var body: some View {
        VStack {
            Text("\(value)")
                .font(.system(size: 15, weight: .semibold))
            Text(title)
                .font(.system(size: 15, weight: .regular))
        }//:VStack
        .frame(width: 80, alignment: .center)
    }
}

//MARK: PREVIEW
struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView(value: 1, title: "Hello")
    }
}
