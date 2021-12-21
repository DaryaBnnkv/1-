def  check_word
  print  ( "Введите слово:" )
  слово  =  получает . чавкать

  слово [ - 2 ..- 1 ] == "CS" ? ( p  ( 2 ** word . length ) ) : ( p  ( word . reverse ) )
конец

def  create_pokemons
  print  ( "Сколько будет покемонов?" )
  kolvo_pokemons  =  получает . to_i

  покемоны  =  [ ]

  kolvo_pokemons . раз  сделать
    print  ( "Имя покемона:" )
    имя  =  получает . чавкать
    print  ( «Цвет покемона:» )
    цвет  =  получает . чавкать
    покемоны << {  name  =>  color  }
  конец

  p  покемоны
конец

check_word
create_pokemons
