//
//  AlbumView.swift
//  Music App
//
//  Created by Tanya Cervantes on 4/28/23.
//

import SwiftUI

struct SongsView:  View {
    var body: some View {
        NavigationView{
            Form{
                Section{
                    Text("Summertime Sadness")
                }
                .buttonStyle(.borderedProminent)
                .tint(CustomColor.mauve)
            }
            .navigationTitle("Songs")
            .navigationBarTitleDisplayMode(.inline)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(CustomColor.pale)
        }
        
    }
}
