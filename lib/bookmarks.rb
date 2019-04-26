require 'pg'

class Bookmark
  def self.all
<<<<<<< HEAD
    connection = PG.connect(dbname: 'bookmark_manager')
=======
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

>>>>>>> 9478753afad1d7caf52330be7ae31fcacaa16640
    result = connection.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark['url'] }
  end

  def self.add(url)
    connection = PG.connect(dbname: 'bookmark_manager')
    connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}');")
  end

end
