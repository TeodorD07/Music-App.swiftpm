import SwiftUI

struct ContentView: View {
    @State private var tabSelection = 0
    @State var colorTheme = true
    @State var backgroundTheme = Color.gray
    @State var buttonColor = Color.black
    var body: some View {



            VStack {



                TabView(selection: $tabSelection){
                    VStack {
                        
                        Text("Shazamify")
                        
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .background(Rectangle())
                            .tint(self.colorTheme ? CustomColor.mauve : buttonColor)
                            .padding(10)
                        
                       
                        Button {
                            tabSelection = 1
                        } label: {
                            Text("Search")
                    

                        }
                        .buttonStyle(.borderedProminent)
                        .tint(self.colorTheme ? CustomColor.mauve : buttonColor)
                        .padding(10)
                        Button {
                            tabSelection = 2
                        } label: {
                            Text("Shazam")
                                

                        }
                        .buttonStyle(.borderedProminent)
                        .tint(self.colorTheme ? CustomColor.mauve : buttonColor)
                        .padding(10)
                        
                        Button("Change Theme Color") {
                            self.colorTheme = false
                            
                            
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(self.colorTheme ? CustomColor.mauve : buttonColor)
                        .padding(10)
                        
                        if colorTheme == false {
                            Button("Back To Default") {
                                colorTheme = true
                            }
                            .buttonStyle(.borderedProminent)
                            .tint(self.colorTheme ? CustomColor.mauve : buttonColor)
                            .padding(10)
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(self.colorTheme ? CustomColor.pale : backgroundTheme)
                    
                   
                        .tabItem {
                            Label("Home", systemImage: "house")
                        }
                        .tag(0)


                    WKSearchView()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(self.colorTheme ? CustomColor.pale : backgroundTheme)
                        .tabItem {
                            Label("Artists", systemImage: "star")
                        }
                        .tag(1)

                    ShazamifyView()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(self.colorTheme ? CustomColor.pale : backgroundTheme)
                        .tabItem {
                            Label("Songs", systemImage: "heart")
                        }
                        .tag(2)
                }


            }



        }
        
    }
struct CustomColor {
    static let pale = Color("pale")
    
    static let mauve = Color("mauve")
}

