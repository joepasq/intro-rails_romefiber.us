class PlainPagesController < ApplicationController
    def index
        @time = Time.now
        @entries = Entry.find_each
        
        @new_entry = Entry.new
        @message = ["What would you do with fiber?",
                    "What can you build with gigabit internet?",
                    "Why do you need better internet?"].shuffle.first
    end
end
