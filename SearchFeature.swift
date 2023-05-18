
import SwiftUI
import MusicKit

struct Item : Identifiable, Hashable {
    var id = UUID()
    let name: String
    let artist: String
    let ImageURL : URL?
}
struct SearchView: View {
    @State var songs = [Item]()
    var body: some View {
        
        NavigationView {
            List(songs) { song in
                HStack {
                    AsyncImage(url: song.ImageURL)
                        .frame(width: 75, height: 75, alignment: .center)
                    VStack {
                        Text(song.name)
                            .font(.title3)
                        Text(song.artist)
                            .font(.footnote)
                    }
                    .padding()
                }
            }
        }
        .onAppear {
            fetchMusic()
        }
    }

    
    private let request: MusicCatalogSearchRequest = {
        var request = MusicCatalogSearchRequest(term: "Happy",
                                                types: [Song.self])
        request.limit = 5
        return request
    }()
       
    
    
    private func fetchMusic() {
        Task {
            let status = await MusicAuthorization.request()
            switch status {
            case .authorized:
                
                do {
                    let result = try await request.response()
                    self.songs = result.songs.compactMap({
                        return .init(name: $0.title, artist: $0.artistName, ImageURL: $0.artwork?.url(width: 75, height: 75))
                    })
                    print(String(describing: songs[0]))
                } catch {
                  print("Errrorrr")
                }
                
            default:
                break
            }
        }
    }
}

