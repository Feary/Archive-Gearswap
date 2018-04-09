-- PLD Gearsets
-- Created:4/1/2014
-- Last Modified: 2/12/2017
-- To Do List
--
--
--
--

if player.name == 'Feary' then
		-- includes
		include('include/mappings.lua')
		include('include/equipment.lua')
		-- include('../include/autoexec.lua')
		
		-- Auto Sets
		physicalshield = {sub="Ochain"}
		magicalshield = {sub="Aegis"}

		-- Standard/Idle 
		sets.idle.PDT = {ammo="Staunch Tathlum",
				-- Combatant's Torque Thureous Earring
				head="Souveran Schaller +1", neck="Loricate Torque", lear="Ethereal Earring", rear="Etiolation Earring",
				-- Chev. Gauntlets +1
				body="Tartarus Platemail", hands="Souv. Handsch. +1", lring="Moonbeam Ring", rring="Defending Ring",
				-- Chev Cuisses +1 
				back="Moonbeam Cape", waist="Flume Belt", legs="Souv. Diechlings +1", feet="Souveran Schuhs +1"}

		sets.idle.MDT = {ammo="Staunch Tathlum",
				-- Founder's Corona Warder's Charm +1 Sanare Earring Spellbound. Earring 
				head="Souv. Schaller +1", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
				-- Lunette Earring
				body="Tartarus Platemail", hands="Souv. Handsch. +1", lring="Shadow Ring", rring="Defending Ring",
				-- Moonbeam Cape Flax Sash Cab Leggings +1
				back="Engulfer Cape +1", waist="Creed Baudrier", legs="Souv. Diechlings +1", feet="Souveran Schuhs +1"}

		sets.idle.MDT.Shell = {ammo="Staunch Tathlum",
				-- Founder's Corona Warder's Charm +1 Spellbr. Earring  Sanare Earring
				head="Souv. Schaller +1", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
				-- Lunette Ring +1
				body="Tartarus Platemail", hands="Souv. Handsch. +1", lring="Shadow Ring", rring="Defending Ring",				
				back="Engulfer Cape +1", waist="Creed Baudrier", legs="Mes'yohi Slacks", feet="Sulev. Leggings +2"}

		sets.idle.BDT = {ammo="Staunch Tathlum",
				--  Zwazo Earring +1
				head="Souveran Schaller +1", neck="Loricate Torque", lear="Bladeborn Earring", rear="Zwazo Earring",
				-- Souv. Cuirass +1
				body="Cab. Surcoat +1", hands="Souv. Handsch. +1", lring="Moonbeam Ring", rring="Defending Ring",
				back="Moonbeam Cape", waist="Nierenschutz", legs="Souv. Diechlings +1", feet="Souveran Schuhs +1"}			
			
		-- Turtle
		sets.idle.DT = {ammo="Staunch Tathlum",
				--  Warder's Charm +1 Odnowa Earring +1 
				head="Souv. Schaller +1", neck="Loricate Torque", lear="Odnowa Earring +1", rear="Steelflash Earring",
				-- Souveran Cuirass +1 
				body="Tartarus Platemail", hands="Souv. Handsch. +1", lring="Moonbeam Ring", rring="Defending Ring",
				-- Reiki Cloak  Gold Mog. Belt 
				back="Moonbeam Cape", waist="Nierenschutz", legs="Souv. Diechlings +1", feet="Souveran Schuhs +1"}			

		sets.misc.Town = set_combine(sets.idle.PDT, {
				neck="Carver's Torque",
				body="Carpenter's Smock", hands="Carpenter's Gloves", lring="Orvail Ring", rring="Craftmaster's Ring",
				waist="Carpenter's Belt", legs="Carmine Cuisses +1"})
			
		sets.lockstyle = set_combine(sets.misc.Town,{
				neck="Carver's Torque",
				body="Carpenter's Smock", hands="Carpenter's Gloves", lring="Orvail Ring", rring="craftmaster's Ring",
				waist="Carpenter's Belt", legs="Carmine Cuisses +1"})
			
		sets.idle.Fishing = set_combine(sets.idle.Standard,{range="Lu Shang's Fishing Rod", ammo="Sinking Minnow",
				head="Tlahtlamah Glasses", neck="Fisherman's Torque",
				body="Fisherman's Smock", hands="Kachina Gloves", lring="Noddy Ring",
				waist="Fisherman's Belt", legs="Fisherman's Hose", feet="Waders"})
		sets.idle.Wood = set_combine(sets.idle.Standard,{
				neck="Carver's Torque",
				body="Carpenter's Smock", hands="Carpenter's Gloves", lring="Orvail Ring", rring="Craftmaster's Ring",
				waist="Carpenter's Belt", legs="Carmine Cuisses +1"})		
					
		sets.idle.Standard = set_combine(sets.idle.PDT, {
				lear="Merman's Earring", rear="Etiolation Earring", 
				back="Shadow Mantle", legs="Carmine Cuisses +1"})
						
		-- TP - Fodder
		sets.TP = {ammo="Ginsen",
				head="Carmine Mask +1", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				-- Souveran Cuirass +1 
				body="Tartarus Platemail", hands="Souv. Handsch. +1", lring="Moonbeam Ring", rring="Rajas Ring",
				back=Aug.Cape.PLD.TP, waist="Windbuffet Belt +1", legs="Souv. Diechlings +1", feet="Carmine Greaves +1"}
		sets.TP.Acc = { ammo="Hasty Pinion +1",
				head="Carmine Mask +1", neck="Iqabi Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				-- Souveran Cuirass +1
				body="Tartarus Platemail", hands="Souv. Handsch. +1", lring="Ramuh Ring +1", rring="Rajas Ring",
				back=Aug.Cape.PLD.TP, waist="Windbuffet Belt +1", legs="Carmine Cuisses +1", feet="Carmine Greaves +1"}
		-- Tank 
		sets.TP.Tank = {ammo="Staunch Tathlum",
				--  Odnowa Earring +1 Odnowa Earring
				head="Souv. Schaller +1", neck="Loricate Torque", lear="Odnowa Earring +1", rear="Zwazo Earring",
				-- Souveran Cuirass +1
				body="Tartarus Platemail", hands="Souv. Handsch. +1", lring="Moonbeam Ring", rring="Defending Ring",
				back=Aug.Cape.PLD.TP, waist="Windbuffet Belt +1", legs="Souv. Diechlings +1", feet="Souveran Schuhs +1"}
		
		-- DT/Acc Turtle Build
		sets.TP.Hybrid = {ammo="Staunch Tathlum",
				-- Odnowa Earring +1 
				head="Souv. Schaller +1", neck="Loricate Torque", lear="Odnowa Earring +1", rear="Steelflash Earring",
				-- Souveran Cuirass +1
				body="Tartarus Platemail", hands="Souv. Handsch. +1", lring="Rajas Ring", rring="Defending Ring",
				back=Aug.Cape.PLD.TP, waist="Nierenschutz", legs="Souv. Diechlings +1", feet="Souveran Schuhs +1"}
		
		sets.Weakened = set_combine(sets.TP.Hybrid,{})

		-- Precast 
		sets.precast.Fastcast = set_combine(sets.idle.PDT, {ammo="Staunch tathlum",
				-- neck="Voltsurge Torque", Odnowa Earring +1
				head="Carmine Mask +1", neck="Moonbeam Necklace", lear="Odnowa Earring +1", rear="Etiolation Earring",
				-- Reverence Surcoat +3 lring="Kishar Ring",
				hands="Souv. Handsch. +1", lring="Moonbeam Ring", rring="Prolix Ring",
				back=Aug.Cape.PLD.FC, waist="Sanctuary Obi", legs="Carmine Cuisses +1", feet="Carmine Greaves +1"})
		sets.precast.Enhancing = set_combine(sets.precast.Fastcast, {
				waist="Siegel Sash"})
		sets.precast.Cure = set_combine(sets.precast.Fastcast, {rear="Nourish. Earring +1",
				body="Jumalik Mail"})
		sets.precast.Utsusemi = set_combine(sets.precast.Fastcast, {})
		sets.misc.Waltz = set_combine(sets.precast.JA["Chivalry"],{
				legs="Dashing Subligar"})
		sets.misc.Steps = set_combine(sets.TP.Acc,{})
		sets.misc.flourish = {}
		
		-- Enmity Caps at ?, Gear caps at 120, Current is 
		sets.Enmity = set_combine(sets.idle.PDT,{ ammo="Paeapua",
				-- Loess Barbuta +1 lear="Trux Earring", rear="Cryptic Earring",
				head="Souv. Schaller +1", neck="Moonbeam Necklace", 
				-- Souv. Cuirass +1 Yorium Gauntlets Apeile Ring +1 rring="Apeile Ring"
				body="Cab. Surcoat +1", hands="Souv. Handsch. +1", lring="Vengeful Ring", rring="Apeile Ring",
				-- Obyssean Cuisses Eschite Greaves path A
				back=Aug.Cape.PLD.Enmity, waist="Creed Baudrier", legs="Souv. Diechlings +1", feet="Souveran Schuhs +1"})
		
		-- Midcast
		sets.midcast.Recast = set_combine(sets.precast.Fastcast,{})
		
		sets.midcast.SID = set_combine(sets.idle.PDT,{ammo="Staunch Tathlum", 
				head="Souv. Schaller +1", neck="Moonbeam Necklace", lear="Odnowa Earring +1", rear="Knightly Earring",
				-- Souv. Cuirass +1 hands="Regal Gauntlets",
				body="Tartarus Platemail", hands="Souv. Handsch. +1", lring="Moonbeam Ring", rring="K'ayres Ring",
				--waist="Rumination Sash", Odyssean Greaves 
				back=Aug.Cape.PLD.Enmity, waist="Sanctuary Obi", legs="Founder's Hose", feet="Souveran Schuhs +1"})
		
		-- Healing Magic 
		sets.midcast.Cure = set_combine(sets.midcast.Recast,{ammo="Paeapua",
				--
				head="Souv. Schaller +1", neck="Moonbeam Necklace", lear="Nourish. Earring +1", rear="Knightly Earring",
				-- hands="Macabre Gaunt. +1"
				body="Jumalik Mail", hands="Souv. Handsch. +1", lring="Moonbeam Ring", rring="K'ayres Ring",
				--  Solemnity Cape Rumination Sash  Odyssean Greaves
				back=Aug.Cape.PLD.Enmity, waist="Sanctuary Obi", legs="Founder's Hose", feet="Souveran Schuhs +1"})
		sets.midcast.Cure.Self = set_combine(sets.midcast.Cure,{ammo="Paeapua",
				head="Souv. Schaller +1", neck="Moonbeam Necklace", lear="Nourish. Earring +1", rear="Knightly Earring",
				body="Jumalik Mail", hands="Souv. Handsch. +1", lring="Moonbeam Ring", rring="K'ayres Ring",
				--  Solemnity Cape Odyssean Greaves
				back=Aug.Cape.PLD.Enmity, waist="Sanctuary Obi", legs="Founder's Hose", feet="Souveran Schuhs +1"})

		-- Divine Magic - Enlight 490 Goal
		sets.midcast.DivineMagic = set_combine(sets.midcast.Recast,{
				--  heck="Nesanica Torque", 
				head="Jumalik Helm", neck="Moonbeam Necklace", lear="Beatific Earring", rear="Divine Earring",
				-- Eschite Gauntlets
				body="Reverence Surcoat", hands="Paragon Moufles", lring="Stikini Ring", rring="Stikini Ring",
				-- back="Altruistic Cape", Asklepian Belt
				waist="Bishop's Sash", legs="Kaiser Diechlings", feet="Templar Sabatons"})

		sets.midcast.DivineMagic.Flash = set_combine(sets.midcast.DivineMagic,{ammo="Paeapua",
				-- lear="Cryptic Earring", lear="Odnowa Earring +1", 
				head="Cizin Helm +1", neck="Moonbeam Necklace", lear="Odnowa Earring +1", rear="Etiolation Earring",
				-- Reverence Surcoat +3 Apeile Ring +1
				body="Cab. Surcoat +1", hands="Souv. Handsch. +1", lring="Vengeful Ring", rring="Apeile Ring",
				-- 
				back=Aug.Cape.PLD.Enmity, waist="Goading Belt", legs="Souv. Diechlings +1", feet="Souveran Schuhs +1"})
		
		-- Enhancing Magic 				
		sets.midcast.EnhancingMagic = set_combine(sets.midcast.Recast,{ammo="Staunch Tathlum",
				-- Incanter Torque
				head="Souv. Schaller +1", neck="Colossus's Torque", lear="Augment. Earring", rear="Andoaa Earring",
				-- body="Shabti Cuirass",
				lring="Stikini Ring", rring="Stikini Ring",
				back="Merciful Cape", waist="Olympus Sash", legs="Carmine Cuisses +1"})
		sets.midcast.EnhancingMagic.Phalanx = set_combine(sets.midcast.EnhancingMagic,{ammo="Staunch Tathlum",
				-- Obyssean Helm Phalanx +5 Incanter Torque
				head="Carmine Mask +1", neck="Moonbeam Necklace", lear="Knightly Earring", rear="Andoaa Earring",
				-- body="Shabti Cuirass", Apeile Ring +1
				hands="Souv. Handsch. +1", lring="Vengeful Ring", rring="Apeile Ring",
				-- Obyssean Cuisses Phalanx +5 
				back="Weard Mantle", waist="Sanctuary Obi", legs="Carmine Cuisses +1", feet="Souveran Schuhs +1"})
		sets.midcast.EnhancingMagic.Refresh = {feet="Shab. Sabatons +1"}
		sets.midcast.EnhancingMagic.Reprisal = set_combine(sets.midcast.EnhancingMagic, {
				-- Odnowa Earring +1
				head="Souv. Schaller +1", neck="Dualism Collar", lear="Odnowa Earring +1", rear="Etiolation Earring",
				-- Souveran Cuirass +1 lring="Eihwaz Ring"
				body="Tartarus Platemail", hands="Souv. Handsch. +1", lring="Moonbeam Ring", rring="K'ayres Ring",
				-- Reiki Cloak
				back=Aug.Cape.PLD.Enmity, waist="Creed Baudrier", legs="Souv. Diechlings +1", feet="Souveran Schuhs +1"})
	
		-- JA
		sets.precast.JA['Invincible'] = set_combine(sets.Enmity,{legs="Cab. Breeches"})
		sets.precast.JA['Intervene'] = set_combine(sets.Enmity,{
						lear="Knightly Earring",
						hands="Cab. Gauntlets +1"})
		-- MND			
		sets.precast.JA['Chivalry'] = set_combine(sets.idle.PDT,{hands="Cab. Gauntlets +1"},{
				head="Carmine Mask +1", neck="Phalaina Locket", rear="Lifestorm Earring",
				body="Cab. Surcoat +1", lring="Stikini Ring", rring="Stikini Ring",
				back=Aug.Cape.PLD.Enmity, wasit="Salire Belt", legs="Mes'yohi Slacks", feet="Carmine Greaves +1"})
		
		-- VIT - No Cap
		sets.precast.JA['Rampart'] = set_combine(sets.Enmity,{
				-- neck="Unmoving Collar +1", lear="Odnowa Earring +1", rear="Odnowa Earring",
				head="Cab. Coronet", neck="Tjukurrpa Medal", 
				-- Souv. Cuirass +1
				body="Sulevia's Plate. +1", hands="Souv. Handsch. +1", lring="Titan Ring", rring="Titan Ring",
				back=Aug.Cape.PLD.Enmity, waist="Chuq'aba Belt", legs="Souv. Diechlings +1", feet="Souveran Schuhs +1"})
		sets.precast.JA['Sentinel'] = set_combine(sets.Enmity,{feet="Cab. Leggings"})
		sets.precast.JA['Holy Circle'] = set_combine(sets.Enmity,{feet="Rev. Leggings +1"})
		sets.precast.JA['Fealty'] = set_combine(sets.Enmity,{body="Cab. Surcoat +1"})
		sets.precast.JA['Shield Bash'] = set_combine(sets.Enmity,{
						lear="Knightly Earring",
						hands="Cab. Gauntlets +1"})

		-- WS
		sets.precast.WS = { ammo="Ginsen",
				-- Lust. Cap +1
				head="Sulevia's Mask +1", neck="Fotia Gorget", lear="Bladeborn Earring", rear="Steelflash Earring",
				-- Lustr. Harness +1 Lustr.	Mittens +1 
				body="Flamma Korazin +1", hands="Sulevia's Gauntlets +1", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
				--  Lustra. Leggings +1
				back=Aug.Cape.PLD.WS, waist="Fotia Belt", legs="Lustr. Subligar +1", feet="Sulev. Leggings +2"}
			
		sets.precast.WS.Acc = {ammo="Ginsen",
				head="Sulevia's Mask +1", neck="Fotia Gorget", lear="Bladeborn Earring", rear="Steelflash Earring",
				body="Flamma Korazin +1", hands="Sulevia's Gauntlets +1", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
				back=Aug.Cape.PLD.WS, waist="Fotia Belt", legs="Sulevi. Cuisses +1", feet="Sulev. Leggings +2"}

		-- Swords
		-- Requiescat
		sets.precast.WS['Requiescat'] = { ammo="Ginsen",
				head="Carmine Mask +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
				body="Flamma Korazin +1", hands="Sulevia's Gauntlets +1", lring="Stikini Ring", rring="Stikini Ring",
				back=Aug.Cape.PLD.WS, waist="Fotia Belt", legs="Carmine Cuisses +1", feet="Sulev. Leggings +2"}
		
		sets.precast.WS.Acc['Requiescat'] = set_combine(sets.precast.WS.Requiescat, {ammo="Ginsen",
				head="Carmine Mask +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
				-- Carmine Mail +1 
				body="Flamma Korazin +1", hands="Carmine Fin. Ga. +1", lring="Stikini Ring", rring="Stikini Ring",
				back=Aug.Cape.PLD.WS, waist="Fotia Belt", legs="Carmine Cuisses +1", feet="Carmine Greaves +1"})

		-- Savage Blade
		sets.precast.WS['Savage Blade'] = {ammo="Ginsen",
				-- Valorous Mask 
				head="Sulevia's Mask +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
				-- Valor/Emicho Body +1  Rufuscent Ring
				body="Flamma Korazin +1", hands="Sulev. Gauntlets +1", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
				-- Metalsinger Belt 
				back=Aug.Cape.PLD.WS, waist="Wanion Belt", legs="Sulevi. Cuisses +1", feet="Sulev. Leggings +2"}
		sets.precast.WS.Acc['Savage Blade'] = {ammo="Hasty Pinion +1",
				head="Carmine Mask +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
				body="Flamma Korazin +1", hands="Sulevia's Gauntlets +1", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
				back=Aug.Cape.PLD.WS, waist="Wanion Belt", legs="Carmine Cuisses +1", feet="Sulev. Leggings +2"}

		-- Chant du Cygne
		sets.precast.WS['Chant du Cygne'] = {ammo="Ginsen",
				-- Lust. Cap +1 A
				head="Carmine Mask +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
				-- Lustr. Mittens +1 A  Begrudging Ring
				body="Flamma Korazin +1", hands="Flam. Manopolas +1",
				-- Lustra. Leggings +1 D
				back=Aug.Cape.PLD.WS, waist="Chiner's Belt +1", legs="Lustr. Subligar +1", feet="Sulev. Leggings +2"}
		
		sets.precast.WS.Acc['Chant du Cygne'] = {ammo="Hasty Pinion +1",
				-- Lust. Cap +1
				head="Carmine Mask +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
				-- Lustr. Mittens +1  Begrudging Ring
				body="Flamma Korazin +1", hands="Flam. Manopolas +1",  lring="Ramuh Ring +1", rring="Rajas Ring",
				-- Rudianos's Cape Lustra. Leggings +1
				back=Aug.Cape.PLD.WS, waist="Chiner's Belt +1", legs="Lustr. Subligar +1", feet="Sulev. Leggings +2"}
		
		-- Atonement
		sets.precast.WS['Atonement'] = set_combine(sets.precast.WS, sets.Enmity,{
				neck="Fotia Gorget", rear="Moonshade Earring",
				body="Phorcys Korazin",
				back=Aug.Cape.PLD.WS, waist="Fotia Belt", feet="Sulev. Leggings +2"})

		sets.precast.WS.Acc['Atonement'] = set_combine(sets.precast.WS.Atonement)
		
		-- Dagger
		-- Aeolian Edge
		sets.precast.WS['Aeolian Edge'] = set_combine(sets.precast.WS,{
				-- Founder/obyssean
				head="Jumalik Helm", neck="Eddy Necklace", lear="Crematio Earring", rear="Friomisi Earring",
				-- Carmine Mail +1  Carmine Fin. Ga. +1
				body="Jumalik Mail", hands="Founder's Gauntlets",  lring="Shiva Ring +1", rring="Shiva Ring +1",
				-- Aug.Cape.PLD.MAB Yamabuki-no-Obi 
				back=Aug.Cape.PLD.WS, waist="Wanion Belt", legs="Founder's Hose", feet="Sulev. Leggings +2"})
end