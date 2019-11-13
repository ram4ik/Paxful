//
//  AffiliatesMainSubView.swift
//  Paxful
//
//  Created by ramil on 13.11.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct AffiliatesMainSubView: View {
    
    @State var showingDetail = false
    
    var body: some View {
       
        ZStack {
            VStack {
                Text("Affiliates View")
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

struct AffiliatesMainSubView_Previews: PreviewProvider {
    static var previews: some View {
        AffiliatesMainSubView()
    }
}
