# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([ name: 'Star Wars' ,  name: 'Lord of the Rings' ])
#   Character.create(name: 'Luke', movie: movies.first)
artist = Artist.destroy_all
artist = Artist.create([{
   name_artist: "Juan Da",
   lastname_artist: "Alvarez B",
   email_artist: "ing.juandavid.alvarez@gmail.com",
   email: "ing.juandavid.alvarez@gmail.com",
   password: "12345678",
   city_artist: "Medellín",
   country_artist: "Colombia",
   cellphone_artist: "+573173093535",
   rol_artist: "Stand-up & producer",
     birthdate_artist: "",
       linkgeneralphoto_artist: "https://scontent.feoh3-1.fna.fbcdn.net/v/t31.0-8/13329362_10154215291476797_869558947002134393_o.jpg?_nc_cat=0&oh=ef457bd7afc7919672729b12aa871726&oe=5B5F8497",
   nickname_artist:"juan",
   linkvideosphotos: "https://drive.google.com/open?id=16ecbXLi1iYSAAzFj7shRIuEALz2STkYD",
     biopic_artist:  "Improvisador de la ciudad de Medellín; miembro fundador del Grupo de improvisación 5incoimpro y gestor del festival de improvisación TEMI (temporada de improvisación de Medellín ) este año en su Cuarta versión.
                      Ha comenzado a incursionar en el Stand-up comedy y coordina un OpenMIc en la Bodeguetta Bar en el cúal se mezcla la impro y el Stand-up."
                    },
    {
      name_artist: "Darwin",
      lastname_artist: "caballero",
      email_artist: "profecuentero@gmail.com",
      email: "profecuentero@gmail.com",
      password: "12345678",
      city_artist: "Medellín",
      country_artist: "Colombia",
      cellphone_artist: "",
     rol_artist: "Stand-up",
      birthdate_artist: "",
      linkgeneralphoto_artist: "https://scontent.feoh3-1.fna.fbcdn.net/v/t1.0-9/26230690_10155284314748494_4446216893290833758_n.jpg?_nc_cat=0&oh=d0f4e4cc21e9aba66df499f7bf1cac7b&oe=5B5E8B92",
      nickname_artist:"profecuentero",
      linkvideosphotos: "https://drive.google.com/open?id=16ecbXLi1iYSAAzFj7shRIuEALz2STkYD",
       biopic_artist:  "Cuentero y comediante, parado en los escenarios desde 2004. Odia las bolsas de buñuelos y cree que el aguacate está sobrevalorado."
     },
            {
      name_artist: "Jairo",
      lastname_artist: "Talero",
      email_artist: "jairota@gmail.com",
      email: "jairota@gmail.com",
      password: "12345678",
      city_artist: "Medellín",
      country_artist: "Colombia",
      cellphone_artist: "+573186149246",
      rol_artist: "Stand-up",
      birthdate_artist: "",
      linkgeneralphoto_artist: "https://scontent.feoh3-1.fna.fbcdn.net/v/t1.0-9/30629666_1115506681925917_3528421229729939456_n.jpg?_nc_cat=0&oh=c8df3980da74a8bd7b7e5216e4fe0293&oe=5B74B26F",
      nickname_artist:"Talero",
      linkvideosphotos: "https://drive.google.com/open?id=16ecbXLi1iYSAAzFj7shRIuEALz2STkYD",
       biopic_artist:  "INICIE A MEDIADOS DEL AÑO 2016 EN LA ESCUELA DE STANDUP DE GERMAN BATALLAN Y UN CURSO DE IMPROVISACIÓN Y STAND UP CON LEANDRO BEAVIS EN ARGENTINA, EN MEDELLÍN, EL TALLER DE COMEDIA DE LA CASA DE CRISANTO (VARGASVIL). EN BARES Y CAFÉ TEATROS: -LA KERMESSE, BUENOS AIRES, MALÉ BAR, BUENOS AIRES, BISELLIA TEATRO BAR, BUENOS AIRES, MARTINEZ CLUB BAR,  ALAS TEATRO BAR, THE CAVER, PASEO LA PLAZA, BUENOS AIRES, LA TIENDA DEL HUMOR, LA BODEGUETTA RESTO BAR, THE YELLOW CAB CAR, VERTIGO WINGS, MADRE MONTE CERVECERÍA ARTESANAL"
                                    }
                ]
                )
