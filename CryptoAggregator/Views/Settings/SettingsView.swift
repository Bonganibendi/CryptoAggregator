//
//  SettingsView.swift
//  CryptoAggregator
//
//  Created by Bongani Bendile on 2022/03/02.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            VStack {
                UserWidget()
                
                List {
                    NavigationLink(destination: EmailView()) {
                        HStack {
                            Image(systemName: "envelope.fill")
                            Text("Email")
                        }
                    }
                    
                    NavigationLink(destination: PasswordView()) {
                        HStack {
                            Image(systemName: "lock.fill")
                            Text("Password")
                        }
                    }
                    
                    NavigationLink(destination: HelpView()) {
                        HStack {
                            Image(systemName: "person.fill.questionmark")
                            Text("Help")
                        }
                    }
                    
                    NavigationLink(destination: LogoutView()) {
                        HStack {
                            Image(systemName: "rectangle.portrait.and.arrow.right.fill")
                            Text("Logout")
                        }
                    }
                    
                }.navigationTitle("Settings")
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
            SettingsView()
    }
}
