-- Aniyah's BLM Gearsets
-- Created On: 4/11/2014
-- Last Updated: 9/11/2014
-- To Do List
--
--
--
--

if player.Name == 'Aniyah' then
		-- includes
		include('include/mappings.lua')
		include('include/equipment.lua')
		include('include/utility.lua')

		-- Auto Sets
		-- Standard/idle
		sets.idle.PDT = {main="Earth Staff",
				head="Jhakri Coronal +1", neck="Twilight Torque",  lear="Merman's Earring", rear="Merman's Earring",
                body="Hagondes Coat +1", hands="Jhakri Cuffs +1", lring="Vocane Ring", rring="Defending Ring",
                back="Cheviot Cape", waist="Fucho-no-obi", legs="Jhakri Slops", feet="Jhakri Pigaches +1"}
		sets.idle.MDT = {main="Earth Staff",
				head="Jhakri Coronal +1", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
                body="Hagondes Coat +1", hands="Jhakri Cuffs +1", lring="Vocane Ring", rring="Defending Ring",
        		back="Felicitas Cape", waist="Fucho-no-obi",  legs="Jhakri Slops", feet="Jhakri Pigaches +1"}			
		
		sets.Resting = set_combine(sets.idle.PDT,{})	
		
		sets.idle.Standard = set_combine(sets.idle.PDT,{
				-- feet="Herald's Gaiters"})
		
		sets.misc.Town = set_combine(sets.idle.PDT, {
				--feet="Herald's Gaiters"})
		
		sets.lockstyle = set_combine(sets.idle.Standard,{})
		
		-- JA
		sets.precast.JA["Manafont"] = {body="Archmage's Coat"}
		sets.precast.JA["Subtle Sorcery"] = {}
		sets.precast.JA["Elemental Seal"] = {main="Baqil Staff"}
		sets.precast.JA["Emnity Douse"] = {}
		sets.precast.JA["Manawell"] = {}
		
		-- Precast
		-- Magic
		sets.precast.MinusHP = {
				head="Zenith Crown", neck="Morgana's Choker",
				body="Dalmatica", hands="Zenith Mitts",
				legs="Zenith Slacks", feet="Zenith Pumps"}
		sets.precast.Fastcast = {ammo="Impatiens",
				head="Nahtirah Hat", neck="", lear="Loquac. Earring",
                body="Anhur Robe", hands="Jhakri Cuffs +1", rring="Prolix Ring",
                back="Swith Cape", waist="Witful Belt", legs="Orvail Pants +1", feet="Chelona Boots"}
		sets.precast.Elemental = set_combine(sets.precast.Fastcast,{
			head="Goetia Petasos +2"})
		sets.precast.Cure = set_combine(sets.precast.Fastcast, {
                body="Heka's Kalasiris",
                back="Pahtli Cape"})
		sets.precast.Enhancing = set_combine(sets.precast.Fastcast,{
				waist="Seigel Sash"})
		sets.precast.Stoneskin = set_combine(sets.precast.Enhancing,{
				head="Umuthi Hat"})		
		-- Midcast
		sets.midcast.Recast = set_combine(sets.idle.PDT, {waist="Witful Belt"})
		
		sets.midcast.ConserveMP = {}
		
		-- Elemental
		-- High Resist
		sets.midcast.Elemental = {main="Atinian Staff", sub="Wise Grip", ammo="Witchstone",
				head="Jhakri Coronal +1", neck="Eddy Necklace", lear="Strophadic Earring", rear="Friomisi Earring",
                body="Bokwus Robe", hands="Yaoyotl Gloves", lring="Icesoul ring", rring="Icesoul ring",
                back="Toro Cape", waist="Sekhmet Corset", legs="Jhakri Slops", feet="Umbani Boots"}
		-- Damage
		sets.midcast.Nuke = {main="Atinian Staff", sub="Wise Grip", ammo="Witchstone",
				head="Jhakri Coronal +1", neck="Eddy Necklace", lear="Novio Earring", rear="Friomisi Earring",
                body="Bokwus Robe", hands="Yaoyotl Gloves", lring="Icesoul ring", rring="Icesoul ring",
                back="Toro Cape", waist="Sekhmet Corset", legs="Jhakri Slops", feet="Umbani Boots"}
		sets.midcast.Elemental = {main="Atinian Staff", sub="Pax Grip", ammo="Witchstone",
				head="Jhakri Coronal +1", neck="Aesir Torque", lear="Moldavite Earring", rear="Hecate's Earring",
                body="Hagondes Coat +1", hands="Jhakri Cuffs +1", lring="Shiva ring", rring="Shiva ring",
                back="Toro Cape", waist="Cognition Belt", legs="Jhakri Slops", feet="Rubeus Boots"}
		-- Damage
		sets.midcast.Nuke = {main="Atinian Staff", sub="Pax Grip", ammo="Witchstone",
				head="Jhakri Coronal +1", neck="Aesir Torque", lear="Moldavite Earring", rear="Hecate's Earring",
                body="Hagondes Coat +1", hands="Goetia Gloves +2", lring="Shiva ring", rring="Shiva ring",
                back="Toro Cape", waist="Cognition Belt", legs="Jhakri Slops", feet="Rubeus Boots"}
		
		--Healing Magic
		sets.midcast.Cure = {main="Arka IV", 
				head="", neck="Colossus's Torque", lear="Novia Earring", rear="Lifestorm Earring",
                body="Heka's Kalasiris", hands="Bokwus Gloves", lring="Aquasoul Ring", rring="Aquasoul Ring",
                back="Refraction Cape", waist="Cascade Belt", legs="Bokwus Slops", feet="Rubeus Boots"}
		
		sets.midcast.Curaga = {main="Arka IV", 
				head="", neck="Colossus's Torque", lear="Novia Earring", rear="Lifestorm Earring",
                body="Heka's Kalasiris", hands="Bokwus Gloves", lring="Aquasoul Ring", rring="Aquasoul Ring",
                back="Refraction Cape", waist="Cascade Belt", legs="Bokwus Slops", feet="Rubeus Boots"}
	
		-- Enhancing 
		-- 
		sets.midcast.Enhancing = {sub="Fulcio Grip",neck="Colossus's Torque",body="Anhur Robe",hands="Ayao's Gloves",legs="Portant Pants",feet="Rubeus Boots",waist="Cascade Belt",back="Merciful Cape"}
		sets.midcast.Phalanx = set_combine(sets.midcast.Enhancing)
		sets.midcast.Hastespell = {ammo="Impatiens", waist="Witful Belt"}
		sets.midcast.Stoneskin = {}
		sets.midcast.Aquaveil = {}
		sets.midcast.Blink = set_combine(sets.midcast.Aquaveil)
		sets.midcast.Reraise = set_combine(sets.midcast.ConserveMP)

		-- Enfeebling
		-- Potency
		sets.midcast.Enfeebling = {main="Atinian Staff", sub="", ammo="Kalboron Stone",
				head="Orvail Corona +1", neck="Enfeebling Torque", lear="Lifestorm Earring", rear="Psystorm Earring",
                body="Goetia Coat +2", hands="Jhakri Cuffs +1", lring="Perception Ring", rring="Balrahn's Ring",
                back="", waist="Demonry Sash", legs="Orvail Pants +1", feet="Rubeus Boots"}
		sets.midcast.Macc = {main="Atinian Staff", sub="", ammo="Kalboron Stone",
				head="Orvail Corona +1", neck="Enfeebling Torque", lear="Lifestorm Earring", rear="Psystorm Earring",
                body="Goetia Coat +2", hands="Jhakri Cuffs +1", lring="Perception Ring", rring="Balrahn's Ring",
                back="", waist="Demonry Sash", legs="Orvail Pants +1", feet="Rubeus Boots"}
		sets.midcast.Dia = set_combine(sets.midcast.ConserveMP)
		sets.midcast.Paralyze = set_combine(sets.midcast.Macc)
		sets.midcast.Blind = set_combine(sets.midcast.Macc)
		sets.midcast.Bio = set_combine(sets.midcast.Macc)
		sets.midcast.Slow = set_combine(sets.midcast.Macc)
		
		
		-- Dark Magic
		sets.midcast.Dark = set_combine(sets.midcast.Macc, {
				head="Appetence Crown", neck="Aesir Torque",
				hands="Sorcerer's Gloves", 
				back="Merciful Cape", waist="", legs="Wizard's Tonban", feet="Goetia Sabots +2"})
		sets.midcast.Aspir = set_combine(sets.midcast.Dark)
		sets.midcast.Stun = set_combine(sets.midcast.Macc)
		
		-- Melee Sets
		sets.TP = set_combine(sets.idle.PDT, {
				 lring="Rajas Ring", rring="Spiral Ring",
                })
		sets.precast.WS = set_combine(sets.TP, {})
		sets.precast.WS['Shattersoul'] = set_combine(sets.precast.WS, {})
		
		-- Misc
		sets.misc.Waltz = {}
		sets.misc.Steps = {}
		sets.misc.flourish = {}
end