# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Genre.create!([
{
	name: "Ação"
},
{
	name: "Comédia"
},
{
	name: "Drama"
},
{
	name: "Suspense"
},
{
	name: "Infantil"
}
])


Film.create!([
{
	name: "Vingadores Guerra Infinita",
	description: "Em uma jornada cinematográfica sem precedentes que está sendo elaborada há dez anos e abrange todo o Universo Cinematográfico Marvel, Vingadores: Guerra Infinita, da Marvel Studios, leva às telas o maior e mais mortal confronto de todos os tempos. Os Vingadores e seus aliados Super Heróis devem se dispor a sacrificar tudo em uma tentativa de derrotar o poderoso Thanos antes que seu ataque de devastação e ruina dê um fim ao universo.",
	year: 2018,
	price: 15.20,
	genre_id: 1,	
	poster: "vingadores.png"
},
{
	name: "Batman vs Superman: A Origem da Justiça",
	description: "Após os eventos de O Homem De Aço, Superman (Henry Cavill) divide a opinião mundial, afinal para salvar o mundo, ele destruiu Metrópolis. Enquanto muitos o consideram o grande salvador da humanidade, outros não concordam com sua permanência no planeta. Bruce Wayne (Ben Affleck) está do lado dos inimigos de Clark Kent e decide retomar o manto de Batman para enfrentá-lo. Enquanto os dois brigam, uma nova ameaça ganha força. Em meio a tudo isso, Clark desenvolve uma relação próxima com Lois Lane (Amy Adams). O filme é continuação de O Homem de Aço (2013).",
	year: 2016,
	price: 12.70,
	genre_id: 1,
	poster: "batman_superman.png"
},
{
	name: "Se Beber Não Case!",
	description: "Em Las Vegas para realizar uma despedida de solteiro, três amigos e padrinhos de casamento acabam se perdendo do noivo, após uma noitada de bebedeiras. Agora, eles precisam reconstituir todos os passos que deram para encontrá-lo",
	year: 2009,
	price: 9.10,
	genre_id: 2,
	poster: "se_beber_nao.png"
},
{
	name: "O Poderoso Chefão",
	description: "Apesar da violência, O Poderoso Chefão é primeiramente um filme sobre o poder da lealdade e do amor na família Corleone e na comunidade em que eles vivem. A história se inicia com o casamento de Connie (Talia Share), a filha de Don Corleone (Marlon Brando). Como um senhor feudal, ele recebe os cumprimentos e promessas de lealdade da família e de clientes. Os outros filhos de Corleone estão presentes: o sangue-quente Sony (James Caan), o mais velho que irá substitui-lo, e Fredo (John Cazale), que não se adequa aos negócios da família. O preferido de Corleone é o filho mais novo, Michael (Al Pacino), que voltou como herói da II Guerra Mundial e não tem nenhum envolvimento com a máfia. Porém, devido à incapacidade do pai, se vê forçado a assumir a liderança da família, contrariando o que Corleone queria para seu futuro.",
	year: 1972,
	price: 10,
	genre_id: 3,
	poster: "o_poderoso.png"
},
{
	name: "Avatar",
	description: "Jake Sully (Sam Worthington) é um ex-militar paraplégico que é levado a outro planeta, Pandora, em uma missão única que o divide entre seguir ordens de seus superiores que querem dominar o lugar e proteger um povo e seu mundo o qual ele sente ser seu lar.",
	year: 2009,
	price: 8.25,
	genre_id: 1,
	poster: "avatar.png"
},
{
	name: "O Chamado",
	description: "Rachel Keller (Naomi Watts) é uma jornalista que resolve investigar a morte misteriosa de quatro adolescentes. Com o tempo, descobre que os assassinatos aconteceram após as pessoas assistirem a um determinado vídeo. Cada um que assiste à fita recebe um telefone avisando que viverá apenas mais sete dias, depois têm algumas alucinações e recebe uma espécie de chamado, fazendo com que ele morra sem que haja qualquer motivo aparente. Decidida a decifrar esse enigma, Rachel assiste ao vídeo e agora terá apenas uma semana para descobrir a razão das mortes.",
	year: 2002,
	price: 4.90,
	genre_id: 4
},
{
	name: "Os Incríveis 2",
	description: "Quando Helena Pêra é chamada para voltar a lutar contra o crime como a super-heroína Mulher-Elástica, cabe ao seu marido, Roberto, a tarefa de cuidar das crianças, especialmente o bebê Zezé. O que ele não esperava era que o caçula da família também tivesse superpoderes, que surgem sem qualquer controle.",
	year: 2018,
	price: 15.00,
	genre_id: 5,
	poster: "os_incriveis.jpg"
}
])

filme = Film.find_by(name: 'Os Incríveis 2')
filme.comments.create!(name: 'José', rating: 5, comment:'Super divertido!')
filme.comments.create!(name: 'Maria', rating: 4, comment:'Um bom filme')
filme.comments.create!(name: 'Paulo', rating: 3, comment:'Um filme na média')

filme = Film.find_by(name: 'O Poderoso Chefão')
filme.comments.create!(name: 'Felipe', rating: 5, comment:'O melhor filme da história!')


