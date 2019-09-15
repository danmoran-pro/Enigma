module KeyOffsetHelper

  def ran_num_gen
     num = rand(1..10 ** 5).to_s
  end

  def current_date
    time= Time.now.strftime("%d/%m/%y")
    time.delete("/")
  end



end
