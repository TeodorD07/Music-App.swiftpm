import SwiftUI

struct ArtistsView: View {

    @State var artists = ["Lana Del Rey", "Kali Uchis"]
    
    var body: some View {
        VStack {
            NavigationLink(artists[0]) {
                LanaAlbumView()
                }
//            .buttonStyle(.borderedProminent)
//            .tint(CustomColor.mauve)
            .onTapGesture {
                print("Hello")
            }
        }
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
//            .buttonStyle(.borderedProminent)
//            .tint(CustomColor.mauve)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(CustomColor.pale)
    }
}

struct BornToDie: View {
    @State var bornToDie = ["Ride", "Summertime Sadness"]
    var body: some View {
        VStack {
            ForEach(0..<bornToDie.count, id: \.self) { songs in
                Button(bornToDie[songs]) {
                    
                }
//                .buttonStyle(.borderedProminent)
//                .tint(CustomColor.mauve)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(CustomColor.pale)
    }
}
