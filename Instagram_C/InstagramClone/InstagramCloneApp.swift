//
//  InstagramCloneApp.swift
//  InstagramClone
//
//  Created by Pelin ASLAN on 19.05.2021.
//

import SwiftUI
import Firebase

@main
struct InstagramCloneApp: App {
    //let persistenceController = PersistenceController.shared

    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView()
                //.environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate{
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        print("Firebase..")
        FirebaseApp.configure()
        
        return true
    }
}
