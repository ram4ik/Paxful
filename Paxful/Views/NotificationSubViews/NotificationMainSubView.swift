//
//  NotificationMainSubView.swift
//  Paxful
//
//  Created by ramil on 13.11.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct NotificationMainSubView: View {
    
    @State var showingDetail = false
    
    var body: some View {
        
        ZStack {
            VStack {
                Text("Notification View")
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

struct NotificationMainSubView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationMainSubView()
    }
}
