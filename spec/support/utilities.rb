def full_title(page_title)
     base_title = "Ruby on Rails Sample App"
     if page_title.empty?
          puts base_title
     else
          puts "#{base_title} | #{page_title}"
     end
end