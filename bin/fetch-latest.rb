#!/usr/bin/env ruby
# coding: UTF-8

# fetch-latest.rb
# 
# fetch latest phaser build from github
# 
# created on : 2014.04.30.
# last update: 2015.07.29.
# 
# by meinside@gmail.com

JS_URL     = "https://github.com/photonstorm/phaser/raw/master/build/phaser.js"
JS_MIN_URL = "https://github.com/photonstorm/phaser/raw/master/build/phaser.min.js"
JS_MAP_URL = "https://github.com/photonstorm/phaser/raw/master/build/phaser.map"

JS_DIR     = File.expand_path(File.join(File.dirname(__FILE__), '..', 'vendor', 'assets', 'javascripts'))

if __FILE__ == $0
  [JS_URL, JS_MIN_URL, JS_MAP_URL].each{|url|
    filepath = File.join(JS_DIR, File.basename(url))
    `wget -O '#{filepath}' '#{url}'`
  }
end

