class MyfitnessController < ApplicationController
    def index
    @workouts = Workout.all
    end

    
    def show
    @workout = Workout.find_by_id(params[:id])
    end
    
    def new
    end
    
    def create
  t = Workout.new
  t.description = params['description']
  t.body_part = params['body_part']
  t.workout_name = params['workout_name']
  t.time = params['time']
  t.save
  redirect_to "/myfitness/show/#{ t.id }"
    end
    
    def edit
  @workout = Workout.find_by_id(params[:id])
    end
    
  def update
  t = Workout.find_by_id(params['id'])
  t.description = params['description']
  t.body_part = params['body_part']
  t.workout_name = params['workout_name']
  t.time = params['time']
  t.save
  redirect_to "/myfitness/show/#{ t.id }"
  end

def destroy
  t = Workout.find_by_id(params[:id])
  t.destroy
  redirect_to "/."
end



end