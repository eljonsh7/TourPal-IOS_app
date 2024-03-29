import SwiftUI

struct HomeView: View {
    struct Item {
        var image: Image
        var title: String
        var description: String
    }
    
    let items: [Item] = [
        Item(image: Image("landscape"), title: "Title 1", description: "Description 1"),
        Item(image: Image("landscape"), title: "Title 2", description: "Description 2"),
        Item(image: Image("landscape"), title: "Title 3", description: "Description 3"),
    ]
    
    var body: some View {
        ScrollView {
            ForEach(items, id: \.title) { item in
                VStack {
                    GeometryReader { geometry in
                        item.image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: geometry.size.width)
                            .clipped()
                    }
                    .padding(.bottom, 8)
                    
                    VStack(alignment: .leading) {
                        Text(item.title)
                            .font(.title)
                            .multilineTextAlignment(.leading)
                        
                        Text(item.description)
                            .font(.body)
                            .multilineTextAlignment(.leading)
                    }
                    .padding(.horizontal)
                }
                .frame(height: 340)
                .padding(.bottom, 14)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


#Preview {
    HomeView()
}
