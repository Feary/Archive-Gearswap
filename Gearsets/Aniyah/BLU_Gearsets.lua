-- Aniyah's BLU Gearsets
-- Created: 4/26/2014
-- Last Updated: 6/13/2014
-- To Do List:
--
--

if player.name == 'Aniyah' then
		-- includes
		include('include/mappings.lua')
		include('include/equipment.lua')
		
		-- Auto Sets
		-- Standard/idle
		sets.idle.PDT = {
				-- Herculean Head Loricate Torque +1
				head="Jhakri Coronal +1", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
				-- Herculean Vest  Herculean Hands
                body="Emet Harness", hands="Jhakri Cuffs +1", lring="Vocane Ring", rring="Defending Ring",
				-- Herculean Boots 
                back="Cheviot Cape", waist="Flume Belt", legs="Jhakri Slops", feet="Jhakri Pigaches +1"}
		sets.idle.MDT = {
				-- Herculean Head Loricate Torque +1
				head="Jhakri Coronal +1", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
				-- Herculean Vest  Herculean Hands
                body="Emet Harness", hands="Jhakri Cuffs +1",  lring="Vocane Ring", rring="Defending Ring",
                --  Herculean Boots 
				back="Felicitas Cape", waist="Flume Belt", legs="Jhakri Slops", feet="Jhakri Pigaches +1"}			
		sets.Resting = set_combine(sets.idle.PDT, {})
		
		sets.idle.Standard = set_combine(sets.idle.PDT,{
				lear="Merman's Earring", rear="Merman's Earring",
				legs="Carmine Cuisses"})
		
		sets.misc.Town = set_combine(sets.idle.Standard, {
				body="Mirage Jubbah", 
				legs="Carmine Cuisses"})
		
		sets.lockstyle = set_combine{sets.misc.Town}
		sets.idle.Fishing = set_combine(sets.idle.Standard,{})
		sets.idle.Cooking = set_combine(sets.idle.Standard,{})		
		
		-- JA
		sets.precast.JA["Azure Lore"] = {hands="Mv. Bazubands +2"}
		sets.precast.JA["Unbridled Wisdom"] = {}
		
		sets.precast.JA["Unbridled Learning"] = {}
		sets.precast.JA["Chain Affinity"] = {head="Hashishin Kavuk", feet="Magus Charuqs"}
		sets.precast.JA["Burst Affinity"] = {legs="Magus Shalwar", feet="Hashishin Basmak"}
		sets.precast.JA["Efflux"] = {legs="Hashishin Tayt"}
		sets.precast.JA["Diffusion"] = {feet="Mirage Charuqs"}
		sets.precast.JA["Convergence"] = {head="Mirage Keffiyeh"}
		sets.precast.JA["Enchainment"] = {body="Mirage Jubbah"}
		
		-- Precast
		-- Magic
		sets.precast.Fastcast = set_combine(sets.idle.PDT, {--ammo="Impatiens", 
				-- head="Carmine Mask", neck="Orunmila's Torque", rear="Enchantr. Earring",
				head="Haruspex Hat", lear="Loquac. Earring",
                -- body="Luhlaza Jubbah", hands="Thaumas Gloves", rring="Prolix Ring",
				-- legs Aynamo Cos
                back="Swith Cape", waist="Witful Belt", legs="Orvail Pants +1", feet="Carmine Greaves"})
		sets.precast.BlueMagic = set_combine(sets.precast.Fastcast,{body="Mavi Mintan +2"})
		sets.precast.Cure = set_combine(sets.precast.Fastcast, {
				--back="Pahtli Cape"
				})
		
		sets.misc.Waltz = {
				rring="Asklepian Ring",
				--legs="Dashing Subligar"
				}
		sets.misc.Steps = {}
		sets.misc.flourish = {}		
		
		-- Melee Sets
		-- Job Traits - Dual Wield 1 = Spells  | 100 JP = Dual wield 2 | Dual wield 3 = 1200 JP
		-- Goal 36% Dual Wield 
		sets.TP = set_combine(sets.idle.PDT, {
                head="Carmine Mask", neck="Mavi Scarf", lear="Brutal Earring", rear="Ghillie Earring +1",
                body="Adhemar Jacket", hands="Adhemar Wristbands", lring="Rajas Ring", rring="Epona's Ring",
				back=Aug.Cape.BLU.TP.Aniyah, waist="Reiki Yotai", legs="Carmine Cuisses", feet="Carmine Greaves"})
		
		sets.TP.DW = set_combine(sets.idle.PDT, {
                head="Carmine Mask", neck="Mavi Scarf", lear="Brutal Earring", rear="Ghillie Earring +1",
                body="Adhemar Jacket", hands="Adhemar Wristbands", lring="Rajas Ring", rring="Epona's Ring",
				back=Aug.Cape.BLU.TP.Aniyah, waist="Windbuffet Belt", legs="Carmine Cuisses", feet="Carmine Greaves"})
	
		-- Accuracy
		sets.TP.Acc = set_combine(sets.TP, {
				head="Carmine Mask", neck="Mavi Scarf", lear="Brutal Earring", rear="Zennaroi Earring",
                body="Adhemar Jacket", hands="Adhemar Wristbands", lring="Rajas Ring", rringl="Epona's Ring",
				back=Aug.Cape.BLU.TP.Aniyah, waist="Reiki Yotai", legs="Carmine Cuisses", feet="Carmine Greaves"})
						
		-- Allianced Buffs - Haste + March x2 
		sets.TP.Buffed = set_combine(sets.TP, {})
		
		-- DT/Acc
		sets.TP.Hybrid = set_combine(sets.idle.PDT, {
              })
			  
			
		-- Midcast
		sets.midcast.Recast = set_combine(sets.idle.PDT, {ammo="Hasty Pinion",
				hands="Adhemar Wristbands",
				waist="Witful Belt"})
		
		sets.midcast.ConserveMP = set_combine(sets.idle.Recast, {feet="Carmine Greaves"})
		
		-- Blue Magic
		-- Skill 500 Caps
		sets.midcast.BlueMagic = set_combine(sets.TP,{ammo="Mavi Tathlum",
                head="Mirage Keffiyeh", neck="Mavi Scarf",
                body="Magus Jubbah", 
				-- back="Cornflower Cape", feet="Mirage Charuqs"
				legs="Hashishin Tayt"})
		
		-- Recast
		sets.midcast.BlueMagic.Recast = set_combine(sets.midcast.Recast,{hands="Mv. Bazubands +2"})
		
		-- Skill
		sets.midcast.BlueMagic.Skill = set_combine(sets.midcast.BlueMagic)
		
		-- Duration
		sets.midcast.BlueMagic.Duration = set_combine(sets.midcast.BlueMagic.Recast, {})
		
		-- ConserveMP
		sets.midcast.BlueMagic.ConserveMP = set_combine(sets.midcast.BlueMagic.Recast, {
				--head="Telchine Cap", 
				neck="Reti Pendant", lear="Gwati Earring",
				--legs="Lengo Pants",
				waist="Austerity Belt", feet="Carmine Greaves"})
		
		-- STR
		sets.midcast.BlueMagic.STR = set_combine(sets.midcast.BlueMagic, {
				head="Jhakri Coronal +1", neck="Tjukurrpa Medal", lear="Flame Pearl", rear="Flame Pearl",
				body="Jhakri Robe", hands="Jhakri Cuffs +1", lring="Ifrit Ring", rring="Ifrit Ring",
				-- Aug.Cape.BLU.WS
				back="Buquwik Cape", waist="Prosilio Belt", legs="Jhakri Slops", feet="Jhakri Pigaches +1"})
		-- STR Accuracy i.e Heavy Strike
		sets.midcast.BlueMagic.STRAcc = set_combine(sets.midcast.BlueMagic.STR, {
				-- neck="Iqabi Necklace",
				head="Carmine Mask", lear="Ghillie Earring +1", rear="Zennaroi Earring",
				-- Acc Body
				body="Jhakri Robe", hands="Jhakri Cuffs +1", lring="Rajas Ring", rring="Ramuh Ring",
				--back=Aug.Cape.BLU.WS, 
				waist="Prosilio Belt", legs="Carmine Cuisses", feet="Jhakri Pigaches +1"})
		
		-- DEX
		sets.midcast.BlueMagic.DEX = set_combine(sets.midcast.BlueMagic.STR)

		-- VIT
		sets.midcast.BlueMagic.VIT = set_combine(sets.midcast.BlueMagic.STR)
		
		-- AGI
		sets.midcast.BlueMagic.AGI = set_combine(sets.midcast.BlueMagic.STR)
		
		-- CHR
		sets.midcast.BlueMagic.CHR = set_combine(sets.midcast.BlueMagic, {})

		-- MND
		sets.midcast.BlueMagic.MND = set_combine(sets.midcast.BlueMagic.STR)
		
		-- INT
		sets.midcast.BlueMagic.INT = set_combine(sets.midcast.BlueMagic, {
				-- neck="Eddy Necklace",
                head="Jhakri Coronal +1", lear="Hecate's Earring", rear="Friomisi Earring",
                body="Jhakri Robe", hands="Amalric Gages", lring="Shiva Ring", rring="Shiva Ring",
                -- Aug.Cape.BLU.MB
				back="Toro Cape", waist="Warwolf Belt", legs="Jhakri Slops", feet="Amalric Nails"})
		
		-- MB
		sets.midcast.BlueMagic.MB = set_combine(sets.midcast.BlueMagic, {})
				
		-- Dark - Tenerbal Crush
		sets.midcast.BlueMagic.INT.Dark = set_combine(sets.midcast.Nuke, {
				-- Pixie Hairpin +1 neck="Eddy Necklace",
				head="Jhakri Coronal +1",  lear="Hecate's Earring", rear="Friomisi Earring",
				body="Jhakri Robe", hands="Jhakri Cuffs +1", lring="Shiva Ring", rring="Archon Ring",
                -- Aug.Cape.BLU.MB
				back="Toro Cape", waist="Warwolf Belt", legs="Jhakri Slops", feet="Jhakri Pigaches +1"})
		
		-- Breath 
		sets.midcast.BlueMagic.Breath = set_combine(sets.midcast.BlueMagic.Nuke, {ammo="Mavi Tathlum",
				--head="Luhlaza Keffiyeh"
				})
		
		-- Macc
		sets.midcast.BlueMagic.Macc = set_combine(sets.midcast.BlueMagic, {
                --neck="Sanctity Necklace", lear="Gwati Earring", rear="Enchntr. Earring +1",
				head="Jhakri Coronal +1",
				-- lring="Stikini Ring", rring="Stikini Ring",
				body="Jhakri Robe", hands="Jhakri Cuffs +1", lring="Balrahn's Ring", rring="Perception Ring",
				--Aug.Cape.BLU.MB waist="Ovate Rope",
				back="Ogapepo Cape", legs="Jhakri Slops", feet="Jhakri Pigaches +1"})	
		
		-- AddEffect
		sets.midcast.BlueMagic.AddEffect = set_combine(sets.midcast.Macc, {
				-- neck="Iqabi Necklace", lear="Gwati Earring", rear="Enchntr. Earring +1",
                head="Jhakri Coronal +1", 
				-- lring="Stikini Ring", rring="Stikini Ring",
                body="Jhakri Robe", hands="Jhakri Cuffs +1", lring="Balrahn's Ring", rring="Perception Ring",
				-- Aug.Cape.BLU.MB waist="Ovate Rope",
                back="Ogapepo Cape", waist="Anguinus Belt", legs="Jhakri Slops", feet="Jhakri Pigaches +1"})

		-- Healing Cure Pot
		sets.midcast.BlueMagic.CurePot = set_combine(sets.midcast.BlueMagic.ConserveMP, {
				lear="Loquac. Earring",
				-- lring="Stikini Ring", rring="Stikini Ring",
                back="Tempered Cape"})
		sets.midcast.BlueMagic.CurePot.Self = set_combine(sets.midcast.BlueMagic.CurePot, {
                -- neck="Phalaina Locket",
                -- lring="Stikini Ring", rring="Stikini Ring",
                -- waist="Chuq'aba Belt"
				back="Tempered Cape",})

		-- White Wind = HP set
		sets.midcast.BlueMagic.WW = set_combine(sets.midcast.BlueMagic.CurePot, {
				lear="Loquac. Earring",
				-- lring="Kunaji Ring", 
				rring="Asklepian Ring",
                back="Tempered Cape"})
		sets.midcast.BlueMagic.WW.Self = set_combine(sets.midcast.BlueMagic.CurePot.Self, {
                -- neck="Phalaina Locket",
                -- lring="Stikini Ring", rring="Stikini Ring",
				-- waist="Chuq'aba Belt",
                back="Tempered Cape",})
				
		-- Weaponskill
		sets.precast.WS = set_combine(sets.TP, {
				-- neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				head="Carmine Mask", Neck="Tjukurrpa Medal", lear="Brutal Earring", rear="Ghillie Earring +1",
                body="Adhemar Jacket", hands="Jhakri Cuffs +1", lring="Rajas Ring", rring="Ifrit Ring",
                 -- Aug.Cape.BLU.TP
				back=Aug.Cape.BLU.TP.Aniyah, waist="Warwolf Belt", legs="Carmine Cuisses", feet="Carmine Greaves"})
		sets.precast.WS.Acc = set_combine(sets.precast.WS, {
				-- neck="Asperity Necklace", 
				head="Carmine Mask", lear="Brutal Earring", rear="Zennaroi Earring",
                body="Adhemar Jacket", hands="Jhakri Cuffs +1", lring="Rajas Ring", rring="Ifrit Ring",
                 -- Aug.Cape.BLU.TP
				back=Aug.Cape.BLU.TP.Aniyah, waist="Warwolf Belt", legs="Carmine Cuisses", feet="Carmine Greaves"})

		-- Sword
		-- Savage Blade - STR
		sets.precast.WS['Savage Blade'] = set_combine(sets.TP, {
				-- Moonshade Earring
				head="Jhakri Coronal +1", neck="Tjukurrpa Medal", lear="Brutal Earring", rear="Flame Pearl",
                body="Adhemar Jacket", hands="Jhakri Cuffs +1", lring="Ifrit Ring", rring="Ifrit Ring",
                -- Aug.Cape.BLU.WS
				back=Aug.Cape.BLU.TP.Aniyah, waist="Warwolf Belt", legs="Jhakri Slops", feet="Jhakri Pigaches +1"})
		sets.precast.WS.Acc['Savage Blade'] = set_combine(sets.precast.WS['Savage Blade'], {
				-- Moonshade Earring
				head="Carmine Mask", neck="Tjukurrpa Medal", lear="Brutal Earring", rear="Zennaroi Earring",
                body="Adhemar Jacket", hands="Jhakri Cuffs +1", lring="Ifrit Ring", rring="Ifrit Ring",
                -- Aug.Cape.BLU.WS
				back=Aug.Cape.BLU.TP.Aniyah, waist="Warwolf Belt", legs="Carmine Cuisses", feet="Carmine Greaves"})
		
		-- Expiacion
		sets.precast.WS['Expiacion'] = {
				head="Carmine Mask", neck="Tjukurrpa Medal", lear="Brutal Earring", rear="Flame Pearl",
                body="Adhemar Jacket", hands="Adhemar Wristbands", lring="Rajas Ring", rring="Ifrit Ring",
                -- Aug.Cape.BLU.WS
				back="Buquwik Cape", waist="Warwolf Belt", legs="Carmine Cuisses", feet="Carmine Greaves"}
		sets.precast.WS.Acc['Expiacion'] = {
				head="Carmine Mask", neck="Tjukurrpa Medal", lear="Brutal Earring", rear="Flame Pearl",
                body="Adhemar Jacket", hands="Adhemar Wristbands", lring="Rajas Ring", rring="Ifrit Ring",
                -- Aug.Cape.BLU.WS
				back="Buquwik Cape", waist="Warwolf Belt", legs="Carmine Cuisses", feet="Carmine Greaves"}
		
		-- Chant du Cygne 
		sets.precast.WS['Chant du Cygne'] = {
                -- lear="Bladeborn Earring", rear="Steelflash Earring",
				head="Carmine Mask", neck="Fotia Gorget", lear="Brutal Earring", rear="Ghillie Earring +1",
				body="Adhemar Jacket", hands="Adhemar Wristbands", lring="Rajas Ring", rring="Ramuh Ring",
				-- Aug.Cape.BLU.WS
				back="Atheling Mantle", waist="Fotia Belt", legs="Carmine Cuisses", feet="Carmine Greaves"}
		sets.precast.WS.Acc['Chant du Cygne'] = {
				--  lear="Bladeborn Earring", rear="Steelflash Earring",
                head="Carmine Mask", neck="Fotia Gorget", lear="Brutal Earring", rear="Ghillie Earring +1",
				body="Adhemar Jacket", hands="Jhakri Cuffs +1", lring="Rajas Ring", rring="Ramuh Ring",
				-- Aug.Cape.BLU.WS
				back="Atheling Mantle", waist="Fotia Belt", legs="Carmine Cuisses", feet="Carmine Greaves"}
		
		-- Requiescat - MND
		sets.precast.WS['Requiescat'] = {
				--  lear="Bladeborn Earring", rear="Steelflash Earring",
                head="Jhakri Coronal +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Ghillie Earring +1",
                -- Stikini Ring Stikini Ring
				body="Jhakri Robe", hands="Jhakri Cuffs +1", lring="Rajas Ring", rring="Epona's Ring",
                -- Aug.Cape.BLU.WS
				back="Atheling Mantle", waist="Fotia Belt", legs="Jhakri Slops", feet="Jhakri Pigaches +1"}
		sets.precast.WS.Acc['Requiescat'] = {
				-- lear="Bladeborn Earring", rear="Steelflash Earring",
                head="Jhakri Coronal +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Ghillie Earring +1",
				-- Stikini Ring 
                body="Jhakri Robe", hands="Jhakri Cuffs +1", lring="Rajas Ring", rring="Epona's Ring",
                -- Aug.Cape.BLU.WS
				back="Atheling Mantle", waist="Soil Belt", legs="Jhakri Slops", feet="Jhakri Pigaches +1"}	
		
		-- Sanguine Blade
		sets.precast.WS['Sanguine Blade'] = {
				-- neck="Eddy Necklace", 
                head="Jhakri Coronal +1", lear="Hecate's Earring", rear="Friomisi Earring",
                body="Jhakri Robe", hands="Jhakri Cuffs +1", lring="Shiva Ring", rring="Shiva Ring",
                -- Aug.Cape.BLU.WS
				back="Toro Cape", waist="Warwolf Belt", legs="Jhakri Slops", feet="Jhakri Pigaches +1"}
		
		-- Realmrazer - MND/MAB
		sets.precast.WS['Realmrazer'] = {
				--  rear="Moonshade Earring",
                head="Jhakri Coronal +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Ghillie Earring +1",
                -- Stikini Ring Stikini Ring
				body="Jhakri Robe", hands="Jhakri Cuffs +1", lring="Rajas Ring", rring="Epona's Ring",
                -- Aug.Cape.BLU.WS
				back="Toro Cape", waist="Fotia Belt", legs="Jhakri Slops", feet="Jhakri Pigaches +1"}
end