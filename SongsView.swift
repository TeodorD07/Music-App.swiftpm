//
//  AlbumView.swift
//  Music App
//
//  Created by Tanya Cervantes on 4/28/23.
//

import SwiftUI


struct SongsView:  View {
    
    var body: some View {
        VStack{
            NavigationLink("Let The Light In"){
                SongPlay()
            }
            .buttonStyle(.borderedProminent)
            .tint(CustomColor.mauve)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(CustomColor.pale)
    }
}

