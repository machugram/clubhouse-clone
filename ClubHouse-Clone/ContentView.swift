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
            ZStack {
                ScrollView(.vertical, showsIndicators: false){
                    HeaderView()
                    TagsView()
                    ScheduledMeeting()
                    HappeningNow()
                }
                Spacer()
                TabBarView()
                    .frame(width: 370)
                    .position(x: 190.0, y: 720.0)
            }        .navigationBarHidden(true)

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
            Text("Happening now").font(.headline).padding(.bottom , 5)
            CurrentRoomView(roomname: "Startup club", description: "Pitch your startup ideas\n to VC Entrepreneurs", participantNumber: "354")
            CurrentRoomView(roomname: "Startup club", description: "Pitch your startup ideas\n to VC Entrepreneurs", participantNumber: "354")
            CurrentRoomView(roomname: "Startup club", description: "Pitch your startup ideas to VC \n Entrepreneurs", participantNumber: "354")
        }.padding()
    }
}
