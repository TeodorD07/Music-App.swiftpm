import SwiftUI

struct ContentView: View {
    
    var body: some View {
        

            
            VStack {

                
                TabView{
                    
                    HomePage()
                        .tabItem {
                            Label("Home", systemImage: "house")
                        }
                    
                    ArtistsView()
                        .tabItem {
                            Label("Artists", systemImage: "star")
                        }
                    
                    SongsView()
                        .tabItem {
                            Label("Songs", systemImage: "heart")
                        }
                }
                
            }
            
            
            
        }
        
    }


struct CustomColor {
    static let pale = Color("pale")
    
    static let mauve = Color("mauve")
}
