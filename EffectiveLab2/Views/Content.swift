import SwiftUI

struct Content: View {
    var body: some View {
        VStack(alignment: .center, spacing: 16.0)
        {
            ProfileBar()
            DoctorBar()
            CategoryList()
            SearchView()
            
            Text("Near Doctors")
                .font(.custom(MyFonts.poppinsBold, size: 16))
                .foregroundColor(MyColors.MyText.Primary)
            
            NearDoctorList()
        }
            .padding(24)
    }
}

struct Content_Previews: PreviewProvider {
    static var previews: some View {
        Content()
    }
}
