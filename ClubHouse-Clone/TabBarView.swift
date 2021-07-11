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
                .padding()

            }.foregroundColor(Color(.black))
            Spacer()

            //.frame(width: 100)
            Button(action: {}){
                Image(systemName: "plus.circle.fill")
                .padding()
                Text("Start a room")
            }.foregroundColor(Color(.black))
                Spacer()
            
            Button(action: {}){
                Image(systemName: "person.fill")
                .padding()
            }
            .foregroundColor(.black)
        }
        .frame(width: 375, height: 100)
        .background(Color("indigo"))

    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
