Gem::Specification.new do |s|
  s.name = "mailboxer"
  s.version = "1.0.0"
  s.authors = ["Justin Coyne", "Eduardo Casanova Cuesta"]
  s.summary = "Messaging system for rails apps."
  s.description = "A Rails engine that allows any model to act as messageable, adding the ability to exchange messages " +
                   "with any other messageable model, even different ones. It supports the use of conversations with " +
                   "two or more recipients to organize the messages. You have a complete use of a mailbox object for " + 
                   "each messageable model that manages an inbox, sentbox and trash for conversations. It also supports " + 
                   "sending notifications to messageable models, intended to be used as system notifications."
  s.email = "justin@curationexperts.com"
  s.homepage = "https://github.com/curationexperts/mailboxer"
  s.files = `git ls-files`.split("\n")

  # Gem dependencies
  #
  # SQL foreign keys
  s.add_runtime_dependency('foreigner')

  # Development Gem dependencies
  s.add_runtime_dependency('rails')
  #s.add_runtime_dependency('carrierwave')
  # Debugging
  if RUBY_VERSION < '1.9'
    s.add_development_dependency('ruby-debug')
  end
  # Specs
  s.add_development_dependency('rspec-rails')
  # Fixtures
  #if RUBY_VERSION >= '1.9.2'
   # s.add_development_dependency('factory_girl', '>= 3.0.0')
  #else
    #s.add_development_dependency('factory_girl', '~> 2.6.0')
  #end
  #s.add_development_dependency('factory_girl')
  # Population
  #s.add_development_dependency('forgery')
  # Integration testing
  #s.add_development_dependency('capybara')
  # Testing database
  if RUBY_PLATFORM == 'java'
    s.add_development_dependency('jdbc-sqlite3')
    s.add_development_dependency('activerecord-jdbcsqlite3-adapter')
  else
    s.add_development_dependency('sqlite3')
  end
end
