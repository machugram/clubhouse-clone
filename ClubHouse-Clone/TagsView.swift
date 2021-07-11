//
//  TagsView.swift
//  ClubHouse-Clone
//
//  Created by Rexford Machu on 7/10/21.
//

import SwiftUI
var tags : [iTag] = [
    iTag(name:"🕊 Twitter"),
    iTag(name:"👨🏼‍💻 SwiftUI"),
    iTag(name: "🎨 Design"),
    iTag(name: "🎯 Figma"),
    iTag(name: "👀 Clone")
]
struct TagsView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack{
                ForEach(tags,id: \.id){
                    tag in Tag(name: tag.name)
                }
            }
        }
    }
}

struct TagsView_Previews: PreviewProvider {
    static var previews: some View {
        TagsView()
    }
}


struct Tag: View {
    var name : String
    var body: some View {
        Text(name)
            .font(.footnote)
            .padding(.vertical, 12)
            .padding(.horizontal, 15)
            .background(RoundedRectangle(cornerRadius: 30)
                            //.foregroundColor(Color.random)
                            .opacity(0.4)
            )
    }
}


struct TabBar: View {
    var body: some View {
        HStack{
            HStack{
                Image(systemName: "calendar")
                    .font(.headline)
                    .padding(10)
            }
            .background(Color("tabBarIconBg"))
            .cornerRadius(12)
            
            
            Spacer()
            
            
            HStack{
                Image(systemName: "plus.circle.fill")
                    .foregroundColor(Color.white)
                
                Text("Start room").foregroundColor(Color.white)
            }
            .padding(10)
            .padding(.horizontal, 5)
            .background(Color("indigo"))
            .cornerRadius(15, antialiased:true)
            
            
            Spacer()
            
            HStack{
                Image(systemName: "person")
                    .padding(10)
            }
            .background(Color("tabBarIconBg"))
            .cornerRadius(12)
            
        }
        .padding()
        .padding(.bottom, 10)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color("bg").opacity(0.5), .white, .white , .white, .white]), startPoint: .top, endPoint: .bottom)

        )
    }
}
