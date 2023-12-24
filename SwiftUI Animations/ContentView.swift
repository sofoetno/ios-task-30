//
//  ContentView.swift
//  SwiftUI Animations
//
//  Created by Sofo Machurishvili on 23.12.23.
//
import EffectsLibrary
import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        NavigationStack {
            Spacer()
            VStack {
                SnowView()
                TbcAcademyView()
                SwiftUIXmasTree2()
            }
            .offset(y: -200)
            
            Spacer()
            
            VStack {
                GiftView()
            }

        }    
    }
}


#Preview {
    ContentView()
}
