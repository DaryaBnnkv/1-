требуется  'rspec'
требуется  './лаб1.rb'

RSpec . описать  "Главное"  сделать

  это  "# begin_test_1"  делать
    allow_any_instance_of ( ядро ) . чтобы  получить ( : получает ) . and_return ( 'Дарья' ,  'Банникова' ,  16 )
    ожидать ( начало ) . to  eq ( «Привет, Дарья Банникова. Ты еще младше 18, но самое время начать учиться» )
  конец

  это  "# begin_test_2"  сделать
    allow_any_instance_of ( ядро ) . чтобы  получить ( : получает ) . and_return ( 'Кирилл' ,  'Биллер' ,  20 )
    ожидать ( приветствие ) . to  eq ( «Здравствуйте, Кирилл Биллер. Пора заняться делом» )
  конец

  это  "# fsumbar_test_1"  сделать
    allow_any_instance_of ( ядро ) . чтобы  получить ( : получает ) . and_return ( 10 ,  1 )
    ожидать ( fsumbar ) . к  уравнению ( 11 )
  конец

  это  "# fsumbar_test_1"  сделать
    allow_any_instance_of ( ядро ) . чтобы  получить ( : получает ) . and_return ( 20 ,  4 )
    ожидать ( fsumbar ) . к  уравнению ( 4 )
  конец

конец
