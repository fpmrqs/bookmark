require 'pg'

class Bookmarks
  

  def list 
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    
    result = connection.exec('SELECT * FROM bookmark')
    result.map { |bookmark| bookmark['url'] }
  end
end