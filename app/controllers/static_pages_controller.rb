class StaticPagesController < ApplicationController
  def home  	
  end

  def help
  end

  def about_us
  end

  def contact_us
  end

  
 def index
  pdf = Prawn::Document.new
  pdf.text "Hello World"
  filename = File.join(Rails.root, "app/report", "x.pdf")
  pdf.render_file filename
  send_file filename, :filename => "x.pdf", :type => "application/pdf"
end
 
end
