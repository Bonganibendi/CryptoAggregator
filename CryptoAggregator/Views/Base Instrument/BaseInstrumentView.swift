//
//  BaseInstrumentView.swift
//  CryptoAggregator
//
//  Created by Bongani Bendile on 2022/03/02.
//

import SwiftUI

struct BaseInstrumentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    VStack(spacing: 20){
                        NavigationLink(destination:CryptoView()) {
                            InstrumentWidget().foregroundColor(.black)
                        }
                        InstrumentWidget()
                        InstrumentWidget()
                        InstrumentWidget()
                    }
                }
            }.navigationTitle("Instruments")
        }
    }
}

struct BaseInstrumentView_Previews: PreviewProvider {
    static var previews: some View {
        BaseInstrumentView()
    }
}

