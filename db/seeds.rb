kids = [
    {child_fname: 'Malachi', child_mname: "Anthony", child_lname: "Shearwood", birthday: 'March 23, 2012', weight_lbs: 4, weight_oz: 10, height:22, parent1_fname: 'Dimetri', parent1_lname: 'Shearwood', parent2_fname: 'Jessica', parent2_lname: 'Shearwood'

},

    {child_fname: 'Josiah', child_mname: 'Alexander', child_lname: 'Shearwood', birthday: 'March 06, 2014', weight_lbs: 5, weight_oz: 10, height: 22, parent1_fname: 'Dimetri', parent1_lname: 'Shearwood', parent2_fname: 'Jessica', parent2_lname: 'Shearwood'}
]

kids.each do |k|
    Kid.create(k)
end
