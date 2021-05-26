//
//  MainScreenView.swift
//  InstagramClone
//
//  Created by Pelin ASLAN on 20.05.2021.
//

import SwiftUI
import Firebase

struct MainScreenView: View {
    var body: some View {
        let people:[person] = [
            person(name: "child",image:"boy"),
            person(name: "lady",image:"woman"),
            person(name: "businesman",image:"man"),
        ]
            
        GeometryReader{geometry in
        let colWidth = geometry.size.width / 3
            
        TabView{
            NavigationView{
                VStack{
                    //nav
                    NavView(colWidth: colWidth)
                    ScrollView{
                        
                        VStack{
                        //story kısmi
                            storyView(people: people)
                                .padding(.leading,15)
                                .padding(.bottom,15)
                        
                            
                        LazyVStack(alignment: .leading){
                            ForEach(people, id: \.id){ person in
                                PersonHeader(person: person)
                                Image(person.image).resizable().aspectRatio(contentMode: .fill)
                                
                                PersonLikeBar(colWidth: colWidth).padding(.bottom,10)
                                
                                
                                                    }
                        }.padding(.leading,10).padding(.trailing,10).padding(.bottom,15)
                         
                    }

                      
                    }
                    
                  
                   
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
            
            
            }
            
            .tabItem{
                Image(systemName: "house.fill")
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            
            NavigationView{
                VStack{
                    
                }
                
            }.tabItem{
                Image(systemName: "magnifyingglass")
                
                    }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            
            NavigationView{
                VStack{
                    
                }
                
            }.tabItem{
                Image(systemName: "camera")
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            
            NavigationView{
                VStack{
                    
                }
                
            }.tabItem{
                Image(systemName: "heart")
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            
            NavigationView{
                ProfilePage()
                
            }.tabItem{
                Image(systemName: "person")
                
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
    }
    }
}


