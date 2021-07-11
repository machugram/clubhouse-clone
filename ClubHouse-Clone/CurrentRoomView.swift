//
//  CurrentRoomView.swift
//  ClubHouse-Clone
//
//  Created by Rexford Machu on 7/10/21.
//

import SwiftUI

struct CurrentRoomView: View {
    var roomname: String
    var description: String
    var participantNumber : String
    var body: some View{
        NavigationLink(destination: RoomView()){
            HStack{
                HStack{
                    VStack(alignment:.leading){
                        VStack(alignment:.leading){
                            Text("Startup club")
                                .bold()
                                .textCase(.uppercase)
                                .frame(maxWidth:.infinity, alignment:.leading)
                                .foregroundColor(Color.black)
                            Text("Pitch your startup ideas to VC \n Entrepreneurs")
                                .foregroundColor(Color.gray)
                                .font(.subheadline)
                                .padding(.top,1)

//                            Text("Entrepreneurs")
//                                .foregroundColor(Color.gray)
//                                .font(.subheadline)

                        }
                        .padding(.horizontal, 30)
                        .padding(.top,25)
                        
                        HStack{
                            Image("1")
                                .resizable()
                                .scaledToFill()
                                .frame(width:30, height:30)
                                .padding(2)
                                .background(RoundedRectangle(cornerRadius: 10))//.foregroundColor(Color.random).opacity(0.5))
                            
                            Image("2")
                                .resizable()
                                .scaledToFill()
                                .frame(width:30, height:30)
                                .padding(2)
                                .background(RoundedRectangle(cornerRadius: 10))//.foregroundColor(Color.random).opacity(0.5))
                            
                            
                            Image("3")
                                .resizable()
                                .scaledToFill()
                                .frame(width:30, height:30)
                                .padding(2)
                                .background(RoundedRectangle(cornerRadius: 10)//.foregroundColor(Color.random).opacity(0.5)
                                )
                            
                            
                            Spacer()
                            
                            HStack{
                                Image(systemName: "person.fill")
                                    .font(.subheadline)
                                    .foregroundColor(Color.black)
                                Text("354")
                                    .font(.subheadline)
                                    .foregroundColor(Color.black)
                                Image(systemName: "mic.fill")
                                    .font(.subheadline)
                                    .foregroundColor(Color.black)
                                Text("354")
                                    .font(.subheadline)
                                    .foregroundColor(Color.black)
                            }
                            .padding(.horizontal,10)
                            .frame(height:35)
                            .background(Color("bg"))
                            .cornerRadius(12, antialiased: true)
                        }
                        .padding(.horizontal, 30)
                        .padding(.top, 15)
                        .padding(.bottom, 25)
                        
                    }
                }
                .background(Color("gray.100"))
                .cornerRadius(30)
            }
            .padding(.bottom, 20)
        }
    }
}

struct CurrentRoomView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentRoomView(roomname: "Startup club", description: "Pitch your startup ideas to VC \n Entrepreneurs", participantNumber: "354")
    }
}



//struct HappendingNowCard: View{
//    var body: some View{
//        NavigationLink(destination: RoomView()){
//            HStack{
//                HStack{
//                    VStack(alignment:.leading){
//                        VStack(alignment:.leading){
//                            Text("Startup club")
//                                .bold()
//                                .textCase(.uppercase)
//                                .frame(maxWidth:.infinity, alignment:.leading)
//                                .foregroundColor(Color.black)
//                            Text("Pitch your startup ideas to VS & top")
//                                .foregroundColor(Color.gray)
//                                .font(.subheadline)
//                                .padding(.top,1)
//
//                            Text("Entrepreneus")
//                                .foregroundColor(Color.gray)
//                                .font(.subheadline)
//
//                        }
//                        .padding(.horizontal, 30)
//                        .padding(.top,25)
//
//                        HStack{
//                            Image("1")
//                                .resizable()
//                                .scaledToFill()
//                                .frame(width:30, height:30)
//                                .padding(2)
//                                .background(RoundedRectangle(cornerRadius: 10).foregroundColor(Color.random).opacity(0.5))
//
//                            Image("2")
//                                .resizable()
//                                .scaledToFill()
//                                .frame(width:30, height:30)
//                                .padding(2)
//                                .background(RoundedRectangle(cornerRadius: 10).foregroundColor(Color.random).opacity(0.5))
//
//
//                            Image("3")
//                                .resizable()
//                                .scaledToFill()
//                                .frame(width:30, height:30)
//                                .padding(2)
//                                .background(RoundedRectangle(cornerRadius: 10).foregroundColor(Color.random).opacity(0.5))
//
//
//                            Spacer()
//
//                            HStack{
//                                Image(systemName: "person.fill")
//                                    .font(.subheadline)
//                                    .foregroundColor(Color.black)
//                                Text("354")
//                                    .font(.subheadline)
//                                    .foregroundColor(Color.black)
//                                Image(systemName: "mic.fill")
//                                    .font(.subheadline)
//                                    .foregroundColor(Color.black)
//                                Text("354")
//                                    .font(.subheadline)
//                                    .foregroundColor(Color.black)
//                            }
//                            .padding(.horizontal,10)
//                            .frame(height:35)
//                            .background(Color("bg"))
//                            .cornerRadius(12, antialiased: true)
//                        }
//                        .padding(.horizontal, 30)
//                        .padding(.top, 15)
//                        .padding(.bottom, 25)
//
//                    }
//                }
//                .background(Color("gray.100"))
//                .cornerRadius(30)
//            }
//            .padding(.bottom, 20)
//        }
//    }
//}
