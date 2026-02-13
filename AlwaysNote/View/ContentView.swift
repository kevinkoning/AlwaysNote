//
//  ContentView.swift
//  AlwaysNote
//
//  Created by Kief on 12/02/2026.
//

import SwiftUI

struct ContentView: View {
    @State var fontSize: CGFloat = 18
    var body: some View {
        ZStack {
            HeaderView()
            VStack {
                TitleView()
                ButtonView(decreaseAction: {
                    decreaseFontSize() })
                EditorView(fontSize: $fontSize)
            }
        }
    }
    
    
    func decreaseFontSize() {
        fontSize = max(fontSize - 1, 8)
    }
}

#Preview {
    ContentView()
}
