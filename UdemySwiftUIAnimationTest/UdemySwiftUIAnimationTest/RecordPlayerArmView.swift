//
//  RecordPlayerArmView.swift
//  UdemySwiftUIAnimationTest
//
//  Created by yohei on 2024/09/14.
//

import SwiftUI

struct RecordPlayerArmView: View {
    @Binding var rotateArm: Bool
    var body: some View {
        Image(.playerArm).resizable().aspectRatio(contentMode: .fit)
            .frame(width: 150, height: 150)
            .shadow(color: .gray, radius: 2)
            .rotationEffect(.degrees(-35), anchor: .topTrailing)
            .rotationEffect(.degrees(rotateArm ? 8 : 0 ), anchor: .topTrailing)
            .offset(x: 70, y: -250)
    }
}

#Preview {
    RecordPlayerArmView(rotateArm: .constant(true))
}
