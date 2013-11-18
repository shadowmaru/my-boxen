class projects::audax {
	include heroku

  boxen::project { 'audax':
  	postgresql    => true,
    nginx         => true,
    ruby          => '1.9.3',
    source        => 'shadowmaru/audax'
  }
}