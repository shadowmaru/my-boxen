class people::shadowmaru {
	include alfred
	include chrome
	include firefox
	include iterm2::stable

  $home     = "/Users/shadow"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"

  file { $my:
    ensure  => directory
  }

  repository { $dotfiles:
    source  => 'shadowmaru/dotfiles',
    require => File[$my]
  }
}