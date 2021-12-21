требуется  'rspec'
требуется  './main_lab2.rb'

RSpec . описать  "Главное"  сделать
  это  "#revers_or_pow_first_solution"  сделать
    ожидать ( revers_or_pow ( "dferCs" ) ) . к  уравнению ( 64 )
  конец

  это  "#revers_or_pow_second_solution"  сделать
    ожидать ( revers_or_pow ( "Asxcvb" ) ) . в  уравнении ( "bvcxsA" )
  конец

  это  "#hash_pokemon"  делать
    allow_any_instance_of ( ядро ) . чтобы  получить ( : получает ) . and_return ( 2 ,  «пикачу» ,  «желтый» ,  «слоупок» ,  «розовый» )
    ожидать ( hash_pokemon ) . в  уравнение ( [ { "пикачу"  =>  "желтый" } ,  { "слоупок"  =>  "розовый" } ] )
  конец
конец
