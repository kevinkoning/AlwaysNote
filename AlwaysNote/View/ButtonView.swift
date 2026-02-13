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

    var body: some View {
        HStack {
            Button {
                print("Button save tapped")
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
                print("Button A tapped")
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
