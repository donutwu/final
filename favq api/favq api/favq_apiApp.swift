//
//  favq_apiApp.swift
//  favq api
//
//  Created by pads on 2022/12/17.
//

import SwiftUI

@main
struct favq_apiApp: App {
    //@StateObject private var fetcher = FavqsDataFetcher()
    @StateObject private var loginData = Login()
    var body: some Scene {
        WindowGroup {
            loginView().environmentObject(loginData)
            //.environmentObject(fetcher)
            
        }
    }
}
