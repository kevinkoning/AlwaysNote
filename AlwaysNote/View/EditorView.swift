//
//  EditorView.swift
//  AlwaysNote
//
//  Created by Kief on 12/02/2026.
//

import SwiftUI

struct EditorView: View {
    @Binding var fontSize: CGFloat
    @State private var noteContents = "Lieve dagboek, \nVandaag heb ik op Avans geleerd hoe ik een notitie app moet maken."
    
    var body: some View {
        TextEditor(text: $noteContents)
            .scrollContentBackground(.hidden)
            .padding()
            .font(.custom("NoteWorthy-Bold", size: fontSize))
            .background(Color(.yellow).opacity(0.5))
            .padding(.horizontal, 12)
            .padding(.bottom, 12)
    }
    
}

#Preview {
    @State var a : CGFloat = 18
    EditorView(fontSize: $a)
}
