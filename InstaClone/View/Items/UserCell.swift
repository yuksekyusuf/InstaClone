//
//  UserCell.swift
//  InstaClone
//
//  Created by Ahmet Yusuf Yuksek on 3/28/22.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            // image
            Image("r2d2")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            // vstack -> username, fullname
            VStack(alignment: .leading) {
                Text("r2d2")
                    .font(.system(size: 14, weight: .semibold))
                
                Text("Droid")
                    .font(.system(size: 14))
            }
            
            Spacer()
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
