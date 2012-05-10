$:.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$:.unshift(File.dirname(__FILE__))

%w(rack rack/test rack-middleware-google-image rspec).each {|f| require f}

class TestRackApp
  DummyBody = <<-HTML
  <html>
    <head></head>
    <body>
      <p>Dummy Rack!</p>
    </body>
  </html>
  HTML

  DummyImage = <<-BIN
    blablabla
  BIN

  def call(env)
    case env['PATH_INFO']
    when '/'
      [200, {"Content-Type" => "text/html"}, [DummyBody]]
    when /.*\.jpg/
      [200, {"Content-Type" => "image/ipg"}, [DummyImage]]
    end
  end
end
