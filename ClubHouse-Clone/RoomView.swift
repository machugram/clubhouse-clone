//
//  RoomView.swift
//  ClubHouse-Clone
//
//  Created by Rexford Machu on 7/10/21.
//

import SwiftUI
let columns = [
    GridItem(.adaptive(minimum: 100))
]
var  people :  [Person] = [
    Person(name:"Akua"),
    Person(name:"Mercy"),
    Person(name :"Yaa"),
    Person(name:"Asantewaa"),
    Person(name:"Mark"),
    Person(name: "Vera" ),
    Person(name:"Tim Cook"),
    Person(name:"Emma "),
    Person(name:"Novall")
]

struct RoomView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

        var btnBack : some View { Button(action: {
            self.presentationMode.wrappedValue.dismiss()
            }) {
            }
        }
    var body: some View {
        //NavigationView{
            GeometryReader { geometry in
                ZStack (alignment:.bottom){
                    ScrollView( showsIndicators: false){
                        Navbar()
                        LazyVGrid(columns: columns, spacing: 5) {
                            ForEach(Array(zip(people.indices, people)), id: \.0) { index, person in
                                PersonView(name: person.name, image:index + 1 )
                            }
                            
                        }.padding()
                    }
                    
                    Footer(text: "")
                }
                .background(Color("bg")).ignoresSafeArea()
            }
            .navigationBarItems(leading: Image(systemName: "back"))
            
        //}
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: btnBack)
    }
}




struct Navbar: View {
    var body: some View {
        HStack{
            //NavigationLink(destination:ContentView()){
//                Image(systemName: "chevron.down").font(.title3).foregroundColor(Color.black)
           // }
            Spacer()
            Text("Leveling up as a software engineer")
                .font(.headline)
            
            Spacer()
        }
        .padding(.horizontal, 20)
        .padding(.top, 60)
    }
}




struct Footer: View {
    @State var text : String
    var body: some View {
        VStack(alignment:.leading){
            HStack{
                Text("✌🏽 Leave quitely")
                    .font(.headline)
                    .foregroundColor(Color("indigo"))
                    .padding()
                    .background(Color("bg"))
                    .cornerRadius(50)
                
                Spacer()
                
                
                HStack {
                    Text("✋🏼")
                        .font(.headline)
                        .padding(15)
                        .background(Color("bg"))
                        .background(Color("bg"))
                        .cornerRadius(50)
                    
                    
                    HStack{
                        Image("2")
                            .resizable()
                            .scaledToFill()
                            .frame(width:25, height:25)
                            .padding(2)
                            .background(RoundedRectangle(cornerRadius: 30).foregroundColor(Color("bg")).frame(width:50 , height: 50))
                    }
                    .padding()
                    
                }
                
            }
            .padding()
            .padding(.bottom, 15)
            .cornerRadius(30)
            .foregroundColor(Color("bg"))
            
            
            
        }
        .background(Color("indigo"))
        .cornerRadius(30)
    }
}


struct PersonView : View {
    var name: String
    var image: Int
    
    
    var body: some View {
        VStack{
            ZStack{
                Image("\(image)")
                    .resizable()
                    .padding(.top, 8)
                    .frame(width:100, height:100)
                    .background(
                        RoundedRectangle(cornerRadius: 50)
                            .frame(width:100, height:100)
                            .foregroundColor(Color.red)
                            .opacity(0.5)
                    )
                
                
                HStack{
                    Text("🎉")
                        .font(.footnote)
                    
                }
                .frame(width:30, height:30)
                .background(Color.white)
                .cornerRadius(30)
                .padding(.top, 65)
                .padding(.leading, -55)
                .zIndex(1)
                
                
                
                HStack{
                    Image(systemName: "mic.slash").font(.footnote)
                    
                }
                .frame(width:30, height:30)
                .background(Color.white)
                .cornerRadius(30)
                .padding(.top, 65)
                .padding(.leading, 80)
            }
            HStack{
                Image(systemName: "staroflife.fill")
                    .foregroundColor(.white)
                    .font(.footnote)
                    .background(RoundedRectangle(cornerRadius: 30)
                                    .frame(width:20, height:20)
                                    .foregroundColor(Color("indigo"))
                    )
                
                
                Text(name)
                    .font(.subheadline)
                    .fontWeight(.medium)
            }
            .padding(.bottom, 20)
        }
    }
}




struct RoomView_Previews: PreviewProvider {
    static var previews: some View {
        RoomView()
    }
}


extension UINavigationController: UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }

    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}
