json.array!(@elections) do |election|
  json.extract! election, :id, :first_name, :last_name, :hillary_clinton, :martin_omalley, :bernie_sanders, :jeb_bush, :ben_carson, :chris_christie, :ted_cruz, :carly_fiorina, :mike_huckabee, :john_kasich, :rand_paul, :marco_rubio, :rick_santorum, :donald_trump
  json.url election_url(election, format: :json)
end
