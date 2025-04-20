//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by Atharv on 4/17/25.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    
    //Emoji Array (data)
    let emojis: [String] = ["🗿","🫡","🪓","💀","🦅","🚬","🔫","🧠","🦾","🍃","🪵","🚀"]

    var body: some View {
        
        ScrollView{
            cards
        }
        .padding()
    }
    
    
    
    
    
    //Cards List View
    var cards : some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 85))]){
            
            ForEach(emojis.indices, id: \.self){ index in
                CardView(content: emojis[index])
                    .aspectRatio(2/3, contentMode: .fit)
            }
            
        }
    }
    
}



//Card Element View
struct CardView: View {
    
    let content:String
    @State var isFaceUp = true
    
    var body: some View {
        
        ZStack{
            
            let base = RoundedRectangle(cornerRadius: 12)
            
            Group {
                base
                    .fill(.white)
                base
                    .strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            }
            .opacity(isFaceUp ? 1 : 0)
            
            base.fill().opacity(isFaceUp ? 0 : 1)
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}






















#Preview {
    EmojiMemoryGameView()
}
