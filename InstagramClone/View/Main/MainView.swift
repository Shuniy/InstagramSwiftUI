//
//  MainView.swift
//  InstagramClone
//
//  Created by Shubham Kumar on 28/01/22.
//

import SwiftUI

struct MainView: View {
    //MARK: PROPERTIES
    
    //MARK: BODY
    var body: some View {
        TabView {
            //FeedView
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                }//:tabItem
                .tag(0)
            
            //SearchView
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }//:tabItem
                .tag(1)
            
            //UploadPostView
            UploadPostView()
                .tabItem {
                    Image(systemName: "plus.square")
                }//:tabItem
                .tag(2)
            
            //NotificationsView
            NotificationsView()
                .tabItem {
                    Image(systemName: "heart")
                }//:tabItem
                .tag(3)
            
            //ProfileView
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                }//:tabItem
                .tag(4)
        }//:TabView
    }//:Body
}

//MARK: PREVIEW
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
