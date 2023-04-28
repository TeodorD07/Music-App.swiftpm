import SwiftUI

struct AristsView: View {

    @State var artists = ["Lana Del Rey", "Kali Uchis"]
    
    var body: some View {
        VStack {
            NavigationLink(artists[0]) {
                LanaAlbumView()
                }
            .onTapGesture {
                print("Hello")
            }
        }
    }
}


struct LanaAlbumView: View {
    
    @State var lanaAlbums = ["Born to Die", "Lust for Life"]
    
    var body: some View {
        VStack {
            NavigationLink(lanaAlbums[0]) {
                BornToDie()
            }
        }
    }
}

struct BornToDie: View {
    @State var bornToDie = ["Ride", "Summertime Sadness"]
    var body: some View {
        VStack {
            ForEach(0..<bornToDie.count, id: \.self) { songs in
                Button(bornToDie[songs]) {
                    
                }
            }
        }
    }
}
