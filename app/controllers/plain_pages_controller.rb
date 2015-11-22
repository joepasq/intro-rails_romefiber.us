class PlainPagesController < ApplicationController
  def index
    if Entry.count > 20 
      # Randomize entries if we have many.
      random = 1 + Random.rand(Entry.count)
      @entries = Entry.limit(10).offset(random)
    else 
      # Without enough to be random, grab them all.
      @entries = Entry.find_each
    end
    
    @new_entry = Entry.new
    @message = ["What would you do with fiber?",
      "What can you build with gigabit internet?",
      "Why do you need better internet?"].shuffle.first
  end
end
