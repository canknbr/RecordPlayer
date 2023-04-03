//
//  ContentView.swift
//  RecordPlayer
//
//  Created by Can Kanbur on 3.04.2023.
//

import SwiftUI

struct ContentView: View {
    @State var rotateRecord : Bool = false
    @State var rotateArm : Bool = false
    @State var shouldAnimate : Bool = false
    @State var degrees : Double = 0.0
    var body: some View {
        ZStack{
            RadialGradient(gradient: Gradient(colors: [.white,.black]), center: .center, startRadius: 0, endRadius: 100).ignoresSafeArea()
            RecordPlayerBox().offset(y:-100)
            VStack{
                RecordView(degrees: $degrees, shouldAnimate: $shouldAnimate)
                ArmView(rotateArm: $rotateArm)
                
                Button(action:{
                    shouldAnimate.toggle()
                    if shouldAnimate {
                        degrees = 36000
                        rotateArm.toggle()
                        playSound(sound: "music", type: "m4a")
                            
                    }else{
                        rotateArm.toggle()
                        degrees = 0
                        audioPlayer?.stop()
                    }
                }){
                    HStack( spacing: 12){
                        if !shouldAnimate {
                            Text("Play")
                            Image(systemName: "play.circle.fill")
                                .imageScale(.large)
                        }else{
                            Text("Stop")
                            Image(systemName: "stop.fill")
                                .imageScale(.large)
                        }
                    }.foregroundColor(.white)
                    .padding(.horizontal, 26)
                        .padding(.vertical,10)
                        .background(Capsule().strokeBorder(Color.white,lineWidth: 2))
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
