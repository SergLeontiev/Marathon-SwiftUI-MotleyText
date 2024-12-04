//
//  ContentView.swift
//  Marathon-SwiftUI-MotleyText
//
//  Created by Sergey Leontiev on 4.12.24..
//

import SwiftUI

struct ContentView: View {
    @State private var widthValue: CGFloat = 300
    
    var body: some View {
        VStack {
            GeometryReader { proxy in
                Group {
                    Text("Марафон ")
                        .foregroundColor(.gray) +
                    Text("по SwiftUI ") +
                    Text("«Отцовский пинок»")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                }
                .frame(width: proxy.size.width, height: proxy.size.height, alignment: .center)
            }
            .border(.red)
            .frame(width: widthValue, height: 200)
            
            Slider(value: $widthValue, in: 100...300, onEditingChanged: { _ in })
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
