//
//  PeopleContentView.swift
//  InstagramClone
//
//  Created by Pelin ASLAN on 20.05.2021.
//

import SwiftUI

struct PersonHeader: View {
    var person : person
    var body: some View {
        HStack{
            Image(person.name)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30)
                .padding(2)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 2))
            VStack(alignment: .leading){
                Text(person.name).font(.system(size: 12))
                Text("producejams - Original Audio").font(.system(size: 12))
            }
            Spacer()
            
            Image("more")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 15)
                .padding(.trailing, 10)
            
        }

    }
}
