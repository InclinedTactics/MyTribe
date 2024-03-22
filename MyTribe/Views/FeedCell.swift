//
//  FeedCell.swift
//  MyTribe
//
//  Created by J. DeWeese on 3/21/24.
//

import SwiftUI

struct FeedCell: View {
    
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.20)
                .ignoresSafeArea()
            
            
            VStack(alignment: .leading){
                
                
                
               //MARK: USERNAME
                HStack{
                    VStack(alignment: .center) {
    
                        Text("@inclinedTactics")
                            .fontDesign(.serif)
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundStyle(.primary)
                            .padding(.horizontal, 90)
                            .padding(.bottom, 1)
                        Text("• Missouri, USA")
                            .fontDesign(.serif)
                            .font(.system(size: 15))
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                            .padding(.horizontal)
                            .shadow(color: .black, radius: 1, x:2, y: 2)
                    }.padding(2)
                }.padding(.top, 2)
                    ///image
                    ZStack {
                        VStack {
                            Spacer()
                            HStack{
                                Spacer()
                                VStack{
                                    Image(systemName: "bubble.left")
                                        .foregroundStyle(.white)
                                        .font(.system(size: 27.0))
                                        .frame(width: 25, height: 25)
                                        .shadow(color: .black, radius: 1, x:2, y: 2)
                                }
                                .padding(.trailing, 50)
                                .padding(.bottom, 50)
                            }
                        }
                        .zIndex(1.0)
                        VStack{
                            Image("boys")
                                .resizable()
                                .scaledToFit()
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                            Text("Comments")
                                .foregroundStyle(.secondary)
                                .fontWeight(.semibold)
                                .fontDesign(.serif)
                            Spacer()
                        }
                        
                        VStack{
                            HStack{
                                RoundedRectangle(cornerRadius: 10.0)
                                    .foregroundStyle(.blue)
                                    .frame(width: 40, height: 40)
                                    .overlay {
                                        Image("nullProfile")
                                            .resizable()
                                            .scaledToFit()
                                            .clipShape(Circle())
                                            .padding(3)
                                    }
                                    .shadow(color: .gray, radius: 2, x:2, y: 2)
                                    .padding(.leading)
                               Spacer()
                            }
                            .offset(x: 10, y: -50)
                            .padding(.horizontal)
                            Spacer()
                        }
                      
                       
                    }
                }
            
           .frame(width: UIScreen.main.bounds.width, height:600)
            }
        }
    }

#Preview {
    FeedCell()
}
