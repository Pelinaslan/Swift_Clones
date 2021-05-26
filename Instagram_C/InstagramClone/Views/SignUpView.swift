//
//  SignUpView.swift
//  InstagramClone
//
//  Created by Pelin ASLAN on 21.05.2021.
//

import SwiftUI


struct SignUpView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var username: String = ""
    

    
  
 
    var body: some View {
        ScrollView{
            VStack(spacing: 20){
               
                Text("Instagram Clone").font(.custom("OleoScript-Regular", size: 40))
            
            VStack(alignment: .leading){
                
                Text("Sing up to see photos and videos from your friens.").font(.system(size: 16, weight: .medium))
            }
                FormField(value: $username,icon: "person.fill",placeholder: "Username")
                FormField(value: $email,icon: "envelope.fill",placeholder: "E-mail")
                FormField(value: $password,icon: "lock.fill",placeholder: "Password",isSecure: true)
                
                Button(action: {}){
                    Text("Sing Up").font(.title).modifier(ButtonModifiers())
                }
                
                
                
            
            }.padding()
        }
    }
}



struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

