import SwiftUI

struct homeView: View {
    //@StateObject private var fetcher = ItunesDataFetcher()
    //ContentView().environmentObject(fetcher)
    var body: some View {
       
        TabView{
            Maydaylist()
                .tabItem {
                    
                    
                    Text("主頁")
                        .foregroundColor(Color.primary)
                }
            MaydayIntro()
                .tabItem{
                    
                    
                    
                    
                    Text("五月天介紹")
                        .foregroundColor(Color.primary)
                }
            ItemList()
                .tabItem{
                    
                    
                    
                    
                    Text("歌曲搜尋")
                        .foregroundColor(Color.primary)
                }
        }
    }
    
    struct homeView_Previews: PreviewProvider {
        static var previews: some View {
            homeView()
        }
    }
    
}
