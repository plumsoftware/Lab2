import SwiftUI

struct SerchField: View {

    @State private var text: String = ""

    var body: some View {
        HStack(alignment: .center, spacing: 12) 
        {
            Image("search")
                .resizable()
                .frame(width: 24, height: 24)
                .colorMultiply(MyColors.MyText.Secondary)
            TextField("", text: $text, prompt:
                    Text("Search doctor or health issue")
                        .foregroundColor(MyColors.MyText.Secondary))
            .font(Font.custom(MyFonts.poppinsRegular, size: 15))
                .padding(.vertical, 16)
        }
            .frame(width: .infinity, alignment: .leading)
            .background(MyColors.MainBackground.SecondaryBackground)
            .cornerRadius(12)
    }
}

struct SerchField_Previews: PreviewProvider {
    static var previews: some View {
        SerchField()
    }
}
