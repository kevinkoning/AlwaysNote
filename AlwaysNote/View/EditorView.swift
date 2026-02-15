//
//  EditorView.swift
//  AlwaysNote
//
//  Created by Kief on 12/02/2026.
//

import SwiftUI

struct EditorView: View {
    @Binding var fontSize: CGFloat
    @Binding var noteContents: String
    
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
    @State var b : String = "This is a note. You can edit it!"
    EditorView(fontSize: $a, noteContents: $b)
}
