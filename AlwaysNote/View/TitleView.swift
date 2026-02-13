//
//  TitleView.swift
//  AlwaysNote
//
//  Created by Kief on 12/02/2026.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        VStack {
            Text("AlwaysNote")
                .font(.custom("Hoefler Text", size: 60))
                .foregroundStyle(.yellow)
        }
    }
}

#Preview {
    TitleView()
}
