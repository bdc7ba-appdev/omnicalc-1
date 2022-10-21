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
    @root_input = params.fetch("square_root").to_f
    @root = @root_input**0.5
    render({ :template => "calculation_templates/root_results.html.erb"})
  end

  def blank_payment_form

    render({ :template => "calculation_templates/payment_form.html.erb"})
  end

  def calculate_payment
    @input_apr = params.fetch("apr").to_f
    @percent_apr = @input_apr/100
    @monthly_rate = @percent_apr/12
    @term = params.fetch("term").to_f
    @months = @term*12
    @principal = params.fetch("principal").to_f
    @numerator = @monthly_rate*@principal
    @denominator = (1 - (1+@monthly_rate)**-@months)
    @monthly_payment = (@numerator/@denominator)
    render({ :template => "calculation_templates/payment_results.html.erb"})
  end
  

  def blank_random_form
    
    render({ :template => "calculation_templates/random_form.html.erb"})
  end

  def calculate_random
    @min = params.fetch("min").to_f
    @max = params.fetch("max").to_f
    @random = rand(@min..@max)
    render({ :template => "calculation_templates/random_results.html.erb"})
  end
  
end
