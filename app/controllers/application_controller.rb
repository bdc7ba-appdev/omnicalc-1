class ApplicationController < ActionController::Base

  def blank_square_form
    render({ :template => "calculation_templates/square_form.html.erb"})
  end

  def calculate_square
    #params = {"square" => 42}
    @num = params.fetch("square").to_f
    @square_of_num = @num**2
    render({ :template => "calculation_templates/square_results.html.erb"})
  end

  def blank_root_form
    
    render({ :template => "calculation_templates/root_form.html.erb"})
  end

  def calculate_root
    render({ :template => "calculation_templates/root_results.html.erb"})
  end

  def blank_payment_form

    render({ :template => "calculation_templates/payment_form.html.erb"})
  end

  def calculate_payment
    render({ :template => "calculation_templates/payment_results.html.erb"})
  end
  

  def blank_random_form
  
    render({ :template => "calculation_templates/random_form.html.erb"})
  end

  def calculate_random
    render({ :template => "calculation_templates/random_results.html.erb"})
  end
  
end
