//
//  MaydayRow.swift
//  project!
//
//  Created by pads on 2022/12/21.
//

import Foundation
import SwiftUI
struct MaydayRow:View {
    let mayday:Mayday
    var body: some View{
        HStack{
            Image(mayday.pic)
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipped()
            
        }
        .padding()
        VStack(alignment: .leading)  {
            Text(mayday.name)
        }
        Spacer()
    }
    
}
