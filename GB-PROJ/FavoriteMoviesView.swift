import SwiftUI

struct FavoriteMoviesView: View {
    @StateObject private var viewModel = MovieViewModel()
    var body: some View {
        VStack{
            List{
                ForEach(viewModel.movies.docs ?? [], id: \.self){ movie in
                    
                        Text(movie.name)
                    }
                
            }
        }.onAppear {
            viewModel.fetchMovie(limit: 10)
            print(viewModel.movies.docs?.first?.description)
        }
    }
}

#Preview {
    FavoriteMoviesView()
}
