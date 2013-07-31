class WordpressAutoPostObserver < ActiveRecord::Observer
  observe Book
  
  def after_create(book)
    blog = WpRpc::Blog.new :url => 'http://rormalai.wordpress.com/xmlrpc.php', :username => 'malaiyappan', :password=> 'AdmiN123'
    post = blog.posts.new(:title => 'new book', :content => 'This is a new book', :keywords => 'new book in book store app', :published => true)
    post.save
  end
end
