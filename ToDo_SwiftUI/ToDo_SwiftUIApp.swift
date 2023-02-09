//
//  ToDo_SwiftUIApp.swift
//  ToDo_SwiftUI
//
//  Created by Abdelaziz Reda on 08/02/2023.
//

import SwiftUI

@main
struct ToDo_SwiftUIApp: App {
    
    @StateObject var listViewModel:ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()

            }
            .environmentObject(listViewModel)
        }
    }
}
