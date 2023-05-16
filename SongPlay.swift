//
//  SongPlay.swift
//  Music App
//
//  Created by Tanya Cervantes on 5/12/23.
//

import SwiftUI
import AVKit

struct SongPlay: View {
    
    @State var audioPlayer: AVAudioPlayer!
    
    var body: some View {
        ZStack {
            VStack {
                
                Image("oceanblvd")
                    .resizable()
                    .frame(width: 100, height: 100)
                
                Text("Let The Light In")
                    .font(.system(size: 30))
                    .font(.largeTitle)
                
                HStack {
                    Spacer()
                    
                    Button(action: {
                        self.audioPlayer.play()
                    }) {
                        Image(systemName: "play.circle")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(CustomColor.mauve)
                            .aspectRatio(contentMode: .fit)
                    }
                    Spacer()
                    
                    Button(action: {
                        self.audioPlayer.pause()
                    }) {
                        Image(systemName: "pause.circle")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(CustomColor.mauve)
                            .aspectRatio(contentMode: .fit)
                    }
                    Spacer()
                }
            }
        }
        .onAppear {
            let sound = Bundle.main.path(forResource: "let_the_light_in", ofType: "mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
        
    }
}
