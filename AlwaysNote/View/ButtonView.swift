//
//  ButtonView.swift
//  AlwaysNote
//
//  Created by Kief on 12/02/2026.
//

import SwiftUI

struct ButtonView: View {
    //var editorView = EditorView(fontSize: 18)
    var decreaseAction: () -> Void = {}
    var increaseAction: () -> Void = {}
    var saveAction: () -> Void = {}

    var body: some View {
        HStack {
            Button {
                saveAction()
            } label: {
                Text("Save")
                    .padding()
            }
            
            Spacer()
            Spacer()
            
            Button {
               decreaseAction()
        
            } label: {
                Text("a")
                    .padding()
            }
            
            Spacer()
            
            Button {
                increaseAction()
            } label: {
                Text("A")
                    .padding()
            }
        }
        .padding()
        
        Spacer()
    }
    

}

#Preview {
    ButtonView()
}
