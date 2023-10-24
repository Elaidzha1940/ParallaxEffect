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
        
        VStack {
         
        }
    }
}

#Preview {
    ContentView()
}

struct ContentList: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            ForEach(0..<10) { _ in
                RoundedRectangle(cornerRadius: 15, style: .continuous)
                    .frame(width: 120, height: 30)
                VStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 15, style: .continuous)
                        .frame(width: 250, height: 25)

                    RoundedRectangle(cornerRadius: 15, style: .continuous)
                        .frame(width: 250, height: 25)
                    
                    RoundedRectangle(cornerRadius: 15, style: .continuous)
                        .frame(width: 150, height: 25)
                }
                .opacity(0.4)
            }
            .padding(.leading)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.top)
    }
}
