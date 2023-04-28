import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
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
                
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(CustomColor.pale)
            
            
        }
        
    }
}

struct CustomColor {
    static let pale = Color("pale")
    
    static let mauve = Color("mauve")
}
