//
//  ProfilePage.swift
//  InstagramClone
//
//  Created by Pelin ASLAN on 23.05.2021.
//

import SwiftUI
import Firebase

struct ProfilePage: View {
    
    var body: some View {
        
        ScrollView(.vertical){
            
            VStack {
            
                Menu("Menü") {
                    Button(action: {
                        
                        try! Auth.auth().signOut()
                        UserDefaults.standard.set(false, forKey: "status")
                        NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
                        
                    }) {
                        
                        Text("Log out")
                            .foregroundColor(.white)
                            .padding(.vertical)
                            .frame(width: UIScreen.main.bounds.width - 50)
                    }
                    .background(Color("Color"))
                    .cornerRadius(10)
                    .padding(.top, 25)
                }.padding(.leading,300)
            }
                
                
            
            TopView()
            BioView()
            EditButtonView()
            HButtonView()
            
            
        }.navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
    }
}


struct Info: Hashable{
    let number: Int
    let label: String
}

struct InfoVStackView: View {
    let infos = [Info(number: 0, label: "Posts"),
                 Info(number: 312,label: "Followers"),
                 Info(number: 287,label: "Following")]
    
    var body: some View{
        HStack {
            ForEach(infos, id: \.self) { info in
                VStack {
                    Text("\(info.number)")
                        .bold()
                    Text(info.label)
                        .bold()
                }
                .padding(.horizontal)
            }
        }
    }
}

struct TopView: View {
    var body:some View{
        HStack {
            Image(systemName: "person.crop.circle.badge.plus")
                .font(.system(size: 52))
                .padding(.horizontal)
             
             InfoVStackView()
        }
        .padding(.top)
    }
}


struct BioView: View {
    var body: some View{
        HStack {
            VStack(alignment: .leading) {                
                Text("Pelin Aslan")
                Text("IOS Developer")
            }
            Spacer()
        }
        .padding()
    }
    
}

struct EditButtonView: View {
    var body: some View{
        Button(action: {
            print("edit")
        }) {
            Text("Edit Profile")
                .foregroundColor(Color(.label))
        }
        .frame(width: UIScreen.main.bounds.width - 32, height: 50)
        .background(Color(.secondarySystemBackground))
        .cornerRadius(8)
        
    }
    
}

struct  HButtonView: View {
    let buttons = ["square.grid.2x2","person.crop.rectangle"]
    var body: some View{
        HStack{
            ForEach(buttons, id: \.self) { button in
                HStack{
                    Spacer()
                Button(action: {
                    //
                }) {
                    Image(systemName: button)
                        .font(.title)
                        .foregroundColor(Color(.label))
                }
                Spacer()
            }
        }
    }
        .padding()
    }
    
}






struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}
