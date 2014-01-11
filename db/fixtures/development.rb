sub1 = Substance.seed do |s|
  s.id = 1
  s.name = 'Carrot'
  s.description = 'a veg'
end.first
sub2 = Substance.seed do |s|
  s.id = 2
  s.name = 'Bacon'
  s.description = 'a meat'
end.first
sub3 = Substance.seed do |s|
  s.id = 3
  s.name = 'Apple'
  s.description = 'a fruit'
end.first

sub4 = Substance.seed do |s|
  s.id = 4
  s.name = 'Yam'
  s.description = 'a veg 2'
end.first
sub5 = Substance.seed do |s|
  s.id = 5
  s.name = 'Beef'
  s.description = 'a meat 2'
end.first
sub6 = Substance.seed do |s|
  s.id = 6
  s.name = 'Pork'
  s.description = 'a meat 2'
end.first
sub7 = Substance.seed do |s|
  s.id = 7
  s.name = 'Pear'
  s.description = 'a fruit 2'
end.first

sub1.substitutes << sub4
sub2.substitutes << [sub5, sub6]
sub3.substitutes << sub7


i1 = Ingredient.seed do |i|
  i.id = 1
  i.name = 'Carrots'
  i.quantity = '2'
  i.measurement = 'cups'
  i.substance = sub1
end
i2 = Ingredient.seed do |i|
  i.id = 2
  i.name = 'Baccon'
  i.quantity = '3 1/2'
  i.measurement = 'strips'
  i.substance = sub2
end
i3 = Ingredient.seed do |i|
  i.id = 3
  i.name = 'Apple'
  i.quantity = '1'
  i.measurement = ''
  i.substance = sub3
end
i4 = Ingredient.seed do |i|
  i.id = 4
  i.name = 'Beef'
  i.quantity = '2'
  i.measurement = 'pounds'
  i.substance = sub5
end
i5 = Ingredient.seed do |i|
  i.id = 5
  i.name = 'Tofu'
  i.quantity = '1'
  i.measurement = 'package'
end

d1 = Direction.seed do |d|
  d.id = 1
  d.order = 1
  d.instruction = 'Chop Stuff'
end
d2 = Direction.seed do |d|
  d.id = 2
  d.order = 2
  d.instruction = 'Greese Stuff'
end
d3 = Direction.seed do |d|
  d.id = 3
  d.order = 3
  d.instruction = 'Cook it'
end
d4 = Direction.seed do |d|
  d.id = 4
  d.order = 4
  d.instruction = 'Eat it'
end

r1 = Recipe.seed do |r|
  r.id = 1
  r.name = 'Recipe 1'
  r.description = 'Rar Rar Rar'
end.first

r1.ingredients << [ i1, i2, i3 ]
r1.directions << [ d1, d2 ]

r2 = Recipe.seed do |r|
  r.id = 2
  r.name = 'Recipe 2'
  r.description = 'Blah Blah Blah'
end.first
r2.ingredients << [ i3, i4, i5 ]
r2.directions << [ d3, d4 ]
