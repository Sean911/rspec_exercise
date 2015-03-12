require_relative "../../lib/airplane"
require 'pry'

describe Airplane do

  describe "#initialization" do
    my_plane = Airplane.new("cesna", 10, 150)
    it 'Returns cesna for type' do
      expect(my_plane.type).to eq("cesna")
    end

    it 'Returns 10 for wingloading' do
      expect(my_plane.wingloading).to eq(10)
    end

    it 'Returns 150 for horsepower' do
      expect(my_plane.horsepower).to eq(150)
    end
  end

  describe "#start" do

    context 'when the plane has not been started' do
      unstarted_plane = Airplane.new("cesna", 10, 150)
      it 'returns plane started' do
        expect(unstarted_plane.start).to eq("airplane started")
      end
    end


    context 'when the plane has already been started' do
      started_plane = Airplane.new("cesna", 10, 150)
      started_plane.start
      it 'returns plane already started' do
        expect(started_plane.start).to eq("airplane already started")
      end
    end
  end

  describe "#takeoff" do
    context 'when the plane has not been started' do
      unstarted_plane = Airplane.new("cesna", 10, 150)
      it 'returns plane is not yet started' do
        expect(unstarted_plane.takeoff).to eq("airplane not started, please start")
      end
    end

    context 'when the plane has already been started' do
      started_plane = Airplane.new("cesna", 10, 150)
      started_plane.start
      it 'returns plane launched' do
        expect(started_plane.takeoff).to eq("airplane launched")
      end
    end
  end

  describe "#land" do
    context 'when the plane has not been started' do
      unstarted_plane = Airplane.new("cesna", 10, 150)
      it 'returns plane is not yet started' do
        expect(unstarted_plane.land).to eq("airplane not started, please start")
      end
    end

    context 'when the plane has already been started but is on ground' do
      landed_plane = Airplane.new("cesna", 10, 150)
      landed_plane.start
      it 'returns plane already on the ground' do
        expect(landed_plane.land).to eq("airplane already on the ground")
      end
    end

    context 'when the plane has is flying' do
      flying_plane = Airplane.new("cesna", 10, 150)
      flying_plane.start
      flying_plane.takeoff
      it 'returns plane landed' do
        expect(flying_plane.land).to eq("airplane landed")
      end
    end
  end

  #
  # describe "#land" do
  # end
end
