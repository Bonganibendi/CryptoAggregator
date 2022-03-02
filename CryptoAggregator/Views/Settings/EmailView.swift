//
//  EmailView.swift
//  CryptoAggregator
//
//  Created by Bongani Bendile on 2022/03/02.
//

import SwiftUI

import SwiftUI

struct EmailView: View {
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .frame( height: 45, alignment: .center)
                    .foregroundColor(.secondary).cornerRadius(15)
                    .padding()
                
                HStack {
                    Image(systemName: "envelope.fill")
                    Text("bonganibendile@gmail.com")
                    Spacer()
                }.padding(.horizontal, 40)
            }.offset(y: 40)
            Spacer()
        }.navigationBarTitle("Email", displayMode: .inline)
            .offset(y: -10)
    }
}

struct EmailView_Preview: PreviewProvider {
    static var previews: some View {
        NavigationView {
            EmailView()
        }
    }
}
