import SwiftUI

struct SongLibrary: View {
    
//    @State var artistArray : [Library] = [Library(artist: "Lana Del Rey", album: "", song: "")]
//
    @State var artists = ["Lana Del Rey", "Kali Uchis"]
    
    
    var body: some View {
        VStack {
            
            ForEach(0..<artists.count, id: \.self) { array in
                Button(artists[array]) {
                    
                }
            }
            
        }
    }
}
