//
//  Maydaylist.swift
//  project!
//
//  Created by pads on 2022/12/21.
//


import Foundation
import SwiftUI
struct Maydaylist:View  {
    
    
    
    var body: some View{
        
        NavigationView{
            List{
                ForEach(0..<maydays.count){
                    (i) in NavigationLink(
                        destination: MaydayDetail(mayday:maydays[i]),
                        label: {
                            MaydayRow(mayday:maydays[i])
                        })
                    
                }
                    
                
            }
            .navigationTitle("五月天介紹")
            
        }
        
    }
    
}
