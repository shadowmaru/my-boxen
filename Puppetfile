# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

def github(name, version, options = nil)
  options ||= {}
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen",      "3.3.8"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "autoconf",   "1.0.0"
github "dnsmasq",    "1.0.1"
github "gcc",        "2.0.1"
github "git",        "1.2.5"
github "homebrew",   "1.6.1"
github "hub",        "1.0.3"
github "inifile",    "1.0.0", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",      "1.4.2"
github "nodejs",     "3.2.9"
github "openssl",    "1.0.0"
github "repository", "2.2.0"
github "ruby",       "7.2.4"
github "stdlib",     "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "xquartz",    "1.1.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "alfred",			"1.1.5"
github "dropbox",			"1.1.1"
github "firefox",			"1.1.3"
github "heroku",			"2.0.0"
github "mysql",         	"1.2.0"
github "sysctl",            "1.0.0" # postgresql dependency
github "postgresql",		"2.0.1"
github "phantomjs",			"2.0.2"
github "redis",				"1.0.0"
github "hipchat",			"1.0.8"
github "iterm2",			"1.0.3"
github "sublime_text_2",	"1.1.2"
github "chrome",			"1.1.1"
github "ghostscript",		"1.0.0"
github "wkhtmltopdf",		"1.0.0"
github "screen",			"1.0.0"
github "memcached",			"1.2.0"
github "imagemagick",		"1.2.1"
github "things",			"1.0.1"
github "onepassword",		"1.1.0"
github "libtool",			"1.0.0"
github "vagrant",      "3.0.6"
github "virtualbox",   "1.0.11"
