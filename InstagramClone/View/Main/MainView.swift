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
            
            //SearchView
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }//:tabItem
            
            //UploadPostView
            UploadPostView()
                .tabItem {
                    Image(systemName: "plus.square")
                }//:tabItem
            
            //NotificationsView
            NotificationsView()
                .tabItem {
                    Image(systemName: "heart")
                }//:tabItem
            
            //ProfileView
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                }//:tabItem
            
        }//:TabView
    }//:Body
}

//MARK: PREVIEW
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
