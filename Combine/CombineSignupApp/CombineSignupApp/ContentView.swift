//
//  ContentView.swift
//  CombineLoginApp
//
//  Created by mk on 2020/01/03.
//  Copyright © 2020 mk. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var userViewModel = UserViewModel()
    @State var presentAlert = false
    
    var body: some View {
        
        Form {
            
            Section(footer: Text(userViewModel.usernameMessage).foregroundColor(.red)) {
                
                TextField("Username", text: $userViewModel.username)
                    .autocapitalization(.none)
            }
            
            Section(footer: Text(userViewModel.passwordMessage).foregroundColor(.red)) {
                
                SecureField("Password", text: $userViewModel.password)
                SecureField("Password again", text: $userViewModel.passwordAgain)
            }
            
            Section {
                
                Button(action: { self.signUp() }) {
                    
                    Text("Sign up")
                }
                .disabled(!userViewModel.isValid)
            }
        }
        .sheet(isPresented: $presentAlert) {
            
            WelcomeView()
        }
    }
    
    func signUp() {
        
        self.presentAlert = true
    }
}

struct WelcomeView: View {
    
    var body: some View {
        
        Text("Welcome! Great to hav you on board!")
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ContentView()
    }
}
