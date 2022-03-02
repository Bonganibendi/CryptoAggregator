//
//  HelpView.swift
//  CryptoAggregator
//
//  Created by Bongani Bendile on 2022/03/02.
//

import SwiftUI

struct HelpView: View {
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .frame( height: 45, alignment: .center)
                    .foregroundColor(.secondary).cornerRadius(15)
                    .padding()
                
                HStack {
                    Image(systemName: "person.fill.questionmark")
                    Text("Groupinvest@business.com")
                    Spacer()
                }.padding(.horizontal, 40)
            }.offset(y: 40)
            Spacer()
        }.navigationBarTitle("Help", displayMode: .inline).offset(y: -10)
    }
}

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HelpView()
        }
    }
}

