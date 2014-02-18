class projects::fin {

  boxen::project { 'fin':
    dotenv        => false,
    elasticsearch => false,
    mysql         => ['fin_development', 'fin_test'],
    nginx         => true,
    redis         => false,
    ruby          => 'ree-1.8.7-2012.02',
    source        => 'bioritmo/fin'
  }
}