//
//  ItemRow.swift
//  project!
//
//  Created by pads on 2022/12/21.
//

import SwiftUI

struct ItemRow: View {
    let item: StoreItem
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(item.trackName)
            Text(item.artistName)
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: StoreItem(trackId: 100, trackName: "有一天我會", artistName: "蔡淳佳"))
    }
}
