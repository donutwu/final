//
//  ItemList.swift
//  project!
//
//  Created by pads on 2022/12/21.
//

import SwiftUI

struct ItemList: View {
    @EnvironmentObject var fetcher: ItunesDataFetcher
    @State private var searchText = ""
    var searchResult: [StoreItem] {
    if searchText.isEmpty {
    return fetcher.items
    } else {
    return fetcher.items.filter {
    $0.trackName.contains(searchText)
    }
    }
    }
    var body: some View {
        NavigationView{
            List {
                TextField("Search", text: $searchText){fetcher.fetchData(term: searchText)}
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                ForEach(searchResult,id : \.trackId) { item in
                    ItemRow(item: item)
                }
            }
        }
        .alert(fetcher.error?.localizedDescription ?? "", isPresented: $fetcher.showError, actions: {
        })
        .onAppear {
            if fetcher.items.isEmpty {
                fetcher.fetchData(term: "五月天")
            }
        }
    }
}

struct ItemList_Previews: PreviewProvider {
    static var previews: some View {
        ItemList()
    }
}

