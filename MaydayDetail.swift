//
//  MaydayDetail.swift
//  project!
//
//  Created by pads on 2022/12/21.
//

import Foundation
import SwiftUI
struct MaydayDetail:View{
    let mayday:Mayday
    var body: some View{
        ScrollView{
            LazyVStack{
                VStack{
                    Image(mayday.pic)
                        .resizable()
                        .scaledToFill()
                }
                .padding()
                //CustomHeader1(name: mayday.name+"簡介")
                Text(mayday.description)
                    .padding()
                Link(destination: URL(string: mayday.videoURL)!, label: {
                    VStack{
                        Text("個人演唱作品點我")
                        
                    }
                })
                Spacer()
            }
            .navigationTitle(mayday.name)
      }
    }
    
}
