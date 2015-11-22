class PlainPagesController < ApplicationController
    def index
        @time = Time.now
        @entries = Entry.find_each
    end
end
