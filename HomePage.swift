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
                Text("Shazamify")
                
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .background(Rectangle())
                    .foregroundColor(CustomColor.mauve)
                
                    .padding(10)
                
//                NavigationLink("Artists"){
//                    ArtistsView()
//                }
//                .buttonStyle(.borderedProminent)
//                .tint(CustomColor.mauve)
//
//                NavigationLink("Songs"){
//                    SongsView()
//                }
//                .buttonStyle(.borderedProminent)
//                .tint(CustomColor.mauve)
//
//                .padding(10)
//
//                NavigationLink("Albums"){
//
//                }
//                .buttonStyle(.borderedProminent)
//                .tint(CustomColor.mauve)
//
//                .padding(10)
                
                NavigationLink("Search"){
                    WKSearchView()
                }
                .buttonStyle(.borderedProminent)
                .tint(CustomColor.mauve)
                
                .padding(10)
                
                NavigationLink("Albums"){
                    ArtistsView()
                }
                .buttonStyle(.borderedProminent)
                .tint(CustomColor.mauve)
                .disabled(true)
                
                .padding(10)
                
                NavigationLink("Shazam"){
                    ShazamifyView()
                }
                .buttonStyle(.borderedProminent)
                .tint(CustomColor.mauve)
                
                .padding(10)
            }
            .navigationViewStyle(.stack)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(CustomColor.pale)
            
            
//            .toolbar {
//                ToolbarItemGroup(placement: .bottomBar) {
//                    NavigationLink(destination: ArtistsView()) {
//                        Image(systemName: "star")
//                            .font(.title)
//                            .foregroundColor(CustomColor.mauve)
//                    }
//
//                    NavigationLink(destination: SongsView()) {
//                        Image(systemName: "music.note")
//                            .font(.title)
//                            .foregroundColor(CustomColor.mauve)
//                    }
//                }
                
//                ToolbarItemGroup(placement: .navigationBarLeading) {
//                    NavigationLink(destination: HomePage()) {
//                        Image(systemName: "house.fill")
//                            .font(.title)
//                            .foregroundColor(CustomColor.mauve)
//                    }
//                }
                
                
                
//            }
            
        }
    }
}




