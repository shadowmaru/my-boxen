class projects::smartsystem {
  include phantomjs
  include ghostscript
  include memcached

  package { 'imagemagick': }

  boxen::project { 'smartsystem':
    dotenv        => false,
    elasticsearch => false,
    mysql         => ['smart_development', 'smart_test'],
    nginx         => true,
    redis         => true,
    ruby          => '2.0.0',
    source        => 'bioritmo/Smart-System'
  }
}