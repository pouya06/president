class Election < ActiveRecord::Base
   validates :first_name, presence: true
   validates :last_name, presence: true

  def self.name_and_count_of_candidates
    @map = {}
    @total = count(:first_name)
    %w{hillary_clinton martin_omalley bernie_sanders jeb_bush ben_carson chris_christie ted_cruz carly_fiorina mike_huckabee john_kasich rand_paul marco_rubio rick_santorum donald_trump}.each do |candidate|
      @map[candidate] = (((where(candidate => true).count).to_f / @total.to_f) * 100).round
    end
    @map
  end

end
