//
//  SongPlay.swift
//  Music App
//
//  Created by Tanya Cervantes on 5/16/23.
//


import SwiftUI
import AVFoundation

var player: AVAudioPlayer!

struct SongPlay: View {
    var body: some View {
        VStack {
            Button(action: {
                playSound()
            }) {
                Image(systemName: "play.circle")
                    .foregroundColor(Color.pink)
                    .font(.system(size: 32))
            }
            
            Button(action: {
                pauseSound()
            }) {
                Image(systemName: "pause.circle")
                    .foregroundColor(Color.purple)
                    .font(.system(size: 32))
            }
        }
    }
        
        func playSound() {
            let url = Bundle.main.url(forResource: "let_the_light_in", withExtension: "mp3")
          
        //do nothing if url is empty
            guard url != nil else {
                return
            }
            
            do{
                player = try AVAudioPlayer(contentsOf: url!)
                player?.play()
            } catch {
                print("error")
            }
            
        }
    
    func pauseSound() {
        let url = Bundle.main.url(forResource: "let_the_light_in", withExtension: "mp3")
        
        guard url != nil else {
            return
        }
        
        do{
            player = try AVAudioPlayer(contentsOf: url!)
            player?.pause()
        } catch {
            print("error")
        }
    }
    }
