require 'rails_helper'

RSpec.describe ReviewController, type: :controller do
  describe "#create" do
   get :create
   
    it "responds successfully" do
    movie = Movie.new(
      title: 'DIC',
      production_year: 2000,
      running_time: 120,
      rating: 'G')
    expect(movie).to be_valid
  end
 