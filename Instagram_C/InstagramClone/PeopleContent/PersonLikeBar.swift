//
//  PersonLikeBar.swift
//  InstagramClone
//
//  Created by Pelin ASLAN on 20.05.2021.
//

import SwiftUI

struct PersonLikeBar: View {
    var colWidth: CGFloat
    var body: some View {
        LazyVGrid(columns: [
            GridItem(.fixed(colWidth),alignment: .leading),
            GridItem(.fixed(colWidth)),
            GridItem(.fixed(colWidth),alignment: .trailing)
            
        ]){
            HStack{
                
                Image(systemName: "heart")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 15)
                    .padding(.trailing,10)
                    .foregroundColor(.gray)
                
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 15)
                    .padding(.trailing,10)
                    .foregroundColor(.gray)
                    
                    Image("send")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 15)
                        .padding(.top,-8)
                        
                }
                    Spacer()
                    Image(systemName: "bookmark")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 10)
                        .foregroundColor(.gray)
                        .padding(.trailing,40)
        }
    }
}
