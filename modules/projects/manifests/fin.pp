class projects::fin {

  boxen::project { 'fin':
    dotenv        => false,
    elasticsearch => false,
    mysql         => ['fin_development', 'fin_test'],
    nginx         => true,
    redis         => false,
    ruby          => '1.9.3-p448',
    source        => 'bioritmo/fin'
  }
}