//
//  GiftView.swift
//  SwiftUI Animations
//
//  Created by Sofo Machurishvili on 23.12.23.
//

import SwiftUI

struct GiftView: View {
    
    var body: some View {
        
        
        ZStack {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 166, height: 173)
                .background(
                    Image("giftBox")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 166, height: 173)
                        .clipped()
                )
            NavigationLink {
                XmasView()
            } label: {
                Text("Tap me")
                    .foregroundStyle(.white)
                    .frame(width: 100, height: 30)
                    .font(.title2)
                    .background(Color(red: 0.29, green: 0.13, blue: 0.11))
                    .cornerRadius(30)
            }
            
        }
    }
}

#Preview {
    GiftView()
}
