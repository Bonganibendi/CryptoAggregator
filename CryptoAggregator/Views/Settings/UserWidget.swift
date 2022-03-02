//
//  UserWidget.swift
//  CryptoAggregator
//
//  Created by Bongani Bendile on 2022/03/02.
//

import SwiftUI

struct UserWidget: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
                .frame(height: 100)
                .cornerRadius(15)
                .padding()
            
            HStack {
                Circle()
                    .frame(width: 65, height: 65)
                
                Text("Bongani Bendile")
                    .font(.title2)
                Spacer()
            }.padding()
                .offset(x: 15)
        }
    }
}

struct UserWidget_Previews: PreviewProvider {
    static var previews: some View {
        UserWidget()
    }
}
