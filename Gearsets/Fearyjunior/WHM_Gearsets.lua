-- WHM Gearsets
-- Date Created: 1/29/2014
-- Last Updated: 6/6/2014
-- To Do List:
--
--
--
--

if player.name == 'Fearyjunior' then
		-- includes
		include('include/utility.lua')
		include('include/mappings.lua')
		include('include/equipment.lua')
		-- include('../include/autoexec.lua')
			
		-- sets Macros off = 0  on = 1
		automacroset = 1
		if automacroset == 1 then
			if player.sub_job == 'rdm' then
				set_macro_page(1,1)
			elseif player.sub_job =='sch' then
				set_macro_page(1,2)
			elseif player.sub_job == 'smn' then
				set_macro_page(1,3)
			elseif player.sub_job =='blm' then 
				set_macro_page(1,4)
			end
		else
			set_macro_page(1,1)
		end
		
		-- Auto Sets
		-- Standard/idle
		sets.idle.PDT = {main="Earth Staff", 
				head="Nahtirah Hat", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
                body="Gendewitha Bliaut", hands="Gende. Gages +1", lring=Aug.Darkring1, rring="Defending Ring",
                back="Umbra Cape", waist="Fucho-no-Obi", legs="Gendewitha Spats", feet="Gendewitha Galoshes"}
		sets.idle.MDT = {
				head="Nahtirah Hat", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
                body="Gendewitha Bliaut", hands="Gende. Gages +1", lring=Aug.Darkring1, rring="Defending Ring",
                back="", waist="",  legs="Gendewitha Spats", feet="Gendewitha Galoshes"}			
		sets.Resting = set_combine(sets.idle.PDT, {main="Chatoyant Staff", ammo="Clarus Stone",
				head="", neck="Eidolon Pendant", lear="Magnetic Earring", rear="Moonshade Earring",
                body="Heka's Kalasiris", hands="Serpentes Cuffs", lring="", rring="",
                back="Felicitas Cape", waist="Austerity Belt", legs="Nares Trews", feet="Chelona Boots"})
		sets.idle.Standard = set_combine(sets.idle.PDT,{ sub="Mephitis Grip",
				lear="Merman's Earring", rear="Moonshade Earring",
				hands="Serpentes Cuffs",
                legs="Nares Trews", feet="Herald's Gaiters"})

		sets.misc.Town = set_combine(sets.idle.PDT, {
				feet="Herald's Gaiters"})
		-- Precast
		-- Magic
		sets.precast.Fastcast = {ammo="Impatiens",
				head="Nahtirah Hat", neck="Orison Locket", lear="Loquac. Earring",
                body="Anhur Robe", hands="Gende. Gages +1", lring="Prolix Ring",
                back="Swith Cape", waist="Witful Belt", legs="Orvail Pants +1", feet="Chelona Boots"}
		sets.precast.Cure = set_combine(sets.precast.Fastcast, {
                body="Heka's Kalairis",
                back="Pahtli Cape", legs="Orsn. Pantaln. +2",feet="Cure Clogs"})
		-- JA
		sets.precast.JA['Benediction'] = {body="Cleric's Briault +2"}
		sets.precast.JA['Asylum'] = {}
		
		sets.precast.JA['Divine Caress'] = {head="Orison Cap +2", hands="Orison Mitts +2", back="Mending Cape"}
		sets.precast.JA['Devotion'] = {head="Cleric's Cap +2"}
		sets.precast.JA['Martyr'] = {hands="Cleric's Mitts +2"}
		
		-- Midcast
		sets.midcast.Recast = set_combine(sets.idle.PDT, sets.precast.Fastcast, {
				head="Nahtirah Hat",
                body="Hedera Cotehardie",
                waist="Witful Belt",feet="Umbani Boots"})
		sets.midcast.ConserveMP = {ammo="Clarus Stone",
				lear="Magnetic Earring", rear="Gifted Earring",
                body="Hedera Cotehardie", hands="Serpentes Cuffs",
                waist="Austerity Belt", legs="Nares Trews", feet="Umbani Boots"}

		--Healing Magic
		-- Cures
		sets.midcast.Cure = {main="Arka IV", 
				head="Orison Cap +2", neck="Colossus's Torque", lear="Novia Earring", rear="Orison Earring",
                body="Orison Bliaud +2", hands="Bokwus Gloves", lring="Aquasoul Ring", rring="Aquasoul Ring",
                back="Orison Cape", waist="Cascade Belt", legs="Orsn. Pantaln. +2", feet="Rubeus Boots"}
		sets.midcast.EnmityCure = set_combine(sets.midcast.Cure, {main="Arka IV", 
				head="Orison Cap +2", neck="Colossus's Torque", lear="Novia Earring", rear="Orison Earring",
                body="Orison Bliaud +2", hands="Bokwus Gloves", lring="Aquasoul Ring", rring="Aquasoul Ring",
                back="Orison Cape", waist="Cascade Belt", legs="Orsn. Pantaln. +2", feet="Rubeus Boots"})

		sets.midcast.Curaga = {main="Arka IV", sub="Pax Grip",
				head="Orison Cap +2", neck="Colossus's Torque", lear="Novia Earring", rear="Orison Earring",
                body="Gendewitha Bliaut", hands="Bokwus Gloves", lring="Aquasoul Ring", rring="Aquasoul Ring",
                back="Refraction Cape", waist="Cascade Belt", legs="Orsn. Pantaln. +2", feet="Rubeus Boots"}
		sets.midcast.EnmityCuraga = set_combine(sets.midcast.Curaga, {})

		sets.midcast.Cura = {}

		-- Status Ailments
		sets.midcast.NaSpells = set_combine(sets.midcast.Recast, {})
		
		sets.midcast.Erase = set_combine(sets.midcast.NaSpells)

		sets.midcast.Cursna = set_combine(sets.midcast.Recast, {
				neck="Debilis Medallion",
                rring="Haoma's Ring",
                back="Mending Cape", legs="Theophany Pantaloons", feet="Gende. Galoshes"})
				
		sets.midcast.Esuna = set_combine(sets.midcast.Recast)
		sets.midcast.Sacrifice = set_combine(sets.midcast.Recast)

		-- Enhancing
		sets.midcast.Regen = set_combine(sets.midcast.ConserveMP,{
                body="Cleric's Briault", hands="Orison Mitts +2",
                legs="Theo. Pantaloons"})
		sets.midcast.BarElement = {main="Beneficus",
				head="Orison Cap +2", neck="Colossus's Torque", lear="Andoaa Earring", rear="",
                body="Orison Bliaut +2", hands="Orison Mitts +2", lring="", rring="",
                back="Merciful Cape", waist="Cascade Belt", legs="Orsn. Pantaln. +2", feet="Orsn. Duckbills +2"}
		sets.midcast.BarStatus = {main="Beneficus",
				head="", neck="Colossus's Torque", lear="Andoaa Earring", rear="",
                body="Anhur Robe", hands="Ayao's Gages", lring="", rring="",
                back="Merciful Cape", waist="Cascade Belt", legs="Clr. Pantaln. +2", feet="Orsn. Duckbills +2"}
		sets.midcast.Boost = {main="Beneficus", sub="Fulcio Grip",
				head="", neck="Colossus's Torque", lear="Andoaa Earring", rear="",
                body="Anhur Robe", hands="Ayao's Gages", lring="", rring="",
                back="Merciful Cape", waist="Cascade Belt", legs="Clr. Pantaln. +2", feet="Orsn. Duckbills +2"}
		sets.midcast.Phalanx = set_combine(sets.midcast.Boost)
		sets.midcast.Hastespell = {ammo="Impatiens", waist="Witful Belt"}
		sets.midcast.Stoneskin = {waist="Siegal Sash"}
		sets.midcast.Aquaveil = {waist="Empahatikos Rope", legs="Shedir Seraweels"}
		sets.midcast.Blink = set_combine(sets.midcast.Aquaveil)
		sets.midcast.Reraise = set_combine(sets.midcast.ConserveMP)

		--Divine Magic
		sets.midcast.Repose = set_combine(sets.midcast.Recast)
		sets.midcast.Flash = set_combine(sets.midcast.Macc)
		sets.midcast.Banish = {main="Soothsayer Staff",
				head="Nahtirah Hat", neck="Eddy Necklace", lear="Friomisi Earring", rear="Novio Earring",
                body="Bokwus Robe", hands="Yaoyotl Gloves", lring="Aquasoul Ring", rring="Aquasoul Ring",
                back="Toro Cape", waist="Sekhmet Corset", legs="Gendewitha Spats", feet="Gendewitha Galoshes"}
		sets.midcast.Holy = set_combine(sets.midcast.Banish)

		-- Enfeebling
		-- Potency
		sets.midcast.Enfeebling = {main="Soothsayer Staff", sub="Mephitis Grip", ammo="Aureole",
				head="Nahtirah Hat", neck="Eddy Necklace", lear="Lifestorm Earring", rear="Psystorm Earring",
                body="Bokwus Robe", hands="Gende. Gages +1", lring="Aquasoul ring", rring="Aquasoul ring",
                back="Refraction Cape", waist="Demonry Sash", legs="Bokwus Slops", feet="Bokwus Boots"}
		sets.midcast.Macc = {main="Soothsayer Staff", sub="Mephitis Grip", ammo="Aureole",
				head="Nahtirah Hat", neck="Eddy Necklace", lear="Lifestorm Earring", rear="Psystorm Earring",
                body="Bokwus Robe", hands="Gende. Gages +1", lring="Perception ring", rring="Sangoma Ring",
                back="Refraction Cape", waist="Demonry Sash", legs="Bokwus Slops", feet="Bokwus Boots"}

		sets.midcast.Dia = set_combine(sets.midcast.ConserveMP,{})

		-- Dark Magic
		sets.midcast.DarkMagic = set_combine(sets.midcast.Macc, {	
				head="Appetence Crown", neck="Aesir Torque",
				body="Hedera Cotehardie",
				back="Merciful Cape"})
		sets.midcast.Drain = set_combine(sets.midcast.Macc, {
				head="Appetence Crown", neck="Aesir Torque",
				waist="Fucho-no-Obi"})
		sets.midcast.Aspir = set_combine(sets.midcast.Macc, {
				head="Appetence Crown", neck="Aesir Torque",
				waist="Fucho-no-Obi"})
		
		-- Elemental Magic
		sets.midcast.Nuke = set_combine(sets.midcast.Banish)
		sets.midcast.DOT = set_combine(sets.midcast.Macc,{})

		-- Melee Sets
		sets.TP = {}
		sets.precast.WS = set_combine(sets.TP, {})
		sets.precast.WS['Hexa Strike'] = set_combine(sets.precast.WS, {})
end