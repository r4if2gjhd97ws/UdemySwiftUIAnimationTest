//
//  ContentView.swift
//  UdemySwiftUIAnimationTest
//
//  Created by yohei on 2024/09/14.
//

import SwiftUI

struct ContentView: View {

    @State private var scaleInOut = false
    @State private var rotateInOut = false
    @State private var moveInOut = false


    var body: some View {
        ZStack {
            Rectangle()
                .edgesIgnoringSafeArea(.all)
            ZStack {
                // Circle set 1
                ZStack {
                    Circle().fill(LinearGradient(gradient: Gradient(colors: [.green, .white]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? -60 : 0)


                    Circle().fill(LinearGradient(gradient: Gradient(colors: [.green, .white]), startPoint: .bottom, endPoint: .top))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? 60 : 0)



                }.opacity(0.5)

                // Circle set 2
                ZStack {
                    Circle().fill(LinearGradient(gradient: Gradient(colors: [.green, .white]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? -60 : 0)


                    Circle().fill(LinearGradient(gradient: Gradient(colors: [.green, .white]), startPoint: .bottom, endPoint: .top))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? 60 : 0)



                }.opacity(0.5)
                    .rotationEffect(.degrees(60))

                // Circle set 3
                ZStack {
                    Circle().fill(LinearGradient(gradient: Gradient(colors: [.green, .white]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? -60 : 0)


                    Circle().fill(LinearGradient(gradient: Gradient(colors: [.green, .white]), startPoint: .bottom, endPoint: .top))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? 60 : 0)



                }.opacity(0.5)
                    .rotationEffect(.degrees(120))
            }
                .rotationEffect(.degrees(rotateInOut ? 90 : 0))
                .scaleEffect(scaleInOut ? 1 : 1 / 4)
                .animation(.easeInOut.repeatForever(autoreverses: true).speed(1 / 8))
                .onAppear {
                moveInOut.toggle()

                scaleInOut.toggle()
                rotateInOut.toggle()
            }
        }

    }
}

#Preview {
    ContentView()
}
