import SwiftUI

struct CategoryView: View {

    var category: Category

    var body: some View {
        VStack(alignment: .center, spacing: 8)
        {
            HStack(alignment: .top, spacing: 10)
            {
                Image("covid")
                    .frame(width: 24, height: 24)
                    .clipShape(Circle())
            }
                .padding(24)
                .background(MyColors.MainBackground.SecondaryBackground)
                .cornerRadius(100)

            Text(category.name)
                .font(.custom(MyFonts.poppinsRegular, size: 15))
                .foregroundColor(MyColors.MyText.Secondary)
        }
            .padding(0)
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category(imageName: "covid", name: "virus"))
    }
}
