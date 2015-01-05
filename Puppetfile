# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen",      "3.9.0"
github "module_data", "0.0.3", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",     "2.0.0"
github "foreman",     "1.2.0"
github "gcc",         "2.2.0"
github "git",         "2.5.0"
github "go",          "1.1.0"
github "homebrew",    "1.9.5"
github "hub",         "1.3.0"
github "inifile",     "1.1.1", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",       "1.4.3"
github "nodejs",      "3.8.1"
github "openssl",     "1.0.0"
github "phantomjs",   "2.3.0"
github "pkgconfig",   "1.0.0"
github "repository",  "2.3.0"
github "ruby",        "8.2.0"
github "stdlib",      "4.2.1", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",        "1.0.0"
github "xquartz",     "1.2.1"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "alfred",      "1.3.1"
github "chrome",      "1.2.0"
github "dropbox",     "1.4.0"
github "elixir",      "0.0.1"
github "firefox",     "1.2.3"
github "ghostscript", "1.0.0"
github "heroku",      "2.1.1"
github "imagemagick", "1.3.0"
github "iterm2",      "1.2.0"
github "libtool",     "1.0.0"
github "memcached",   "2.0.0"
github "mysql",       "1.2.0"
github "postgresql",  "3.0.1"
github "redis",       "3.1.0"
github "screen",      "1.0.0"
github "sysctl",      "1.0.1" # postgresql dependency
github "vagrant",     "3.2.0"
github "virtualbox",  "1.0.13"
github "wkhtmltopdf", "1.2.1"
