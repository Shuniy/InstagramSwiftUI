//
//  NotificationCellView.swift
//  InstagramClone
//
//  Created by Shubham Kumar on 30/01/22.
//

import SwiftUI

struct NotificationCellView: View {
    //MARK: PROPETIES
    
    //MARK: Body
    var body: some View {
        HStack {
            Image("ted")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipped()
                .clipShape(Circle())
            
            HStack(spacing:5) {
                Text("Shubham ")
                    .font(.system(size: 15, weight: .semibold))
                +
                Text("has followed you")
                    .font(.system(size: 15))
                Text("2H")
                    .foregroundColor(.gray)
                    .font(.system(size: 13))
            }//:HStack
            .padding(.horizontal, 5)
            
            
            Spacer()
            
            Button(action: {}, label: {
                Text("Follow")
                    .font(.system(size: 15, weight:.semibold))
                    .frame(width: 100, height: 32)
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(5)
                    .overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(Color.gray, lineWidth:1)
                    )//:Overlay
            })//:Button
        }//:HStack
    }//:Body
}

//MARK: PREIVEW
struct NotificationCellView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCellView()
    }
}
