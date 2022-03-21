//
//  NotificationsView.swift
//  InstagramClone
//
//  Created by Shubham Kumar on 28/01/22.
//

import SwiftUI

struct NotificationsView: View {
    //MARK: PROPERTIES
    
    //MARK: BODY
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    ForEach(0..<10) {
                        _ in
                        NotificationCellView()
                    }//:ForEach
                }//:LazyVStack
                .padding()
            }//:ScroillView
            .navigationTitle("Notifications")
        }//:NavigationView
    }
}

//MARK: PREVIEW
struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()    }
}
