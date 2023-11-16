import SwiftUI

struct Content: View {
    var body: some View {
        VStack(alignment: ., spacing: 16.0)
        {
            ProfileBar()
            DoctorBar()
            CategoryList()
            Text("Near Doctors")
                .font(.custom(MyFonts.poppinsBold, size: 16))
                .foregroundColor(MyColors.Text.Primary)
        }
            .padding(24)
    }
}

struct Content_Previews: PreviewProvider {
    static var previews: some View {
        Content()
    }
}
