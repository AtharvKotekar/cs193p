//
//  ContentView.swift
//  Memorize
//
//  Created by Atharv on 4/17/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            CardView(isFaceUp: true)
            CardView(isFaceUp: false)
            CardView()
            CardView(isFaceUp: true)
        }
        .padding()
    }
}


struct CardView: View {
    
    @State var isFaceUp = true
    
    var body: some View {
        
        ZStack{
            
            let base = RoundedRectangle(cornerRadius: 12)
            
            if isFaceUp {
                base
                    .fill(.white)
                base
                    .strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            } else {
                base.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}






















#Preview {
    ContentView()
}
