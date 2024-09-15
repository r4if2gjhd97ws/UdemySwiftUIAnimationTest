//
//  RecordPlayer.swift
//  UdemySwiftUIAnimationTest
//
//  Created by yohei on 2024/09/14.
//

import SwiftUI

struct RecordPlayer: View {

    @State private var rotateRecord = false
    @State private var rotateArm = false
    @State private var shouldAnimate = false
    @State private var degrees = 0.0


    @State private var scaleInOut = false
    @State private var rotateInOut = false
    @State private var moveInOut = false


    var body: some View {
        ZStack {
            RadialGradient(gradient: .init(colors: [.white, .black]), center: .center, startRadius: 20, endRadius: 600)
                .scaleEffect(1.2)
            RecordPlayerBox().offset(y: -100)


            VStack {
                RecordView(degrees: $degrees, shouldAnimate: $shouldAnimate)

                RecordPlayerArmView(rotateArm: $rotateArm)
                
                Button(action: {
                    shouldAnimate.toggle()
                    if shouldAnimate {
                        degrees = 36000
                        rotateArm.toggle()
                    } else {
                        rotateArm.toggle()
                        degrees = 0
                    }
                }, label: {
                        HStack(spacing: 8, content: {
                            if !shouldAnimate {
                                Text("play")
                                Image(systemName: "play.circle.fill")
                                    .imageScale(.large)
                            } else {
                                Text("Stop")
                                Image(systemName: "stop.fill")
                                    .imageScale(.large)
                            }
                        })
                            .padding(.horizontal, 16)
                            .padding(.vertical, 10)
                            .background(Capsule().strokeBorder(Color.black, lineWidth: 1.25))
                    })
            }
        }
    }
}

#Preview {
    RecordPlayer()
}
