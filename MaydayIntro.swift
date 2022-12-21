//
//  MaydayIntro.swift
//  project!
//
//  Created by pads on 2022/12/21.
//



import Foundation
import SwiftUI
struct MaydayIntro: View{
    var body: some View{
        ScrollView{
            VStack{
                CustomHeader1(name:"五月天介紹")
                TabView{
                  ForEach(1..<5){ number in
                  Image("Mayday\(number)")
                  
                    .resizable()
                  .scaledToFit()
                  }
                    
                 
                }
                .background(Color.black)
                .cornerRadius(100)
                .overlay(RoundedRectangle(cornerRadius: 100)
                 .stroke(Color.black, lineWidth: 0))
                 .padding()
                 .frame(height: 500)
                 .tabViewStyle(PageTabViewStyle())
                Section(header: CustomHeader1(name: "五月天簡介")){
                    Text("五月天（英語：MayDay） 是於1999年出道的臺灣樂團，由主唱阿信、團長暨吉他手怪獸、吉他手石頭、貝斯手瑪莎和鼓手冠佑共五人組成；除冠佑外，其餘四人皆畢業自臺北市國立師大附中。樂團前身為「So Band」樂團，於1997年3月29日改為現名，其名稱取自瑪莎在BBS的代號 「MayDay」，五月天自1999年7月7日正式出道，現已發行了9張錄音室專輯、4張精選輯（其中2張分別為在中國大陸與日本出道發行）和數張演唱會專輯。出道後共計八次入圍、其中四次奪下金曲獎「最佳樂團獎」（截至2017年6月）")
                    
                }
            
            }
            
         
        }
        
    }
    
}

struct CustomHeader1: View {
    let name: String
    var body: some View {
        ZStack {
            Color(red: 84/255, green: 153/255, blue: 199/255)
            HStack {
                Text(name)
                    .font(.system(size: 25))
                    .bold()
                    .padding()
                    .scaledToFit()
                    .foregroundColor(Color.primary)
                Spacer()
            }
        }
    }
}
