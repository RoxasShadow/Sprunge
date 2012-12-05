#--
#  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#              Sirius Fucking Licence 1.2 "ShitStorm"
#             Do the fuck you want. Get the fuck off.
#      Using this licence don't make you more trasgressive.
#             And doesn't mean you're not an asshole.
#  ~~~~~~~~~~~~~~~*The quiet after the shitstorm*~~~~~~~~~~~~~~~-~~~
#                     Sirius Fucking Manifesto
#   With this software pubblication licence you can modify, rewrite
#   rape, burn, kill, delete, fuck, do nothing. In few words:
#          DO DAFUQ YOU WANT AND DON'T EXCORIATE MY BALLS
#  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#++
require 'net/http'

module Sprunge

  def self.send(str, lang = '')
    str     = File.read(str) if File.exists? str
    
    uri     = URI 'http://sprunge.us'
    params  = { 'sprunge' => str }
    return Net::HTTP.post_form(uri, params).body + (lang.to_s.empty? ? "?#{lang}" : '').strip
  end
  
  def self.is_valid?(uri)
    begin
      uri.to_s.start_with? 'http://sprunge.us/'
    rescue
      false
    end
  end
  
  class << self
    alias_method :valid?,   :is_valid?
    alias_method :paste,    :send
    alias_method :sprunge,  :send
  end
  
end