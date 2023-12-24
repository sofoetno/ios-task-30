//
//  TbcAcademyView.swift
//  SwiftUI Animations
//
//  Created by Sofo Machurishvili on 23.12.23.
//

import SwiftUI
import EffectsLibrary

struct TbcAcademyView: View {
    @State var largeTitle = false
    
    var body: some View {
        
        ZStack {
            Text("Happy Christmas TBC IT Acamdey")
                .font(largeTitle ? .title2 : .body)
            
                .foregroundColor(largeTitle ? .red : .blue)
                .fontWeight(largeTitle ? .bold : .semibold)
                .onAppear(){
                    withAnimation(.linear (duration: 2.8).repeatForever(autoreverses: true)) {
                        largeTitle.toggle()
                    }
                }
        }
        
    }
}

#Preview {
    TbcAcademyView()
}
