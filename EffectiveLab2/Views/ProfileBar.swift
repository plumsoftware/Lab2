import SwiftUI

struct ProfileBar: View {

    let user: User = User(icon: "profile", name: "Slava")

    var body: some View {
        HStack(alignment: .leading) {
            Text("Hello,")
                .font(.custom(MyFonts.poppinsRegular, size: 14.0, .fontWeight(.regular)))
                .foregroundColor(ColorTheme.MyText.Secondary)
            Text("Hi " + user.name)
                .font(.custom(MyFonts.poppinsRegular, size: 20, .fontWeight(.bold)))
            
            Spacer()
            
            Image(user.imageAvatarName)
                .resizable()
                .frame(width: 56, height: 56)

        }
        .padding(0)
        .frame(width: .infinity, alignment: .center)
    }
}

struct ProfileBar_Previews: PreviewProvider {
    static var previews: some View {
        ProfileBar()
    }
}
