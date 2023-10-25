//  */
//
//  Project: ParallaxEffect
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 24.10.2023
//
//  */

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // content
        VStack {
            ScrollView {
                ParallaxEffect()
                ContentList()
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}

struct ParallaxEffect: View {
    var body: some View {
        GeometryReader(content: { geometry in
            let offsetY = geometry.frame(in: .global).minY
            let isScrolled = offsetY > 0
           Spacer()
            
            // background
                .frame(height: 400)
                .background {
                    Image("ai")
                        .resizable()
                        .scaledToFit()
                        .offset(y: isScrolled ? -offsetY : 0)
                }
        })
        .frame(height: 400)
    }
}
 // MARK: Content List
struct ContentList: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            ForEach(0..<10) { _ in
                RoundedRectangle(cornerRadius: 15, style: .circular)
                    .frame(width: 120, height: 30)
                VStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 15, style: .continuous)
                        .frame(width: 280, height: 25)

                    RoundedRectangle(cornerRadius: 15, style: .continuous)
                        .frame(width: 210, height: 25)
                    
                    RoundedRectangle(cornerRadius: 15, style: .continuous)
                        .frame(width: 150, height: 25)
                }
                .opacity(0.4)
            }
            .opacity(0.3)
            .padding(.leading)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.top)
    }
}
