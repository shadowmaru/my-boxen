class projects::smartsystem {
  include icu4c
  include phantomjs
  include ghostscript
  include wkhtmltopdf
  include memcached

  package { 'imagemagick': }

  boxen::project { 'smartsystem':
    dotenv        => true,
    elasticsearch => false,
    mysql         => ['smart_development', 'smart_test'],
    nginx         => true,
    redis         => true,
    ruby          => '1.9.3-p448',
    source        => 'bioritmo/Smart-System'
  }
}