class PagesController < ApplicationController



  def home
  @counter= ViewCounter.find_by(page_name: 'home')
    if @counter ==nil
    @counter = ViewCounter.new
    @counter.page_name = 'home'
    @counter.count =1
    @counter.save

    else
    @counter.count  += 1
    @counter.save
    end
  end

  def about
    @counter = ViewCounter.find_by(page_name: 'about')

    if @counter ==nil
      @counter= ViewCounter.create(page_name: 'about', count: 1)



    else
      @counter.count  += 1
      @counter.save
    end
  end

  def contact
    @counter = ViewCounter.find_by(page_name: 'contact')


    if @counter ==nil
      @counter= ViewCounter.create(page_name: 'contact', count: 1)
      @counter.save



    else
      @counter.count  += 1
      @counter.save
    end
  end

end
