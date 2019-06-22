# config.ru
require 'rack'
class MiPrimeraWebApp
  def call(env)
    if env['REQUEST_PATH'] == '/'
      [202, { 'Content-Type' => 'text/html' }, ['<h1> Root </h1>']]
    elsif env['REQUEST_PATH'] == '/index'
      [202, { 'Content-Type' => 'text/html' }, ['<h1> INDEX </h1>']]
    elsif env['REQUEST_PATH'] == '/otro'
      [202, { 'Content-Type' => 'text/html' }, ['<h1> OTRO </h1>']]
    else
      [202, { 'Content-Type' => 'text/html' }, [File.open('404.html').read]]
    end
  end
end
run MiPrimeraWebApp.new
