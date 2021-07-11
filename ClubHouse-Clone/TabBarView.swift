//
//  TabBarView.swift
//  ClubHouse-Clone
//
//  Created by Rexford Machu on 7/10/21.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        HStack{
            Button(action: {}){
                Image(systemName: "calendar")
                //Spacer()
            }.foregroundColor(Color(.black))
            Spacer()

            //.frame(width: 100)
            Button(action: {}){
                Image(systemName: "plus.circle.fill")
                    .padding(10)
                Text("Start a room")
            }.foregroundColor(Color(.black))
            
                Spacer()
                Image(systemName: "person.fill")
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
