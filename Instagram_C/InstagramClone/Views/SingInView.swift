//
//  SingInView.swift
//  InstagramClone
//
//  Created by Pelin ASLAN on 21.05.2021.
//

import SwiftUI

struct SingInView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
  
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20){
               
                Text("Instagram Clone").font(.custom("OleoScript-Regular", size: 35))
            
           
                
                FormField(value: $email,icon: "envelope.fill",placeholder: "E-mail")
                FormField(value: $password,icon: "lock.fill",placeholder: "Password",isSecure: true)
                
                Button(action: {}){
                    Text("Sing In").font(.title).modifier(ButtonModifiers())
                }
                
                HStack{
                    Text("Don't have an account?")
                    
                    NavigationLink(destination: SignUpView()) {
                        Text("Sign up").font(.system(size:20, weight: .semibold)).foregroundColor(.black)
                    }
                }
            
            }.padding()
        }
    }
}


