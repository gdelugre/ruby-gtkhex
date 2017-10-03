require_relative 'lib/gtkhex'

Gem::Specification.new do |s|
    s.name          = "ruby-gtkhex"
    s.version       = Gtk::HexEditor::VERSION
    s.author        = "Guillaume Delugré"
    s.email         = "origami@subvert.technology"
    s.homepage      = "http://github.com/gdelugre/ruby-gtkhex"
    s.platform      = Gem::Platform::RUBY

    s.summary       = "a GTK2 hexadecimal widget"
    s.description   = "ruby-gtkhex is an hexadecimal widget using gtk2, inspired by GHex"

    s.files         = Dir[
                        'COPYING',
                        'lib/gtkhex.rb'
                    ]

    s.require_path  = "lib"
    s.has_rdoc      = false
    s.license       = "LGPL-3.0+"

    s.add_runtime_dependency "gtk2", "~> 3.1"
end
