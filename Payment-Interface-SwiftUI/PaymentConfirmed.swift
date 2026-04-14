import SwiftUI

public struct Payment_Confirmed: View {
    public var body: some View {
        VStack{
            ScrollView(.vertical){
                VStack{
                    
                    Text("Pagamento confirmado")
                        .font(Font.custom("helvetica", size: 28))
                        .bold()
                        .foregroundColor(.verdeTitulo)
                        .padding(.top, 90)
                        .padding(.bottom, 40)
                    
                    Spacer()
                    
                    HStack{
                        Image(systemName: "checkmark.circle")
                            .imageScale(.large)
                        Text("R$ 36,90")
                            .font(Font.custom("helvetica", size: 45))
                            .bold()
                    }
                    
                    
                    .frame(width: 317, alignment: .leading)
                    .padding(.bottom, 40)
                    

                    VStack{
                        Text("Sobre a transação")
                            .frame(maxWidth: 317, alignment: .leading)
                            .font(Font.custom("Helvetica", size: 22))
                            .bold()
                            .padding(.top, 100)
                        VStack{
                            HStack{
                                Text("Data")
                                    .font(Font.custom("Helvetica", size: 18))
                                    .bold()
                                Spacer()
                                Text("Segunda-feira, 23/03/2026")
                            }
                            HStack{
                                Text("Horário")
                                    .font(Font.custom("Helvetica", size: 18))
                                    .bold()
                                Spacer()
                                Text("16h45")
                            }
                            HStack{
                                Text("ID da transação")
                                    .font(Font.custom("Helvetica", size: 18))
                                    .bold()
                                Spacer()
                                Text("#AWK2345LGU2")
                            }
                        } .padding(.top, 10)
                            
                        DottedLine()
                            .stroke(style: StrokeStyle(lineWidth: 1, dash: [1.5]))
                            .frame(height: 2)
                            .foregroundColor(.black)
                            .padding(.top, 16)
                            .padding(.bottom, 10)
                        
                            
                        VStack{
                            Text("Dados do recebedor")
                                .frame(maxWidth: 317, alignment: .leading)
                                .font(Font.custom("Helvetica", size: 22))
                                .bold()
                            VStack{
                                
                                HStack{
                                    Text("Nome")
                                        .font(Font.custom("Helvetica", size: 18))
                                        .bold()
                                    Spacer()
                                    Text("Fulano")
                                }
                                HStack{
                                    Text("CPF")
                                        .font(Font.custom("Helvetica", size: 18))
                                        .bold()
                                    Spacer()
                                    Text("XXX.XXX.XXX-XX")
                                }
                                HStack{
                                    Text("Instituicao")
                                        .font(Font.custom("Helvetica", size: 18))
                                        .bold()
                                    Spacer()
                                    Text("Wolf Bank")
                                }
                                
                            }.padding(.top, 10)
                        }
                        
                        DottedLine()
                            .stroke(style: StrokeStyle(lineWidth: 1, dash: [1.5]))
                            .frame(height: 2)
                            
                            .foregroundColor(.black)
                            .padding(.top, 16)
                            .padding(.bottom, 10)
                        
                        VStack{
                            Text("Dados do pagador")
                                .frame(maxWidth: 320, alignment: .leading)
                                .font(Font.custom("Helvetica", size: 22))
                                .bold()
                            
                            VStack{
                                
                                HStack{
                                    Text("Nome")
                                        .font(Font.custom("Helvetica", size: 18))
                                        .bold()
                                    Spacer()
                                    Text("Fulano")
                                }
                                HStack{
                                    Text("CPF")
                                        .font(Font.custom("Helvetica", size: 18))
                                        .bold()
                                    Spacer()
                                    Text("XXX.XXX.XXX-XX")
                                }
                                HStack{
                                    Text("Instituicao")
                                        .font(Font.custom("Helvetica", size: 18))
                                        .bold()
                                    Spacer()
                                    Text("Wolf Bank")
                                }
                                
                            }.padding(.top, 10)
                        }
                    }
                    
                    .frame(width: 315, height: 339)
                    
                    .frame(maxWidth: .infinity)
                    
                    
                }  .ignoresSafeArea()
                
                    .scrollBounceBehavior(.basedOnSize)
                
                
            }
            
            
            
            .ignoresSafeArea(.all, edges: .all)
            
            VStack{
                Spacer()
                
                Continue_Button(destino: HomeView(), texto: "Compartilhar")
                    .frame(width: 285, height: 51)
                    .cornerRadius(15)
                
                Spacer()
                
                Continue_Button(destino: HomeView(), texto: "Página inicial")
                    .fontWeight(.thin)
                Spacer()
                Spacer()
            }
            .frame(width: 402 , height: 269)
            .background(Color.cinzaFundoBotoes)
            
            .clipShape(
                UnevenRoundedRectangle(topLeadingRadius: 30, topTrailingRadius: 30)
            )
            
        }

        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
        
        
        
    }
       
} 

#Preview {
    Payment_Confirmed()
}
