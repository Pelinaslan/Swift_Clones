//
//  NavView.swift
//  InstagramClone
//
//  Created by Pelin ASLAN on 19.05.2021.
//

import SwiftUI
import Firebase

struct NavView: View {
    var colWidth: CGFloat
    
    var body: some View {
        LazyVGrid(columns: [
            GridItem(.fixed(colWidth)),
            GridItem(.fixed(colWidth)),
            GridItem(.fixed(colWidth))
        ]){
            Spacer()
            
            Text("InstaClone").font(.custom("OleoScript-Regular", size: 30))
         
            Image("send").resizable().aspectRatio(contentMode: .fit).frame(width: 20).padding(.leading,50)
            
            
        }
    }
}


