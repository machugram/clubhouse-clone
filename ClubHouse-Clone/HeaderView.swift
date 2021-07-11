//
//  HeaderView.swift
//  ClubHouse-Clone
//
//  Created by Rexford Machu on 7/10/21.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack{
            Text("Good morning, \nMachu")
                .font(.headline)
            
            Spacer()
           // Image(systemName: "magnifyingglass").font(.title3)
                Image("1")
                    .resizable()
                    .scaledToFill()
                    .frame(width:30, height:30)
                    .padding(2)
                  //  .background(RoundedRectangle(cornerRadius: 20)//.foregroundColor(Color("indigo"))
                   // )
        }
        .frame(height : 60)
        .padding(.horizontal,20)
        .padding(.top,20)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
