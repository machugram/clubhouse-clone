//
//  ContentView.swift
//  ClubHouse-Clone
//
//  Created by Rexford Machu on 7/10/21.
//

import SwiftUI



struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottom) {
                ScrollView(.vertical, showsIndicators: false){
                    HeaderView()
                    TagsView()
                    ScheduledMeeting()
                    HappeningNow()
                }
                Spacer()
                TabBarView()
                    .cornerRadius(20)
                    .padding(.bottom, 0)
                    //.background(Color.white)
                    .foregroundColor(Color("bg"))
            }
            .navigationBarHidden(true)
            .ignoresSafeArea(edges: .bottom)

        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




struct ScheduledMeeting:View {
    var body: some View {
        VStack(alignment:.leading){
            Text("Scheduled").font(.headline)
            HStack{
                Rectangle()
                    .frame(width:3, height:40)
                    .padding(.leading, 20)
                    .foregroundColor(Color("barcolor"))
                
                VStack(alignment: .leading){
                    Text("10:00 - 12:00").foregroundColor(Color.white).padding(.bottom,0.5).padding(.top, 30)
                    Text("Design talks and chill").foregroundColor(Color.white).bold().padding(.bottom,30)
                }
                
                Spacer()
                
                Image(systemName: "chevron.down")
                    .padding()
                    .font(.headline)
                    .foregroundColor(Color.white)
                
                
            }
            .background(Color("indigo"))
            .cornerRadius(30)
            
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 20)
    }
}


struct HappeningNow : View {
    var body: some View {
        VStack(alignment:.leading){
            Text("Happening Now").font(.headline).padding(.bottom , 5)
            CurrentRoomView(roomname: "GRAPHQL VS REST", description: "When to use what in your api", participants: "400",speakers: "15")
            CurrentRoomView(roomname: "AP13", description: "Accra and Packaging. Episode 13", participants: "354", speakers: "40")
            CurrentRoomView(roomname: "WHY GOROOT AND NOT GROOT?", description: "Jaybahd, O'Kenneth,Reggie,Google", participants: "54", speakers: "2")
        }.padding()
    }
}
