class projects::smartsystem {
  include phantomjs::1_9_0
  include ghostscript
  include memcached

  package { 'imagemagick': }

  boxen::project { 'smartsystem':
    dotenv        => false,
    elasticsearch => false,
    mysql         => ['smart_development', 'smart_test'],
    nginx         => true,
    redis         => true,
    ruby          => '1.9.3-p448',
    source        => 'bioritmo/Smart-System'
  }
}