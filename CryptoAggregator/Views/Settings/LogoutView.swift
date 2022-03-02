//
//  LogoutView.swift
//  CryptoAggregator
//
//  Created by Bongani Bendile on 2022/03/02.
//

import SwiftUI

struct LogoutView: View {
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .frame( height: 45, alignment: .center)
                    .foregroundColor(.secondary).cornerRadius(15)
                    .padding()
                
                HStack {
                    Image(systemName: "rectangle.portrait.and.arrow.right.fill")
                    Text("Logout")
                    Spacer()
                }.padding(.horizontal, 40)
            }.offset(y: 40)
            Spacer()
        }.navigationBarTitle("Logout", displayMode: .inline).offset(y: -10)
    }
}

struct LogoutView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LogoutView()
        }
    }
}

