# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
title="Blue Monkey"
author="BLue"
body=" The Blue Monkeys live in female-philopatric social systems where females stay in their natal groups while males disperse once they reach adulthood.[3] As a result, blue monkey groups usually consist of one male with several females and infants, giving rise to matrilinear societies.[3][5][6] Occasionally, solitary males are observed which are probably transient, having left their natal group in search of a new group (Rudran 1978).
[edit] Social relationships

In these female-bonded societies, only 5–15% of monkeys activity budget is occupied by social interactions and the most common social interactions within a group are grooming and play.[5][6][7][8][9] Relationships between group members vary: infants interact most frequently with their peers and adult or juvenile females[3] and are rarely seen near adult males (Rudran 1978).[3]

Alloparenting is common among blue monkeys. The most common infant handlers are juvenile females and usually one infant is carried by a number of alloparents. One hypothesis is that this allows the infant to learn to socialise at an early stage in life.[3]

Interesting female-female relationships exist among blue monkeys. This relationship is believed to be shaped by their feeding ecology, which, in turn, is shaped by between-group and within-group competition.[9] Blue monkey females exhibit strong, aggressive competition between groups[5][6][8] and between other species because of their territorial character[6][8] but milder though more frequent competition within groups.[6] Even though earlier beliefs were that Blue Monkeys are not territorial, more current extended research[8] shows that earlier researched misinterpreted the results because social interactions overall are infrequent. Moreover, overall agonism rates in Blue Monkeys are very low.[6][9] Within group conflicts are mild and infrequent because females tend to distance themselves from one another and feed at different sites, thus avoiding competition.[6][9] Though it was believed that blue monkeys are egalitarian, current extended research confirms that there actually is linear dominance hierarchy in female Blue Monkeys,[6][8] which becomes more apparent when food resources are scarce.[6]"
Articl.create( :title => title , :body => body , :author => Author.new( :name => author ));


title="Blue Footed Boobies"
author="BLue"
body="The blue footed boobie is a creature of exceptional awkwardness, not only can you not speak of it in polite society, but one cannot even email a person links."
Articl.create( :title => title , :body => body , :author => Author.new(:name => author ));


title3="Turtle Doves"
author3="BirdBoy"
body3="Hey There blimpy boy Flying through the air so fancy free"
Articl.create( :title => title3 , :body => body3 , :author => Author.new( :name => author3 ));


title4="Simpsons Rock"
author4="El Barto"
body4="So I totally think that the simpsons rock. they are like the best rock band ever. I totally saw that behind the laughter and thought hey I could do that."
Articl.create( :title => title4 , :body => body4 , :author => Author.new( :name => author4 ));