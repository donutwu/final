//
//  project_App.swift
//  project!
//
//  Created by  on 2022/12/19.
//

import SwiftUI

@main
struct project_App: App {
    @StateObject private var loginData = Login()
    @StateObject private var fetcher = ItunesDataFetcher()
    var body: some Scene {
        WindowGroup {
            
            
            if loginData.token == ""
            {
                SignInView().environmentObject(loginData)
               // ContentView().environmentObject(fetcher)
            }else{
                ContentView().environmentObject(loginData)
                    .environmentObject(fetcher)
            }
        }
    }
}
