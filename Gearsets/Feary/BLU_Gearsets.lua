-- BLU Gearsets
-- Created: 4/26/2014
-- Last Updated: 6/13/2017
-- To Do List:
-- Spell.Interrupted 
--
--
--

if player.name == 'Feary' then
		-- includes
		include('include/mappings.lua')
		include('include/equipment.lua')
		
		-- Auto Sets
		-- Standard/idle
		sets.idle.PDT = {ammo="Staunch Tathlum",
				head="Aya. Zucchetto +1", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
                body="Ayanmo Corazza +2", hands="Aya. Manopolas +1", lring=Aug.Darkring1, rring="Defending Ring",
                back="Shadow Mantle", waist="Flume Belt", legs="Aya. Cosciales +2", feet="Aya. Gambieras +1"}
		sets.idle.MDT = {ammo="Staunch Tathlum",
				head="Aya. Zucchetto +1", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
                body="Ayanmo Corazza +2", hands="Aya. Manopolas +1", lring=Aug.Darkring1, rring="Defending Ring",
                back="Moonbeam Cape", waist="Flume Belt", legs="Aya. Cosciales +2", feet="Aya. Gambieras +1"}			
		
		sets.Resting = set_combine(sets.idle.PDT, {})
		
		sets.idle.Standard = set_combine(sets.idle.PDT,{
				--Amalric Coif
				lear="Merman's Earring", rear="Etiolation Earring",
				legs="Carmine Cuisses +1"})
		sets.misc.Town = set_combine(sets.idle.PDT, {
				neck="Carpenter's Torque",
				body="Carpenter's Smock", hands="Carpenter's Gloves", lring="Orvail Ring", rring="Craftmaster's Ring",
				waist="Carpenter's Belt", legs="Carmine Cuisses +1"})		
		sets.lockstyle = set_combine{sets.misc.Town}
		sets.idle.Fishing = set_combine(sets.idle.Standard,{range="Lu Sh. F. Rod +1", ammo="Sinking Minnow",
				head="Tlahtlamah Glasses", neck="Fisherman's Torque",
				body="Fisherman's Smock", hands="Kachina Gloves", lring="Noddy Ring", rring="Puffin Ring",
				waist="Fisherman's Belt", legs="Fisherman's Hose", feet="Waders"})
		sets.idle.Wood = set_combine(sets.idle.Standard,{
				neck="Carpenter's Torque",
				body="Carpenter's Smock", hands="Carpenter's Gloves", lring="Orvail Ring", rring="Craftmaster's Ring",
				waist="Carpenter's Belt"})		
				 
		-- JA
		sets.precast.JA["Azure Lore"] = {hands="Luhlaza Bazubands"}
		sets.precast.JA["Unbridled Wisdom"] = {}
		
		sets.precast.JA["Unbridled Learning"] = {}
		sets.precast.JA["Chain Affinity"] = {--head="Hashishin Kavuk", 
				feet="Assimilator's Charuqs"}
		sets.precast.JA["Burst Affinity"] = {legs="Mirage Shalwar", feet="Hashishin Basmak"}
		sets.precast.JA["Efflux"] = {legs="Hashishin Tayt"}
		sets.precast.JA["Diffusion"] = {feet="Luhlaza Charuqs"}
		sets.precast.JA["Convergence"] = {head="Luhlaza Keffiyeh"}
		sets.precast.JA["Enchainment"] = {body="Luhlaza Jubbah"}
		
		-- Precast
		-- Magic
		sets.precast.Fastcast = {ammo="Staunch Tathlum",
				head="Carmine Mask +1", neck="Voltsurge Torque", lear="Loquac. Earring", rear="Enchntr. Earring +1",
                -- Kishar Ring
				body="Luhlaza Jubbah", hands="Leyline Gloves", rring="Prolix Ring",
				-- 
                back=Aug.Cape.BLU.FC, waist="Witful Belt", legs="Lengo Pants", feet="Carmine Greaves +1"}
		sets.precast.BlueMagic = set_combine(sets.precast.Fastcast,{body="Hashishin Mintan"})
		sets.precast.Cure = set_combine(sets.precast.Fastcast, {
			back="Pahtli Cape"})
		
		sets.misc.Waltz = {
				-- head=""
				rring="Asklepian Ring",
				legs="Dashing Subligar",}
		sets.misc.Steps = {ammo="Mantoptera Eye",
				head="Carmine Mask +1", neck="Iqabi Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Ramuh Ring +1", rring="Patricius Ring",
				back=Aug.Cape.BLU.TP, waist="Windbuffet Belt +1", legs="Carmine Cuisses +1", feet="Carmine Greaves +1"}
		sets.misc.flourish = {}
		
		-- Melee Sets
		sets.TP = set_combine(sets.idle.PDT, {ammo="Ginsen",
				-- Herculean Helm 4TA Lissome Necklace Telos Earring 
                head="Adhemar Bonnet", neck="Asperity Necklace", lear="Brutal Earring", rear="Suppanomimi",
				-- Herculean Vest 4TA  Herculean Gloves 4TA lring="Petrov Ring"
                body="Jhakri Robe +2", hands="Adhemar Wristbands", lring="Rajas Ring", rring="Epona's Ring",
                -- Herculean Boots 4TA
				back=Aug.Cape.BLU.TP, waist="Windbuffet Belt +1", legs="Samnuha Tights", feet="Carmine Greaves +1"})
		
		-- Accuracy - Need 1200 Acc - 100 = 1100
		sets.TP.Acc = set_combine(sets.TP, {ammo="Ginsen",
              	-- Herculean Helm 4TA Lissome Necklace Telos Earring 
                head="Carmine Mask +1", neck="Iqabi Necklace", lear="Cessance Earring", rear="Suppanomimi",
				-- Herculean Vest 4TA  Herculean Gloves 4TA lring="Petrov Ring"
                body="Ayanmo Corazza +2", hands="Adhemar Wristbands", lring="Rajas Ring", rring="Ramuh Ring +1",
                -- Herculean Boots 4TA
				back=Aug.Cape.BLU.TP, waist="Windbuffet Belt +1", legs="Carmine Cuisses +1", feet="Carmine Greaves +1"})
		
		-- Alliance Buffs - Haste + March x2 
		sets.TP.Buffed = set_combine(sets.TP, {ammo="Ginsen",
              	-- Herculean Helm 4TA Lissome Necklace Telos Earring 
                head="Adhemar Bonnet", neck="Asperity Necklace", lear="Brutal Earring", rear="Suppanomimi",
				-- Herculean Vest 4TA  Herculean Gloves 4TA lring="Petrov Ring"
                body="Jhakri Robe +2", hands="Adhemar Wristbands", lring="Rajas Ring", rring="Epona's Ring",
                -- Herculean Boots 4TA
				back=Aug.Cape.BLU.TP, waist="Windbuffet Belt +1", legs="Samnuha Tights", feet="Carmine Greaves +1"})
				
		--  DT/Acc
		sets.TP.Hybrid = set_combine(sets.idle.PDT, {ammo="Ginsen",
                -- Adhemar Bonnet 	
                head="Carmine Mask +1", neck="Iqabi Necklace", lear="Brutal Earring", rear="Suppanomimi",
				-- Adhemar Jacket lring="Petrov Ring"
                body="Ayanmo Corazza +2", hands="Adhemar Wristbands", lring="Rajas Ring", rring="Epona's Ring",
                --
				back=Aug.Cape.BLU.TP, waist="Windbuffet Belt +1", legs="Samnuha Tights", feet="Carmine Greaves +1"})
		
		-- Midcast
		sets.midcast.Recast = set_combine(sets.idle.PDT, {ammo="Hasty Pinion +1",
				hands="Adhemar Wristbands",
				waist="Witful Belt"})
		sets.midcast.ConserveMP = {feet="Carmine Greaves +1"}
		
		-- Blue Magic
		-- Caps at 500
		sets.midcast.BlueMagic = {ammo="Mavi Tathlum",
                head="Luhlaza Keffiyeh",
                body="Assimilator's Jubbah", lring="Stikini Ring", rring="Stikini Ring",
                back="Cornflower Cape", legs="Hashishin Tayt", feet="Luhlaza Charuqs"}
		-- Recast		
		sets.midcast.BlueMagic.Recast = set_combine(sets.midcast.Recast,{hands="Hashi. Bazubands"})
				
		-- Skill
		sets.midcast.BlueMagic.Skill = set_combine(sets.midcast.BlueMagic)
		
		-- Duration
		sets.midcast.BlueMagic.Duration = set_combine(sets.midcast.BlueMagic.Recast, {})
		
		-- ConserveMP
		sets.midcast.BlueMagic.ConserveMP = set_combine(sets.midcast.BlueMagic.Recast, {
					head="Telchine Cap", lear="Gwati Earring",
					waist="Austerity Belt", legs="Lengo Pants", feet="Carmine Greaves +1"})
		
		-- STR
		sets.midcast.BlueMagic.STR = set_combine(sets.midcast.BlueMagic, {ammo="Mantoptera Eye",
				-- Caro Necklace Tati Earring +1 Tati Earring +1
                head="Jhakri Coronal +1", neck="Lacono Necklace +1", lear="Vulcan's Pearl", rear="Vulcan's Pearl",
				-- Shukuyu Ring 
                body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
                back=Aug.Cape.BLU.WS, waist="Prosilio Belt +1", legs="Jhakri Slops +1", feet="Jhakri Pigaches +1"})
		
		-- STR Accuracy - I.E Heavy Strike
		sets.midcast.BlueMagic.STRAcc = set_combine(sets.midcast.BlueMagic.STR, {
				head="Carmine Mask +1", neck="Iqabi Necklace", lear="Heartseeker Earring", rear="Steelflash Earring",
				-- Acc Body
				body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Rajas Ring", rring="Ramuh Ring +1",
				back=Aug.Cape.BLU.WS, waist="Prosilio Belt +1", legs="Carmine Cuisses +1", feet="Jhakri Pigaches +1"})		
		
		-- Dex 
		sets.midcast.BlueMagic.DEX = set_combine(sets.midcast.BlueMagic.STR,{
				back=Aug.Cape.BLU.TP})
		
		-- VIT
		sets.midcast.BlueMagic.VIT = set_combine(sets.midcast.BlueMagic.STR,{})
		
		-- AGI
		sets.midcast.BlueMagic.AGI = set_combine( sets.midcast.BlueMagic.STR,{})
		
		-- CHR
		sets.midcast.BlueMagic.CHR = set_combine(sets.midcast.BlueMagic.STR, {})
				
		-- MND
		sets.midcast.BlueMagic.MND = set_combine(sets.midcast.BlueMagic.STR,{})
		
		-- INT
		sets.midcast.BlueMagic.INT = set_combine(sets.midcast.BlueMagic,{ammo="Dosis Tathlum",
                head="Jhakri Coronal +1", neck="Eddy Necklace", lear="Crematio Earring", rear="Friomisi Earring",
                body="Jhakri Robe +2", hands="Amalric Gages", lring="Shiva Ring +1", rring="Shiva Ring +1",
                -- Yamabuki-no-Obi
				back=Aug.Cape.BLU.MB, waist="Wanion Belt", legs="Amalric Slops", feet="Amalric Nails"})
		
		-- MB
		sets.midcast.BlueMagic.MB = set_combine(sets.midcast.BlueMagic.INT,{
				body="Samnuha Coat", lring="Mujin Band", rring="Locus Ring",})
				
		-- Dark
		sets.midcast.BlueMagic.INT.Dark = set_combine(sets.midcast.INT, {
				-- Pixie Hairpin +1
                head="Jhakri Coronal +1", neck="Eddy Necklace", lear="Crematio Earring", rear="Friomisi Earring",
                body="Jhakri Robe +2", hands="Amalric Gages", lring="Shiva Ring +1", rring="Archon Ring",
                -- Yamabuki-no-Obi
				back=Aug.Cape.BLU.MB, waist="Wanion Belt", legs="Amalric Slops", feet="Amalric Nails"})
		
		-- Breath 
		sets.midcast.BlueMagic.Breath = set_combine(sets.midcast.BlueMagic.INT,{
				--head="Assim +3"
				})
	
		-- Macc
		sets.midcast.BlueMagic.Macc = set_combine(sets.midcast.BlueMagic, {
				-- Assim +3 Sanctity Necklace Dignitary Earring Hermetic Earring
                head="Jhakri Coronal +1", neck="Eddy Necklace", lear="Gwati Earring",rear="Enchntr. Earring +1",
				-- Carm. Sc. Mail +1
				body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Stikini Ring", rring="Stikini Ring",
				-- Eschan Stone assim legs
                back=Aug.Cape.BLU.MB, waist="Ovate Rope", legs="Jhakri Slops +1", feet="Jhakri Pigaches +1"})
		
		-- AddEffect
		sets.midcast.BlueMagic.AddEffect = set_combine(sets.midcast.Macc, {
				-- Erra Pendant Sanctity Necklace Regal Earring Diginitary
                head="Carmine Mask +1", neck="Eddy Necklace", lear="Gwati Earring", rear="Enchntr. Earring +1",
				-- Jhakri Cuffs +2
				body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Stikini Ring", rring="Stikini Ring",
				-- Luminary Sash/Eschan Stone Jhakri Slops +2 Jhakri Pigaches +2
                back=Aug.Cape.BLU.MB, waist="Ovate Rope", legs="Jhakri Slops +1", feet="Jhakri Pigaches +1"})

		-- Cures
		sets.midcast.BlueMagic.CurePot = set_combine(sets.midcast.BlueMagic.ConserveMP, {
				-- Mendicant's Earring 
				head="Carmine Mask +1", neck="Phalaina Locket", lear="Lifestorm Earring", rear="Enchntr. Earring +1",
				-- Vrikodata Jupon
				body="Telchine Chas.", hands="Telchine Gloves", lring="Stikini Ring", rring="Stikini Ring",
                -- Luminary Sash feet="Medium Sabots"
				back=Aug.Cape.BLU.Cure, waist="Chuq'aba Belt", legs="Carmine Cuisses +1", })
		sets.midcast.BlueMagic.CurePot.Self = set_combine(sets.midcast.BlueMagic.CurePot, {ammo="Staunch Tathlum",
				-- Mendicant's Earring 
                head="Carmine Mask +1", neck="Phalaina Locket", lear="Lifestorm Earring", rear="Enchntr. Earring +1",
                -- Vrikodata Jupon
				body="Telchine Chas.", hands="Telchine Gloves", lring="Asklepian Ring", rring="Kunaji Ring",
                -- Gishdubar Sash Telchine Braconi Cure Recieved Medium Sabots
				back=Aug.Cape.BLU.Cure, waist="Chuq'aba Belt",})
		
		-- White Wind = HP set
		sets.midcast.BlueMagic.WW = set_combine(sets.midcast.BlueMagic.CurePot,{	
				-- Despair Helm Dualism Collar +1 Odnowa Earring +1 
				head="Carmine Mask +1", neck="Dualism Collar", lear="Odnowa Earring", rear="Enchntr. Earring +1",
				-- Despair Mail
				body="Telchine Chas.", hands="Telchine Gloves", lring="K'ayres Ring", rring="Meridian Ring",
                -- Oneiros Belt Gyve Trousers feet="Medium Sabots"
				back=Aug.Cape.BLU.Cure, waist="Chuq'aba Belt", legs="Carmine Cuisses +1", })
		
		sets.midcast.BlueMagic.WW.Self = set_combine(sets.midcast.BlueMagic.CurePot.Self, {
				-- Despair Helm Dualism Collar +1 Odnowa Earring +1 
				head="Carmine Mask +1", neck="Dualism Collar", lear="Odnowa Earring", rear="Enchntr. Earring +1",
				-- Despair Mail
				body="Telchine Chas.", hands="Telchine Gloves", lring="Kunaji Ring", rring="Meridian Ring",
                -- Gishdubar Sash Gyve Trousers feet="Medium Sabots"
				back=Aug.Cape.BLU.Cure, waist="Chuq'aba Belt", legs="Carmine Cuisses +1", })
			
		-- Weaponskill
		sets.precast.WS = set_combine(sets.TP, {ammo="Ginsen",
				head="Jhakri Coronal +1", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
                back=Aug.Cape.BLU.WS, waist="Wanion Belt", legs="Jhakri Slops +1", feet="Jhakri Pigaches +1"})
		sets.precast.WS.Acc = set_combine(sets.TP, {ammo="Mantoptera Eye",
				-- Lissome Necklace
				head="Jhakri Coronal +1", neck="Iqabi Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
                back=Aug.Cape.BLU.WS, waist="Wanion Belt", legs="Jhakri Slops +1", feet="Jhakri Pigaches +1"})
		
		-- Savage Blade
		sets.precast.WS['Savage Blade'] = set_combine(sets.TP, {ammo="Ginsen",
				-- Herculean Helm STR/WSD Caro Necklace Ishvara Earring
				head="Jhakri Coronal +1", neck="Tjukurrpa Medal", lear="Brutal Earring", rear="Moonshade Earring",
				-- Assim body +3 Shukuyu Ring 
                body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
				-- Herculean Trousers STR/WSD Herculean Boots STR/WSD
                back=Aug.Cape.BLU.WS, waist="Prosilio Belt +1", legs="Samnuha Tights", feet="Carmine Greaves +1"})
		sets.precast.WS.Acc['Savage Blade'] = set_combine(sets.TP, {ammo="Ginsen",
				-- Herculean Helm  STR/WSD
				head="Jhakri Coronal +1", neck="Tjukurrpa Medal", lear="Brutal Earring", rear="Moonshade Earring",
                -- 
				body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
				-- Herculean Trousers STR/WSD Herculean Boots STR/WSD
                back=Aug.Cape.BLU.WS, waist="Prosilio Belt +1", legs="Carmine Cuisses +1", feet="Carmine Greaves +1"})
		
		-- Expiacion
		sets.precast.WS['Expiacion'] = {ammo="Mantoptera Eye",
                -- Herculean WSD  Caro Necklace Ishvara Earring
				head="Jhakri Coronal +1", neck="Tjukurrpa Medal", lear="Brutal Earring", rear="Moonshade Earring",
                -- Assim body +3 Herculean WSD Shukuyu Ring 
				body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
				--  Herculean Boots WSD 
                back=Aug.Cape.BLU.WS, waist="Prosilio Belt +1", legs="Samnuha Tights", feet="Jhakri Pigaches +1"}
		sets.precast.WS.Acc['Expiacion'] = {ammo="Mantoptera Eye",
				--  Herculean WSD Caro Necklace Ishvara Earring
                head="Jhakri Coronal +1", neck="Tjukurrpa Medal", lear="Brutal Earring", rear="Moonshade Earring",
                --  Assim body +3
				body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
                --  Herculean Feet WSD
				back=Aug.Cape.BLU.WS, waist="Prosilio Belt +1", legs="Samnuha Tights", feet="Jhakri Pigaches +1"}
		
		-- Chant du Cygne
		sets.precast.WS['Chant du Cygne'] = {ammo="Ginsen",
                head="Adhemar Bonnet", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
				-- Herculean Vest Adhemar Wristbands  Begrudging Ring
                body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Ramuh Ring +1", rring="Epona's Ring",
				-- Herc legs nad feet Crit damage
                back=Aug.Cape.BLU.WS, waist="Fotia Belt", legs="Samnuha Tights", feet="Carmine Greaves +1"}
		sets.precast.WS.Acc['Chant du Cygne'] = {ammo="Ginsen",
				-- Mache Earring Mache Earring
                head="Adhemar Bonnet", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
				-- Herculean Vest Adhemar Wristbands 
                body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Ramuh Ring +1", rring="Epona's Ring",
                back=Aug.Cape.BLU.WS, waist="Fotia Belt", legs="Carmine Cuisses +1", feet="Jhakri Pigaches +1"}
		
		-- Requiescat
		sets.precast.WS['Requiescat'] = {ammo="Mantoptera Eye",
                head="Jhakri Coronal +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
				-- lring="Rufescent Ring"
                body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Stikini Ring", rring="Epona's Ring", 
				back=Aug.Cape.BLU.WS, waist="Fotia Belt", legs="Jhakri Slops +1", feet="Jhakri Pigaches +1"}
		sets.precast.WS.Acc['Requiescat'] = {ammo="Mantoptera Eye",
				-- Telos Earring Cessance Earring
				head="Jhakri Coronal +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
				-- lring="Rufescent Ring"
                body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Stikini Ring", rring="Epona's Ring",
				back=Aug.Cape.BLU.WS, waist="Fotia Belt", legs="Jhakri Slops +1", feet="Jhakri Pigaches +1"}
			
		-- Sanguine Blade
		sets.precast.WS['Sanguine Blade'] = {ammo="Dosis Tathlum",
                head="Jhakri Coronal +1", neck="Eddy Necklace", lear="Crematio Earring", rear="Friomisi Earring",
                body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Shiva Ring +1", rring="Shiva Ring +1",
                back=Aug.Cape.BLU.MB, waist="Wanion Belt", legs="Jhakri Slops +1", feet="Jhakri Pigaches +1"}
		
		-- Realmrazer
		sets.precast.WS['Realmrazer'] = {ammo="Dosis Tathlum",
                head="Jhakri Coronal +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
                body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Stikini Ring", rring="Stikini Ring",
                back=Aug.Cape.BLU.MB, waist="Wanion Belt", legs="Jhakri Slops +1", feet="Jhakri Pigaches +1"}	
end