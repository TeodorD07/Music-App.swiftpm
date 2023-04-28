//
//  HomePage.swift
//  Music App
//
//  Created by Tanya Cervantes on 4/28/23.
//

import SwiftUI

struct HomePage: View  {
    var body: some View{
        
        NavigationView{
            VStack {
                Text("App Name")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                
                    .padding(10)
                
                NavigationLink("Artists"){
                    ArtistsView()
                }
                .buttonStyle(.borderedProminent)
                .tint(CustomColor.mauve)
                
                NavigationLink("Songs"){
                    SongsView()
                }
                .buttonStyle(.borderedProminent)
                .tint(CustomColor.mauve)
                
                .padding(10)
                
                NavigationLink("Albums"){
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(CustomColor.mauve)
                
                .padding(10)
                
                NavigationLink("Search"){
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(CustomColor.mauve)
                
                .padding(10)
                
                NavigationLink("Shazam"){
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(CustomColor.mauve)
                
                .padding(10)
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(CustomColor.pale)
        }
    }
}
