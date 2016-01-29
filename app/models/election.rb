class Election < ActiveRecord::Base
   validates :first_name, presence: true
   validates :last_name, presence: true

  def nameAndCountOfCandidate
    candidates = ['Hillary Clinton', 'Martin Omalley', 'Bernie Sanders', 'Jeb Bush', 'Ben Carson', 'Chris Christie', 'Ted Cruz', 'Carly Fiorina', 'Mike Huckabee', 'John Kasich', 'Rand Paul', 'Marco Rubio', 'Rick Santorum', 'Donald Trump']
    @map = {}
    @total = Election.count(:first_name)
    candidates.each do |candidate|
      @map[candidate] = (((Election.where(candidate => true).count).to_f / @total.to_f) * 100).round
    end
    @map
  end

end
