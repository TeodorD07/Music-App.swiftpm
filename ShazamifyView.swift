//
//  ShazamifyView.swift
//  Music App
//
//  Created by Teodor Djuric on 5/10/23.
//

import SwiftUI

struct ShazamifyView: View {
    
    @StateObject private var viewModel = ShazamifyViewModel()
    
    var body: some View {
        ZStack {
            AsyncImage(url: viewModel.shazamMedia.albumArtURL) { image in
                image
                    .resizable()
                    .scaledToFill()
                    .blur(radius: 10, opaque: true)
                    .opacity(0.5)
                    .edgesIgnoringSafeArea(.all)
            } placeholder: {
                EmptyView()
            }
            
            VStack(alignment: .center) {
                Spacer()
                AsyncImage(url: viewModel.shazamMedia.albumArtURL) { image in
                    image
                        .resizable()
                        .frame(width: 300, height: 300)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(10)
                } placeholder: {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(CustomColor.pale.opacity(0.5))
//                        .fill(Color.pink.opacity(0.5))
                        .frame(width:306, height: 300)
                        .cornerRadius(10)
                        .redacted(reason: .privacy)
                }
                VStack(alignment: .center) {
                    Text(viewModel.shazamMedia.title ?? "Title")
                        .font(.title)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(CustomColor.mauve)
                    Text(viewModel.shazamMedia.artistName ?? "Artist Name")
                        .font(.title2)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .foregroundColor(CustomColor.mauve)
                }.padding()
                Spacer()
                Button(action: {viewModel.startOrEndListening()}) {
                    Text(viewModel.isRecording ? "Listening..." : "Start Shazaming")
                        .frame(width: 300)
                        .foregroundColor(CustomColor.mauve)
                }.buttonStyle(.bordered)
                    .controlSize(.large)
//                    .controlProminence(.increased)
                    .shadow(radius: 4)
                
            }
        }
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
