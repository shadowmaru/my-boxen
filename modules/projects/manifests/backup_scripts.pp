class projects::backup_scripts {

  boxen::project { 'backup_scripts':
    dotenv        => false,
    elasticsearch => false,
    mysql         => false,
    nginx         => false,
    redis         => false,
    ruby          => '1.9.3',
    source        => 'bioritmo/backup_scripts'
  }
}