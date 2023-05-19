import SwiftUI

extension View {
    func toAnyView() -> AnyView {
        AnyView(self)
    }
}

struct WKSearchView: View {
    @State private var showLoading = false
    var body: some View {
        VStack {
            WebView(url: URL(string: "https://www.youtube.com")!, showLoading: $showLoading)
                .overlay(showLoading ? ProgressView("Loading...").toAnyView():
                            EmptyView().toAnyView())
        }
    }
}

