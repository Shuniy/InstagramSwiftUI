//
//  SearchView.swift
//  InstagramClone
//
//  Created by Shubham Kumar on 28/01/22.
//

import SwiftUI

struct SearchView: View {
    //MARK: PREOPERTIES
    @State var searchText = ""
    @State var inSearchMode = false
    
    //MARK: BODY
    var body: some View {
        ScrollView {
            SearchBarView(text: $searchText, isEditing: $inSearchMode)
            
            ZStack {
                if inSearchMode {
                    UserListView()
                } else {
                    PostGridView()
                }
            }//:ZStack
        }//:ScrollView
    }//:Body
}

//MARK: PREVIEW
struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
