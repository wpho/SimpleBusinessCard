//
//  ContentView.swift
//  WynnCard
//
//  Created by Wynn Pho on 9/1/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.13, green: 0.65, blue: 0.70, opacity: 1)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("headshot-cropped")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Wynn Pho")
                    .font(Font.custom("Quicksand-Regular", size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(.bottom, 5.0)
                Text("Web Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
//                ZStack {
//                    RoundedRectangle(cornerRadius: 50)
//                        .frame(height: 50.0)
//                        .foregroundColor(.white)
//                        .padding()
//                    HStack {
//                        Image(systemName: "phone.fill")
//                            .foregroundColor(Color(red: 0.49, green: 0.84, blue: 0.87))
//                        Text("+1 669-225-9193")
//                            .font(.system(size: 15))
//                            .fontWeight(.semibold)
//                    }
//                }
                InfoView(text: "+1 669-225-9193", imageName: "phone.fill")
                InfoView(text: "wynn.pho@gmail.com  ", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

