//
//  XmasView.swift
//  SwiftUI Animations
//
//  Created by Sofo Machurishvili on 23.12.23.
//

import SwiftUI
import EffectsLibrary

struct XmasView: View {
    @State var isAnimating = false
    @State var isAlertShowed = false
    
    var body: some View {
        Spacer()
        ZStack{
            Image("Xmas2")
            VStack {
                
                Text("“Two heads are better than one, and a team of heads is even better.”")
                    .multilineTextAlignment(.center)
                    .font(.title3)
                    .foregroundStyle(.red)
                    .fontWeight(.bold)
                    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                    .frame(width: 350, height: 150)
                
                HStack {
                    Image("new4")
                        .resizable()
                        .frame(width: 68, height: 68)
                    
                    Image("new1")
                        .resizable()
                        .frame(width: 68, height: 68)
                    
                    Image("new2")
                        .resizable()
                        .frame(width: 68, height: 68)
                    
                    Image("new3")
                        .resizable()
                        .frame(width: 68, height: 68)
                    
                    Image("new4")
                        .resizable()
                        .frame(width: 68, height: 68)
                }
                .offset(y: -50)
                
            }
            .frame(width: 370, height: 150)
            .offset(y: -330)
            
        }
        .overlay {
            FireworksView()
                .overlay {
                    ZStack {
                        Image("XmasTree")
                            .resizable()
                            .frame( width: isAnimating ? 300 : 500, height: isAnimating ? 300 : 500)
                            .onAppear() {
                                withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                                    isAnimating.toggle()
                                    
                                }
                            }
                        Text("Happy New Year to the best Team and to the best Mentors!")
                            .multilineTextAlignment(.center)
                            .frame(width: 350, height: 150)
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                            .opacity(0.8)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                    .offset(y: 100)
                }
            
        }
        
    }
}

#Preview {
    XmasView()
}
