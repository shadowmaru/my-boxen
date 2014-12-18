class projects::audax {
	include heroku

  boxen::project { 'audax':
  	postgresql    => true,
    nginx         => true,
    ruby          => '2.1.2',
    source        => 'shadowmaru/audax'
  }
}