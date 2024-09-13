//
//  Model.swift
//  Movlingo
//
//  Created by Turma02-25 on 09/09/24.
//

import SwiftUI

enum Lingua: String, CaseIterable, Identifiable{
    case Ingles = "Inglês"
    case Japones = "japonês"
    case Espanhol = "espanhol"
    
    var id: String { self.rawValue }
}

struct globalVariable: Decodable,Hashable{
    public var manipulaFav : Bool
    public var manipulaVm: Bool
    public var nome: String
}
enum Genero: String, CaseIterable, Identifiable{
    case Ação = "Ação"
    case Romance = "Romance"
    case Terror = "terror"
    case fantasia = "fantasia"
    case melodrama = "melodrama"
    case comédia = "comédia"
    case Supernatural = "Supernatural"
    
    var id: String { self.rawValue }
}
struct Filme: Hashable ,Decodable{
    let _id: String
    let _rev: String
    let nome :String
    let idioma: String
    let descrição: String
    let Url: String
    let favorito: Bool
    let Classificação: Int
    let assistirMt: Bool
    let gênero: String
}
struct perguntas: Hashable,Decodable{
    var idioma: String
    var Questao:String
    var Alternativa1:String
    var Alternativa2:String
    var Alternativa3:String
    var Alternativa4:String
    var Resposta: Int
}
struct Cards: Codable, Hashable{
    let _id: String
    let _rev: String
    let pergunta: String
    let resposta: String
}


//struct Desafios: View {
//    @State var favEver = [globalVariable(manipulaFav: false, manipulaVm: false, nome: "Kimi no na wa"),globalVariable(manipulaFav: false, manipulaVm: false, nome: "Marley & Eu"),globalVariable(manipulaFav: false, manipulaVm: false, nome: "Little Witch Academia"),globalVariable(manipulaFav: false, manipulaVm: false, nome: "Godzilla"),globalVariable(manipulaFav: false, manipulaVm: false, nome: "Maria do Bairro"),globalVariable(manipulaFav: false, manipulaVm: false, nome: "SPY x FAMILY"),globalVariable(manipulaFav: false, manipulaVm: false, nome: "chaves"),globalVariable(manipulaFav: false, manipulaVm: false, nome: "Click"),globalVariable(manipulaFav: false, manipulaVm: false, nome: "O Poço"),globalVariable(manipulaFav: false, manipulaVm: false, nome: "A Usurpadora"),globalVariable(manipulaFav: false, manipulaVm: false, nome: "Jujutsu Kaisen 0"),globalVariable(manipulaFav: false, manipulaVm: false, nome: "Uma Noite no Museu"),globalVariable(manipulaFav: false, manipulaVm: false, nome: "Phineas and Ferb"),globalVariable(manipulaFav: false, manipulaVm: false, nome: "Elpidio Valdés"),globalVariable(manipulaFav: false, manipulaVm: false, nome: "Beetlejuice")
//    ]}


//[{"_id":"4480cdfe223cbb4b34f005530cfe18a9","_rev":"2-3ed88c2a47ccb7db3681bd524a76e52b","nome":"Kimi no na wa","idioma":"japonês","descrição":"Mitsuha é a filha do prefeito de uma pequena cidade, mas sonha em tentar a sorte em Tóquio. Taki trabalha em um restaurante em Tóquio e deseja largar o seu emprego. Os dois não se conhecem, mas estão conectados pelas imagens de seus sonhos.","Url":"https://m.media-amazon.com/images/I/81zeqn6hofL._AC_UF350,350_QL50_.jpg","favorito":false,"Classificação":0,"assistirMt":false,"gênero":"Romance, fantasia e Supernatural"},{"_id":"4480cdfe223cbb4b34f005530cfe1917","_rev":"2-a25555103dfb6b91679b2936cf6b3c2f","nome":"Marley & Eu","idioma":"Inglês","descrição":"Recém-casados, John e Jenny Grogan se mudam de Michigan para a Flórida. Lá, o casal compra sua primeira casa e encontra trabalho em jornais concorrentes. Mais tarde, John e Jenny adotam Marley, um adorável filhote de labrador amarelo.","Url":"https://upload.wikimedia.org/wikipedia/pt/0/09/Marley_Me_2008.jpg","favorito":false,"Classificação":10,"assistirMt":false,"gênero":"comédia, romance e melodrama"},{"_id":"5ae1618df29077d55a090ac72c73b71a","_rev":"2-101a02eee8e386eb6871c9e407fc9bf4","nome":"Little Witch Academia","idioma":"japonês","descrição":"Akko se inscreve na academia para bruxas Luna Nova. Ela pode não ser a melhor aluna da escola, mas sua atitude incrível é com certeza a chave para o sucesso!","Url":"https://m.media-amazon.com/images/I/716HFNX9rFL._AC_UF1000,1000_QL80_.jpg","favorito":false,"Classificação":0,"assistirMt":false,"gênero":"comédia e aventura"},{"_id":"5ae1618df29077d55a090ac72c73b96c","_rev":"2-7a5934002770f749ca083deeb778f739","nome":"Godzilla","idioma":"japonês","descrição":"Godzilla é uma força destrutiva que ataca o Japão","Url":"https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Gojira_1954_poster_3.jpg/419px-Gojira_1954_poster_3.jpg","favorito":false,"Classificação":18,"assistirMt":false,"gênero":"ficção científica e terror"},{"_id":"5ae1618df29077d55a090ac72c73bae9","_rev":"2-cf0f4027f3ea14a96e127c7449836257","nome":"Maria do Bairro","idioma":"espanhol","descrição":"Ao morrer, a catadora de lixo Cacilda pede ao padre Honório que encontre uma família que possa cuidar se sua afilhada, a menina Maria, de 15 anos. O milionário Fernando de la Vega a acolhe em sua mansão, com a intenção de educá-la para garantir seu futuro. Ao chegar à casa do empresário, Maria desperta o desprezo da mulher de Fernando, Vitória, o interesse do filho mais velho do casal, Luís Fernando, e o ciúme de Soraya, que tem como maior objetivo se casar com o rapaz. Com o passar do tempo, Maria conquista a simpatia de quase todos no novo lar, mas não consegue se livrar das perseguições da invejosa rival.","Url":"https://f.i.uol.com.br/fotografia/2021/12/10/163916198861b3a084d5aa6_1639161988_3x2_md.jpg","favorito":false,"Classificação":10,"assistirMt":false,"gênero":"Drama"},{"_id":"689db9ffc688b85b91a75f6ceed0f98f","_rev":"2-a96d267a5ed4b2f98a6a29295d5823ef","nome":"SPY x FAMILY","idioma":"japonês","descrição":"Há décadas, as nações de Ostania e Westalis promovem uma guerra fria sem fim. Para investigar os movimentos do presidente de um importante partido político, Westalis mobiliza Twilight, seu melhor agente, a montar uma família falsa e se infiltrar nos eventos sociais promovidos pela escola do filho do político. Mas por um acaso do destino, Twilight acaba adotando Anya, uma jovem com poderes telepáticos, e se casando com Yor, uma assassina profissional! Sem saberem das identidades uns dos outros, este trio incomum vai embarcar em aventuras cheias de surpresas para garantir a paz mundial.","Url":"https://imgsrv.crunchyroll.com/cdn-cgi/image/fit=contain,format=auto,quality=85,width=1200,height=675/catalog/crunchyroll/d45157163f2cfa6c1ce3ae32c30a96f4.jpg","favorito":false,"Classificação":14,"assistirMt":false,"gênero":"Drama, comédia"},{"_id":"689db9ffc688b85b91a75f6ceed0fbb9","_rev":"2-447dee52a1b46a1e3798aabb0af639f8","nome":"chaves","idioma":"espanhol","descrição":"Acompanhe o dia a dia de Chaves, um menino pobre que passa sua infância em uma pequena vila ao lado de seus amigos, Chiquinha e Kiko. Ele cria complicações para os adultos Seu Madruga, Seu Barriga, Professor Girafales, Dona Florinda e a Bruxa do 71.","Url":"https://upload.wikimedia.org/wikipedia/pt/b/bb/El_Chavo_Roberto_Bola%C3%B1os.png","favorito":false,"Classificação":0,"assistirMt":false,"gênero":"comédia"},{"_id":"689db9ffc688b85b91a75f6ceed103b8","_rev":"2-9940f9ef29ae1a440d5d5e93225673dd","nome":"Click","idioma":"Inglês","descrição":"Um arquiteto casado e com filhos está cada vez mais frustrado por passar a maior parte de seu tempo trabalhando. Um dia, ele encontra um inventor excêntrico que lhe dá um controle remoto universal, com capacidade de acelerar o tempo. No início, ele usa o aparelho para acelerar qualquer momento tedioso, mas se dá conta de que está acelerando o tempo demais e deixando de viver preciosos momentos em família. Desesperado, ele procura o inventor para ajudá-lo a reverter o que fez.","Url":"https://m.media-amazon.com/images/I/61N0zBUtzQL._AC_UF894,1000_QL80_.jpg","favorito":false,"Classificação":10,"assistirMt":false,"gênero":"comédia, aventura e romance"},{"_id":"689db9ffc688b85b91a75f6ceed106d1","_rev":"2-e827c2b5cc523df90de05baa45f6b2ea","nome":"O Poço","idioma":"espanhol","descrição":"Em uma prisão onde os detentos são alimentados por uma plataforma descendente, os que estão nos níveis mais altos comem mais do que precisam enquanto os dos andares mais baixos ficam com as migalhas. Até que um homem decide mudar o sistema.","Url":"https://jornalpredio3.com/wp-content/uploads/2020/03/o-poc3a7o.jpg","favorito":false,"Classificação":16,"assistirMt":false,"gênero":"terror, suspense e drama"},{"_id":"9e42d8469850545a5274d694dea61300","_rev":"2-458caee05fdd04bba51b07dfc704a6dd","nome":"A Usurpadora","idioma":"espanhol","descrição":"As irmãs gêmeas Paola e Paulina foram criadas separadas e sem o conhecimento da existência uma da outra. Um dia, quando o destino as une novamente, Paola vê na descoberta uma solução perversa para resolver seus problemas.","Url":"https://br.web.img3.acsta.net/pictures/15/12/14/17/56/528860.jpg","favorito":false,"Classificação":10,"assistirMt":false,"gênero":"Drama"},{"_id":"9e42d8469850545a5274d694dea6180f","_rev":"2-07e724c655933d06a92b438c7fdd376b","nome":"Jujutsu Kaisen 0","idioma":"japonês","descrição":"A despondent high school student enrolls in Jujutsu High so he can break the violent curse haunting him, in this prequel to the Jujutsu Kaisen series.","Url":"https://br.web.img2.acsta.net/pictures/21/10/27/11/49/5430171.jpg","favorito":false,"Classificação":16,"assistirMt":false,"gênero":"Ação e terror"},{"_id":"cbaa2e673115d3a1d9ed1a34d3591697","_rev":"2-f2178c11b70c08c4692ba546bbfa8fca","nome":"Uma Noite no Museu","idioma":"Inglês","descrição":"A trama conta a história de um segurança sonhador que aceita trabalhar de madrugada no Museu Americano de História Natural, em Nova Iorque. No entanto, coisas estranhas começam a acontecer","Url":"https://upload.wikimedia.org/wikipedia/pt/3/34/Night_at_the_Museum_poster.jpg","favorito":false,"Classificação":0,"assistirMt":false,"gênero":"comédia e aventura"},{"_id":"f4cee3a7c77759ee6cac3712fd1bfd8e","_rev":"2-8685e19431fcfcb94984eba14b04617e","nome":"Phineas and Ferb","idioma":"Inglês","descrição":"Phineas e Ferb querem aproveitar as férias ao máximo. Nas aventuras, os dois tornam-se músicos, constroem uma montanha-russa e uma praia no fundo do quintal e até voltam ao passado para encontrar dinossauros.","Url":"https://br.web.img2.acsta.net/c_310_420/pictures/16/07/25/16/29/283497.jpg","favorito":false,"Classificação":0,"assistirMt":false,"gênero":"comédia"},{"_id":"f4cee3a7c77759ee6cac3712fd1c067c","_rev":"2-e2a6712a20c3feca5b69939914bf053e","nome":"Elpidio Valdés","idioma":"espanhol","descrição":"Su nombre y apellido son los de su padre, también oficial del Ejército Libertador, que muere en combate. La obra es catalogada como símbolo de Cuba e icono del cine cubano de animación.Su popularidad en infantes, jovenés y adultos por el humor de esta serie hace a Elpidio Valdés una obra memorable junto con las demás obras de Juan Padrón.","Url":"https://www.granma.cu/file/img/2018/02/medium/f0101217.jpg","favorito":false,"Classificação":0,"assistirMt":false,"gênero":"Drama e comédia"},{"_id":"f4cee3a7c77759ee6cac3712fd1c116b","_rev":"2-2b7b248d7303cb5fda5512a6db373c30","nome":"Beetlejuice","idioma":"Inglês","descrição":"Depois de morrerem em um acidente de carro, Bárbara e Adam Maitland se encontram presos, assombrando sua antiga casa. Quando uma nova família e sua filha adolescente, Lydia, mudam para a residência, o casal de fantasmas tenta, sem sucesso, assustar os novos moradores. Suas tentativas de assombração atraem um espírito espalhafatoso, cuja ajuda se torna perigosa tanto para o par de almas, quanto para a inocente Lydia.","Url":"https://m.media-amazon.com/images/M/MV5BZDdmNjBlYTctNWU0MC00ODQxLWEzNDQtZGY1NmRhYjNmNDczXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg","favorito":false,"Classificação":18,"assistirMt":false,"gênero":"terror, comédia e fantasia"}]
