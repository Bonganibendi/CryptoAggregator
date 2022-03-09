//
//  TabBarView.swift
//  CryptoAggregator
//
//  Created by Bongani Bendile on 2022/03/02.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {            
            CryptoMarketView().tabItem {
                Label("",systemImage: "building.columns.fill")
            }
            
            SettingsView().tabItem{
                Label("",systemImage: "gearshape.fill")
            }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TabBarView()
            TabBarView()
                .previewDevice("iPhone 8")
        }
    }
}
