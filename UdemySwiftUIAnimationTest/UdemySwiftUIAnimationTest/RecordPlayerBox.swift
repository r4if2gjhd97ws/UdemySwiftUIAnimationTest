//
//  RecordPlayerBox.swift
//  UdemySwiftUIAnimationTest
//
//  Created by yohei on 2024/09/14.
//

import SwiftUI

struct RecordPlayerBox: View {
    var body: some View {
        ZStack {
            Rectangle().frame(width: 345, height: 345).cornerRadius(10)
                .foregroundColor(.black)
            Image(.woodGrain).resizable().frame(width: 325, height: 325)
                .shadow(color: .white, radius: 3, x: 0, y: 0)
        }
    }
}

#Preview {
    RecordPlayerBox()
}
