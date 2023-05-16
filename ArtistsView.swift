import SwiftUI

struct ArtistsView: View {
    
    @State var artists = ["Lana Del Rey", "Kali Uchis"]
    
    var body: some View {
        VStack {
            NavigationLink(artists[0]) {
                LanaAlbumView()
            }
            .foregroundColor(CustomColor.mauve)
            
            .onTapGesture {
                print("Hello")
            }            
        }
        .navigationViewStyle(.stack)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(CustomColor.pale)
        
        
    }
}


struct LanaAlbumView: View {
    
    @State var lanaAlbums = ["Born to Die", "Lust for Life"]
    
    var body: some View {
        VStack {
            NavigationLink(lanaAlbums[0]) {
                BornToDie()
            }
            .buttonStyle(.borderedProminent)
            .tint(CustomColor.mauve)
            NavigationLink(lanaAlbums[1]) {
                LustForLife()
            }
            .buttonStyle(.borderedProminent)
            .tint(CustomColor.mauve)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(CustomColor.pale)
        
        
    }
}

struct BornToDie: View {
    @State var bornToDie = ["Born to Die", "Off to the Races", "Blue Jeans", "Video Games", "Diet Mountain Dew", "National Anthem", "Dark Paradise", "Radio", "Carmen", "Million Dollar Man", "Summertime Sadness", "This Is What Makes Us Girls", "Without you", "Lolita", "Lucky Ones", "Ride", "American", "Cola", "Body Electric", "Blue Velvet", "Gods & Monsters", "Yayo", "Bel Air"]
    var body: some View {
        
        VStack {
            ForEach(0..<bornToDie.count, id: \.self) { songs in
                Button(bornToDie[songs]) {
                    
                }
                .foregroundColor(CustomColor.mauve)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(CustomColor.pale)
        
        
    }
    
}


struct LustForLife: View {
    @State var lustForLife = ["Love", "Lust For Life (with The Weeknd)", "13 Beaches", "Cherry", "White Mustang", "Summer Bummer (feat. A$AP Rocky & Playboi Carti)", "Groupie Love (feat. A$AP Rocky)", "In My Feelings"]
    var body: some View {
        VStack {
            ForEach(0..<lustForLife.count, id: \.self) { songs in
                Button(lustForLife[songs]) {
                    
                }
                .foregroundColor(CustomColor.mauve)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(CustomColor.pale)
        
        
    }
}
