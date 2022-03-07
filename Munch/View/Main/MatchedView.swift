//
//  MatchedView.swift
//  Munch
//
//  Created by Samuel Alake on 2/5/22.
//

import SwiftUI

struct MatchedView: View {
    @Namespace var namespace
    @State var show = false
    
    var body: some View {
        HStack {
            if !show {
                
                VStack {
                    Spacer()
                    VStack(alignment: .leading, spacing: 8) {
                        Text("SwiftUI")
                            .font(.largeTitle).bold()
                        .matchedGeometryEffect(id: "title", in: namespace)
                        
                        Text("20 Sections - 3 hours".uppercased())
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .matchedGeometryEffect(id: "subtitle", in: namespace)
                        
                        Text("Build an iOS app for iOS 15 with custom layouts, animations, and learn new concepts on so many things")
                            .font(.footnote)
                            .lineLimit(2)
                            .matchedGeometryEffect(id: "description", in: namespace)
                    }
                    .padding()
                    .background(
                        Rectangle()
                            .fill(.ultraThinMaterial)
                            .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                            .blur(radius: 30)
                            .matchedGeometryEffect(id: "blur", in: namespace)
                    )
                    
//                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                }
                .frame(height: 300)
                
                .foregroundColor(.white)
                .background(
                    Image("recipeImage")
                    .resizable()
                        .aspectRatio(contentMode: .fill)
                        .matchedGeometryEffect(id: "image", in: namespace))
//                .background(
//                    Color.green.matchedGeometryEffect(id: "background", in: namespace))
                .mask(
                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                        .matchedGeometryEffect(id: "mask", in: namespace)
                )
                //.clipped()
//                .cornerRadius(8).matchedGeometryEffect(id: "radius", in: namespace)
                .padding()
                
                
            }else{
                ScrollView {
                    
                    VStack {
                        Spacer()
                        
                        //.frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .frame(maxWidth: .infinity)
                    
                    .frame(height: 300)
                    .padding()
                    .foregroundColor(.white)
                    .background(
                        Image("recipeImage")
                        .resizable()
                            .aspectRatio(contentMode: .fill)
                            .matchedGeometryEffect(id: "image", in: namespace))
//                    .background(
//                        Color.green.matchedGeometryEffect(id: "background", in: namespace))
                    .mask(
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            .matchedGeometryEffect(id: "mask", in: namespace)
                    )
                    .overlay(
                        VStack(alignment: .leading, spacing: 8){
                            
                            Text("SwiftUI")
                                .font(.largeTitle).bold()
                                .matchedGeometryEffect(id: "title", in: namespace)
                            Text("20 Sections - 3 hours".uppercased())
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .matchedGeometryEffect(id: "subtitle", in: namespace)
                            Text("Build an iOS app for iOS 15 with custom layouts, animations, and learn new concepts on so many things")
                                .font(.footnote)
                                .lineLimit(2)
                                .matchedGeometryEffect(id: "description", in: namespace)
                            
                            Divider()
                            
                            HStack{
                                Image(systemName: "person.crop.circle")
                                Text("Taught by Meng To")
                            }
                            
                        }
                            .padding(20)
                            .background(
                                Rectangle()
                                    .fill(.ultraThinMaterial)
                                    .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                                    .matchedGeometryEffect(id: "blur", in: namespace)
                            )
                            .offset(y: 200)
                    )
    //                .cornerRadius(8).matchedGeometryEffect(id: "radius", in: namespace)
                .padding()
                }
                            }
        }
        .onTapGesture {
            withAnimation(.spring(response: 0.6, dampingFraction: 0.8)){
                show.toggle()
            }
        }
    }
}

struct MatchedView_Previews: PreviewProvider {
    static var previews: some View {
        MatchedView()
    }
}
