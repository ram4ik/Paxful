//
//  AccountMainSubView.swift
//  Paxful
//
//  Created by ramil on 13.11.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct AccountMainSubView: View {
    
    @State var showingDetail = false
    @State private var enableTouchID = false
    
    var body: some View {
       
        ZStack {
            VStack {
                NavigationView {
                    List {
                        Section(header: Text("Settings")) {
                            NavigationLink(destination: UsernameView()) {
                                Text("Username")
                            }
                            Text("info@paxfil.com")
                            NavigationLink(destination: UsernameView()) {
                                Text("Language")
                            }
                            NavigationLink(destination: UsernameView()) {
                                Text("Change password")
                            }
                            NavigationLink(destination: UsernameView()) {
                                Text("Preferred currency")
                            }
                        }
                        Section(header: Text("Security")) {
                            NavigationLink(destination: UsernameView()) {
                                Text("Change pin")
                            }
                            Toggle(isOn: $enableTouchID) {
                                Text("Enable Touch ID")
                            }
                            NavigationLink(destination: UsernameView()) {
                                Text("Phone number")
                            }
                            NavigationLink(destination: UsernameView()) {
                                Text("Security questions")
                            }
                            NavigationLink(destination: UsernameView()) {
                                Text("Two-factor for login")
                            }
                            NavigationLink(destination: UsernameView()) {
                                Text("Two-factor for transactions")
                            }
                            
                        }
                        Section(header: Text("Other")) {
                            NavigationLink(destination: UsernameView()) {
                                Text("Account activity")
                            }
                            NavigationLink(destination: UsernameView()) {
                                Text("Contact support")
                            }
                            NavigationLink(destination: UsernameView()) {
                                Text("Report an issue")
                            }
                            Text("Application version")
                            Text("Sign Out")
                        }
                    }
                    .navigationBarTitle("Settings")
                    .listStyle(GroupedListStyle())
                    
                    
                }
            }
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        self.showingDetail.toggle()
                    }) {
                        Image(systemName: "message")
                    }
                    .padding(.all, 40)
                    .sheet(isPresented: $showingDetail) {
                        ChatMainView()
                    }
                }
                Spacer()
            }
        }
    }
}

struct AccountMainSubView_Previews: PreviewProvider {
    static var previews: some View {
        AccountMainSubView()
    }
}
