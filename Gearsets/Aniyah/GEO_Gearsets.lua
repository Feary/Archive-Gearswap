-- Geo Gearsets
-- Created: 4/11/2014
-- Last Updated:
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
		sets.idle.PDT = {main={name="Earth Staff", priority=2}, sub={name="Mensch Strap", priority=1},
				--head="Mallquis Chapeau +1",
				head="Jhakri Coronal +1", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
				-- body="Mallquis Saio +1", hands="Mallquis Cuffs +1", 
                body="Jhakri Robe", hands="Jhakri Cuffs +1", lring="Vocane Ring", rring="Defending Ring",
                -- waist="Fucho-no-Obi", legs="Mallquis Trews +1", feet="Mallquis Clogs +1"
				back="Umbra Cape", legs="Jhakri Slops", feet="Jhakri Pigaches +1"}
		sets.idle.MDT = {main={name="Earth Staff", priority=2}, sub={name="", priority=1},
				head="Jhakri Coronal +1", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
				-- rring="Defending Ring",
                body="Jhakri Robe", hands="Jhakri Cuffs +1",lring="Vocane Ring", rring="Shadow Ring",
                legs="Jhakri Slops", feet="Jhakri Pigaches +1"}
		sets.Resting = set_combine(sets.idle.PDT, {})
		
		sets.idle.Standard = set_combine(sets.idle.PDT,{
				lear="Merman's Earring", rear="Merman's Earring",
				body="Jhakri Robe", hands="Bagua Mitaines",
				legs="Assid. Pants +1", feet="Geomancy Sandals"})
		sets.idle.DT = set_combine(sets.idle.PDT,{
				main={name="Earth Staff", priority=2}, sub={name="Mensch Strap", priority=1}, range="Dunna",
				-- Almaric head
				head="", neck="Twilight Torque", lear="Merman's Earring", rear="Etiolation Earring",
				-- Mallquis Saio +2
				body="Jhakri Robe +2", hands="Bagua Mitaines", lring="Vocane Ring", rring=Aug.Darkring1.Aniyah,
				-- Moonbeam Cape Assidity Pants feet="Mallquis Clogs +1"
				back="Umbra Cape", waist="Fucho-no-Obi", legs="Assid. Pants +1",  feet="Geomancy Sandals"})
		sets.idle.Standard.Pet = set_combine(sets.idle.PDT,{
				--head="Selenian Cap", 
				lear="Merman's Earring", rear="Merman's Earring",
				body="Jhakri Robe", hands="Bagua Mitaines",
				legs="Assid. Pants +1", feet="Bagua Sandals"})
						
		sets.misc.Town = set_combine(sets.idle.PDT, {feet="Geomancy Sandals"})
		
		-- JA
		sets.precast.JA["Bolster"] = {body="Bagua Tunic"}
		sets.precast.JA["Widened Compass"] = {}
		
		sets.precast.JA["Life Circle"] = {body="Geomancy Tunic"}
		sets.precast.JA["Full Circle"] = {hands="Bagua Mitianes"}
		sets.precast.JA["Mending Halation"] = {legs="Bagua Pants"}
		sets.precast.JA["Radial Arcana"] = {feet="Bagua Sandals"}
		sets.precast.JA["Cardinal Chant"] = {head="Geomancy Galero"}
		sets.precast.JA["Collimated Fervor"] = {head="Geomancy Galero"}
		
		-- Precast
		-- Magic
		sets.precast.Fastcast = {
				-- head="Amalric Coif", neck="Voltsurge Torque", rear="Enchntr. Earring +1",
				head="Haruspex Hat", lear="Loquac. Earring",
                --body="Anhur Robe", lring="Prolix Ring",
				body="Jhakri Robe", hands="Jhakri Cuffs +1",  rring="Jhakri Ring",
                -- Aug.Cape.GEO.Fastcast
				back="Swith Cape", waist="Witful Belt", legs="Geomancy Pants", feet="Amalric Nails"}
		sets.precast.Cure = set_combine(sets.precast.Fastcast, {
                body="Heka's Kalasiris",
                --back="Pahtli Cape"
				})
		sets.precast.Enhancing = set_combine(sets.precast.Fastcast,{
				--waist="Siegel Sash"
				})
		sets.precast.Stoneskin = set_combine(sets.precast.Enhancing,{
				--head="Umuthi Hat"
				})
		sets.precast.Elemental = set_combine(sets.precast.Fastcast,{
				hands="Bagua Mitaines",
				--legs="Mallquis Trews +1"
				})
	
		-- Midcast
		sets.midcast.Recast = set_combine(sets.idle.PDT, {waist="Witful Belt"})
		
		sets.midcast.ConserveMP = {
				waist="Austerity Belt"}
		
		-- Geomancy
		-- 900 Skill or Bust
		sets.midcast.Geomancy = set_combine(sets.midcast.ConserveMP,{range="Dunna",
				-- neck="Incantor's Torque", 
				head="Azimuth Hood", neck="Reti Pendant",
				-- lring="Stikini Ring", rring="Stikini Ring",
				body="Bagua Tunic", hands="Geomancy Mitaines", 
				-- back=Nantosuelta's Cape"
				legs="Bagua Pants", feet="Azimuth Gaiters"})
		sets.midcast.Geomancy.Indi = set_combine(sets.midcast.ConserveMP,{range="Dunna",
				-- neck="Incantor's Torque",
				head="Azimuth Hood", 
				-- lring="Stikini Ring", rring="Stikini Ring",
				body="Bagua Tunic", hands="Geomancy Mitaines",
				-- back=Nantosuelta's Cape"
				legs="Bagua Pants", feet="Azimuth Gaiters"})
	
		-- Elemental
		-- High Resist
		sets.midcast.Elemental = {main={name="Arasy Staff", priority=2}, sub={name="Niobid Strap", priority=1},
				--  lear="Lifestorm Earring", rear="Psystorm Earring",
				head="Jhakri Coronal +1", neck="Aesir Torque",
                body="Jhakri Robe", hands="Jhakri Cuffs +1", lring="Shiva Ring", rring="Shiva Ring",
                back="Toro Cape", waist="Demonry Sash", legs="Jhakri Slops", feet="Jhakri Pigaches +1"}
		-- Damage
		sets.midcast.Nuke = {main={name="Arasy Staff", priority=2}, sub={name="Niobid Strap", priority=1},
				--  head="Mallquis Chapeau +1" neck="Eddy Necklace", lear="Novio Earring",
				head="Jhakri Coronal +1", neck="Aesir Torque", lear="Hecate's Earring", rear="Friomisi Earring",
                body="Jhakri Robe", hands="Jhakri Cuffs +1", lring="Shiva Ring", rring="Shiva Ring",
                back="Toro Cape", waist="Demonry Sash", legs="Jhakri Slops", feet="Jhakri Pigaches +1"}		
		
		sets.midcast.Nuke.Acc = {main={name="Arasy Staff", priority=2}, sub={name="Niobid Strap", priority=1}, 
				--  neck="Eddy Necklace" lear="Barkaro. Earring",
				head="Jhakri Coronal +1", neck="Aesir Torque", lear="Hecate's Earring", rear="Friomisi Earring",
                --  hands="Mallquis Cuffs +1",
				body="Jhakri Robe", hands="Jhakri Cuffs +1", lring="Shiva Ring", rring="Shiva Ring",
                --back=Aug.Cape.GEO.MACC, 
				back="Ogapepo Cape", waist="Demonry Sash", legs="Jhakri Slops", feet="Jhakri Pigaches +1"}		
		
		sets.midcast.Nuke.MB = {main={name="Arasy Staff", priority=2}, sub={name="Niobid Strap", priority=1}, 
				-- head="Mallquis Chapeau +1", neck="Mizu. Kubikazari", lear="Barkaro. Earring",
				head="Jhakri Coronal +1", neck="Aesir Torque", lear="Hecate's Earring", rear="Friomisi Earring",
                -- body="Mallquis Saio +1", lring="Mujin Band", rring="Locus Ring",
				body="Jhakri Robe", hands="Amalric Gages", lring="Shiva Ring", rring="Jhakri Ring",
                --back=Aug.Cape.GEO.MACC, legs="Mallquis Trews +1",
				back="Toro Cape", waist="Demonry Sash", legs="Jhakri Slops", feet="Jhakri Pigaches +1"}		
	
		--Healing Magic
		sets.midcast.Cure = {main={name="Arka IV", priority=2}, sub={name="Pax Grip", priority=1},
				-- lear="Novia Earring", rear="Lifestorm Earring",
				head="Haruspex Hat", neck="Colossus's Torque", 
				-- hands="Telchine Gloves", lring="Stikini Ring", rring="Stikini Ring",
                body="Heka's Kalasiris", hands="Hagondes Cuffs", rring="Sirona's Ring",
                back="Tempered Cape", waist="Cascade Belt", legs="Geomancy Pants", feet="Rubeus Boots"}
		
		sets.midcast.Curaga = {main={name="Arka IV", priority=2}, sub={name="Pax Grip", priority=1},
				-- lear="Novia Earring", rear="Lifestorm Earring",
				head="Haruspex Hat", neck="Colossus's Torque", 
                body="Heka's Kalasiris", hands="Hagondes Cuffs", rring="Sirona's Ring",
                back="Tempered Cape", waist="Cascade Belt", legs="Geomancy Pants", feet="Rubeus Boots"}
	
		-- Enhancing 
		sets.midcast.Enhancing = {--main={name="Kirin's Pole",priority=2}, sub={name="Fulcio Grip",priority=1},
				--  head="Umuthi Hat", lear="Andoaa Earring", rear="Augment. Earring",
				neck="Colossus's Torque",
				-- body="Anhur Robe", hands="Ayao's Gages",  lring="Stikini Ring", rring="Stikini Ring",
				-- back="Merciful Cape", legs="Portant Pants", waist="Olympus Sash",
				feet="Rubeus Boots"}
		sets.midcast.Phalanx = set_combine(sets.midcast.Enhancing)
		sets.midcast.Hastespell = {--ammo="Impatiens", 
				waist="Witful Belt"}
		sets.midcast.Stoneskin = {
				--waist="Siegel Sash"
				}
		sets.midcast.Aquaveil = {}
		sets.midcast.Blink = set_combine(sets.midcast.Aquaveil)
		sets.midcast.Reraise = set_combine(sets.midcast.ConserveMP)

		-- Enfeebling
		-- Potency
		sets.midcast.Enfeebling = {main={name="Arasy Staff", priority=2}, sub={name="Niobid Strap", priority=1}, 
				-- neck="Eddy Necklace", lear="Lifestorm Earring", rear="Psystorm Earring",
				head="Jhakri Coronal +1", 
                --  Stikini Ring Stikini Ring
				body="Jhakri Robe", hands="Jhakri Cuffs +1", lring="Perception ring", rring="Balrahn's ring",
                back="Ogapepo Cape", waist="Demonry Sash", legs="Jhakri Slops", feet="Jhakri Pigaches +1"}
		sets.midcast.Macc = {main={name="Arasy Staff", priority=2}, sub={name="Niobid Strap", priority=1}, 
				-- neck="Eddy Necklace", lear="Lifestorm Earring", rear="Psystorm Earring",
				head="Jhakri Coronal +1", 
				-- Stikini Ring Stikini Ring
                body="Jhakri Robe", hands="Jhakri Cuffs +1", lring="Perception ring", rring="Balrahn's ring",
                back="Ogapepo Cape", waist="Demonry Sash", legs="Jhakri Slops", feet="Jhakri Pigaches +1"}
		sets.midcast.Dia = set_combine(sets.midcast.ConserveMP)
		sets.midcast.Paralyze = set_combine(sets.midcast.Macc)
		sets.midcast.Blind = set_combine(sets.midcast.Macc)
		sets.midcast.Bio = set_combine(sets.midcast.Macc)
		sets.midcast.Slow = set_combine(sets.midcast.Macc)
				
		-- Dark Magic
		sets.midcast.Dark = set_combine(sets.midcast.Macc, {
				head="Bagua Galero", neck="Aesir Torque",
				body="Geomancy Tunic", 
				--back="Merciful Cape",
				legs="Azimuth Tights"})
		sets.midcast.Aspir = set_combine(sets.midcast.Dark,{
				head="Bagua Galero", 
				--waist="Fucho-no-Obi"
				})
		sets.midcast.Stun = set_combine(sets.midcast.Macc,{--ammo="Hasty Pinion +1",
				-- neck="Voltsurge Torque", rear="Enchntr. Earring +1",
				head="Jhakri Coronal +1", lear="Loquac. Earring", 
				-- lring="Stikini Ring", rring="Stikini Ring",
				body="Jhakri Robe", hands="Jhakri Cuffs +1", 
				--back=Aug.Cape.GEO.MACC, 
				back="Ogapepo Cape", waist="Demonry Sash", legs="Jhakri Slops", feet="Jhakri Pigaches +1"})
		
		-- Melee Sets
		sets.TP = set_combine(sets.idle.PDT, {
				-- neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				head="Jhakri Coronal +1", lear="Ghillie Earring +1", 
				body="Jhakri Robe", hands="Jhakri Cuffs +1", lring="Rajas Ring", rring="Ramuh Ring",
				--Aug.Cape.GEO.Melee
				back="Buquwik Cape", waist="Witful Belt", legs="Jhakri Slops", feet="Jhakri Pigaches +1"}) 
				
		sets.TP.Acc = set_combine(sets.TP, {
				-- neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				head="Jhakri Coronal +1", lear="Ghillie Earring +1", 
				body="Jhakri Robe", hands="Jhakri Cuffs +1", lring="Ramuh Ring", rring="Ramuh Ring",
				--Aug.Cape.GEO.Melee
				back="Buquwik Cape", waist="Witful Belt", legs="Jhakri Slops", feet="Jhakri Pigaches +1"}) 

		-- Weaponskills	
		sets.precast.WS = set_combine(sets.TP, {
				-- neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				head="Jhakri Coronal +1", lear="Ghillie Earring +1", 
				body="Jhakri Robe", hands="Jhakri Cuffs +1", lring="Ramuh Ring", rring="Ramuh Ring",
				--Aug.Cape.GEO.Melee
				back="Buquwik Cape", waist="Witful Belt", legs="Jhakri Slops", feet="Jhakri Pigaches +1"}) 
		
		sets.precast.WS.Acc = set_combine(sets.precast.WS, {
				-- neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				head="Jhakri Coronal +1", lear="Ghillie Earring +1", 
				body="Jhakri Robe", hands="Jhakri Cuffs +1", lring="Ramuh Ring", rring="Ramuh Ring",
				--Aug.Cape.GEO.Melee
				back="Buquwik Cape", waist="Witful Belt", legs="Jhakri Slops", feet="Jhakri Pigaches +1"}) 
		
		-- Club
		-- Hexa Strike
		sets.precast.WS['Hexa Strike'] = set_combine(sets.precast.WS, {
			-- neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				head="Jhakri Coronal +1", lear="Ghillie Earring +1", 
				body="Jhakri Robe", hands="Jhakri Cuffs +1", lring="Ramuh Ring", rring="Ramuh Ring",
				--Aug.Cape.GEO.Melee
				back="Buquwik Cape", waist="Witful Belt", legs="Jhakri Slops", feet="Jhakri Pigaches +1"}) 
		
		sets.precast.WS.Acc['Hexa Strike'] =  set_combine(sets.precast.WS.Acc, {
				-- neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				head="Jhakri Coronal +1", lear="Ghillie Earring +1", 
				body="Jhakri Robe", hands="Jhakri Cuffs +1", lring="Ramuh Ring", rring="Ramuh Ring",
				--Aug.Cape.GEO.Melee
				back="Buquwik Cape", waist="Witful Belt", legs="Jhakri Slops", feet="Jhakri Pigaches +1"}) 
		
		-- Realmrazer
		sets.precast.WS['Realmrazer'] = set_combine(sets.precast.WS, {
				-- neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				head="Jhakri Coronal +1", lear="Ghillie Earring +1", 
				body="Jhakri Robe", hands="Jhakri Cuffs +1", lring="Ramuh Ring", rring="Ramuh Ring",
				--Aug.Cape.GEO.Melee
				back="Buquwik Cape", waist="Witful Belt", legs="Jhakri Slops", feet="Jhakri Pigaches +1"}) 
		
		sets.precast.WS.Acc['Realmrazer'] = set_combine(sets.precast.WS.Acc, {
				-- neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				head="Jhakri Coronal +1", lear="Ghillie Earring +1", 
				body="Jhakri Robe", hands="Jhakri Cuffs +1", lring="Ramuh Ring", rring="Ramuh Ring",
				--Aug.Cape.GEO.Melee
				back="Buquwik Cape", waist="Witful Belt", legs="Jhakri Slops", feet="Jhakri Pigaches +1"}) 
		
		-- Exudation
		sets.precast.WS['Exudation'] = set_combine(sets.precast.WS, {
				-- neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				head="Jhakri Coronal +1", lear="Ghillie Earring +1", 
				body="Jhakri Robe", hands="Jhakri Cuffs +1", lring="Ramuh Ring", rring="Ramuh Ring",
				--Aug.Cape.GEO.Melee
				back="Buquwik Cape", waist="Witful Belt", legs="Jhakri Slops", feet="Jhakri Pigaches +1"}) 
				
		sets.precast.WS.Acc['Exudation'] = set_combine(sets.precast.WS.Acc, {
				-- neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				head="Jhakri Coronal +1", lear="Ghillie Earring +1", 
				body="Jhakri Robe", hands="Jhakri Cuffs +1", lring="Ramuh Ring", rring="Ramuh Ring",
				--Aug.Cape.GEO.Melee
				back="Buquwik Cape", waist="Witful Belt", legs="Jhakri Slops", feet="Jhakri Pigaches +1"}) 
				
		-- Staff 
		sets.precast.WS['Shattersoul'] = set_combine(sets.precast.WS, {
				-- neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				head="Jhakri Coronal +1", lear="Ghillie Earring +1", 
				body="Jhakri Robe", hands="Jhakri Cuffs +1", lring="Ramuh Ring", rring="Ramuh Ring",
				--Aug.Cape.GEO.Melee
				back="Buquwik Cape", waist="Witful Belt", legs="Jhakri Slops", feet="Jhakri Pigaches +1"}) 
		sets.precast.WS['Cataclysm'] = set_combine(sets.precast.WS, {
				-- neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				head="Jhakri Coronal +1", lear="Ghillie Earring +1", 
				body="Jhakri Robe", hands="Jhakri Cuffs +1", lring="Ramuh Ring", rring="Ramuh Ring",
				--Aug.Cape.GEO.Melee
				back="Buquwik Cape", waist="Witful Belt", legs="Jhakri Slops", feet="Jhakri Pigaches +1"}) 
		
		-- Misc
		sets.misc.Waltz = set_combine(sets.idle.PDT,{})
		sets.misc.Steps = set_combine(sets.TP.Acc,{})
		sets.misc.flourish = set_combine(sets.midcast.Macc,{})

end