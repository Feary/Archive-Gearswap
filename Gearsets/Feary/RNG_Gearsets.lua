-- RNG Gear_sets
-- Created: 3/10/2014
-- Last Updated: 07/25/2016
-- To Do:
--
--
--
--

if player.name == 'Feary' then
	-- includes
	include('include/mappings.lua')
	include('include/equipment.lua')
		
	-- Auto Sets
	-- Standard/idle
		sets.idle.PDT = { 
				head="Meghanada Visor +1", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
				body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring=Aug.Darkring1, rring="Defending Ring",
				back="Moonbeam Cape", waist="Flume Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +2"}

		sets.idle.MDT = { 
				head="Meghanada Visor +1", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
				body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring=Aug.Darkring1, rring="Defending Ring",
				back="Engulfer Cape +1", waist="Flume Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +2"}

		sets.misc.Town = set_combine(sets.idle.PDT,{
				legs="Carmine Cuisses +1"})
						
		sets.idle.Standard = set_combine(sets.idle.PDT, {
				lear="Merman's Earring", rear="Etiolation Earring", 
				legs="Carmine Cuisses +1"})
						
		-- Precast				
		sets.precast.Fastcast = set_combine(sets.idle.PDT, {
				-- neck="Voltsurge Torque", 
				head="Carmine Mask +1", lear="Loquac. Earring", rear="Enchntr. Earring +1",
				body="Taeon Tabard", hands="Leyline Gloves", lring="Prolix Ring",
				-- Belenus Cape 
				waist="Twilight Belt", legs="Taeon Tights", feet="Carmine Greaves +1"})

		sets.precast.Utsusemi = set_combine(sets.precast.Fastcast, {neck="Magoraga Beads"})

		-- JA
		sets.precast.JA.Acc = {}

		-- Barrage 
		sets.precast.JA["Barrage"] =  {
				head="Meghanada Visor +1", neck="Gaudryi Necklace", lear="Tripudio Earring", rear="Enervating Earring",
				body="Kyujutsugi", hands="Orion Bracers +1", lring="Hajduk Ring", rring="Hajduk Ring",
				back=Aug.Cape.RNG.TP, waist="Kwahu Kachina Belt", legs="Desultor Tassets", feet="Meg. Jam. +2"}

		sets.precast.JA.Acc["Barrage"] =  {
				head="Meghanada Visor +1", neck="Gaudryi Necklace", lear="Tripudio Earring", rear="Enervating Earring",
				body="Kyujutsugi", hands="Orion Bracers +1", lring="Hajduk Ring", rring="Hajduk Ring",
				back=Aug.Cape.RNG.TP, waist="Kwahu Kachina Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +2"}
						
		-- JA
		sets.precast.JA["Shadowbind"] = {hands="Orion Bracers +1"}
		sets.precast.JA["Sharpshot"] = {legs="Orion Braccae +1"}
		sets.precast.JA["Double Shot"] = {body="Amini Gapette"}
		sets.precast.JA["Velocity Shot"] = {legs="Amini Caban", back=Aug.Cape.RNG.TP}
		sets.precast.JA["Camouflage"] = {head="Orion Jerkin +1"}
		sets.precast.JA["Scavenge"] = {feet="Orion Socks +1"}
		sets.precast.JA["Bounty Shot"] = {hands="Amini Glovelettes"}
		sets.precast.JA["Unlimited Shot"] = {feet="Amini Bottillons"}
		sets.precast.JA["Flashy Shot"] = {hands="Arc. Bracers +1"}
		sets.precast.JA["Stealth Shot"] = {feet="Arcadian Socks +1"}

		-- Melee TP 
		sets.TP = { 
				head="Meghanada Visor +1", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				body="Meghanada Cuirie +2", hands="Meghanada Gloves +1", lring="Rajas Ring", rring="Epona's Ring",
				back="Ground. Mantle +1", waist="Dynamic Belt +1", legs="Meg. Chausses +1", feet="Meg. Jam. +2"}
		-- Melee Accuracy TP
		sets.TP.Acc = {
				head="Meghanada Visor +1", neck="Iqabi Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				body="Meghanada Cuirie +2", hands="Meghanada Gloves +1", lring="Rajas Ring", rring="Ramuh Ring +1",
				back="Ground. Mantle +1", waist="Dynamic Belt +1",  legs="Meg. Chausses +1", feet="Meg. Jam. +2"}

		-- RA Sets
		-- Snapshot - Caps at 70 from any source.
		-- Merit:10 Gifts:10 Flurry II: 30
		sets.precast.Snapshot = {
						-- Taeon Chapaeu
						head="Amini Gapette",
						-- Taeon Tabard
						body="Amini Caban", hands="Carmine Fin. Ga. +1"
						back=Aug.Cape.RNG.Snapshot, waist="Impulse Belt", legs="Adhemar Kecks", feet="Meg. Jam. +2"}
		sets.precast.Snapshot.Flurry = {
						-- Taeon Chapaeu
						head="Amini Gapette",
						body="Amini Caban", hands="Carmine Fin. Ga. +1"
						back=Aug.Cape.RNG.Snapshot, waist="Impulse Belt", legs="Adhemar Kecks", feet="Meg. Jam. +2"}
		sets.precast.Snapshot.Flurry2 = {
						head="Arcadian Beret +1",
						body="Amini Caban", hands="Carmine Fin. Ga. +1"
						-- Pursuer Gaiters 
						back=Aug.Cape.RNG.Snapshot, waist="Impulse Belt", legs="Adhemar Kecks", feet="Meg. Jam. +2"}
	
		sets.precast.Rapidshot = {
						-- Orion Beret +3
						head="Orion Beret +1",
						body="Arc. Jerkin +1", hands="Carmine Fin. Ga. +1",
						-- feet="Pursuer's Gaiters" 
						back=Aug.Cape.RNG.Snapshot, legs="Adhemar Kecks"}
						
		-- Overkill
		sets.precast.Snapshot.Overkill = set_combine(sets.precast.Snapshot,{
						head="Orion Beret +1",
						body="Amini Caban", hands="Arc. Bracers +1",
						back=Aug.Cape.RNG.Snapshot, waist="Impulse Belt", legs="Adhemar Kecks", feet="Arcadian Socks +1"})

		-- Bow
		-- Needs 42+ STP For 3/4 Hit, Goal is 50.
		-- Current: 46 + Recycle
		sets.RA = { -- Perun +1 Perun  
					head="Arcadian Beret +1", neck="Erudit. Necklace", lear="Neritic Earring", rear="Enervating Earring",
					-- Adhemar Wristbands
					body="Amini Caban", hands="Amini Glovelettes", lring="Rajas Ring", rring="K'ayres Ring",
					-- Yemaya Belt 
					back=Aug.Cape.RNG.TP, waist="Patentia Sash", legs="Adhemar Kecks", feet="Meg. Jam. +2"}
						
		-- Current - 33 STP
		sets.RA.Acc = {
					head="Meghanada Visor +1", neck="Gaudryi Necklace", lear="Neritic Earring", rear="Enervating Earring",
					body="Meghanada Cuirie +2", hands="Mummu Wrists +2", lring="Hajduk Ring", rring="Hajduk Ring",
					-- Yemaya Belt
					back=Aug.Cape.RNG.TP, waist="Kwahu Kachina Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +2"}
		
		-- SAM Subjob
		sets.RA.Sam = { -- Perun +1 Perun  
					--
					head="Arcadian Beret +1", neck="Ocachi Gorget", lear="Neritic Earring", rear="Enervating Earring",
					body="Amini Caban", hands="Amini Glovelettes", lring="Rajas Ring", rring="K'ayres Ring",
					-- Yemaya Belt 
					back=Aug.Cape.RNG.TP, waist="Patentia Sash", legs="Amini Brague", feet="Arcadian Socks +1"}
						
		-- 
		sets.RA.Acc.Sam = {
					head="Meghanada Visor +1", neck="Gaudryi Necklace", lear="Tripudio Earring", rear="Enervating Earring",
					body="Meghanada Cuirie +2", hands="Mummu Wrists +2", lring="Hajduk Ring", rring="Hajduk Ring",
					-- Yemaya Belt
					back=Aug.Cape.RNG.TP, waist="Kwahu Kachina Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +2"}
				
		-- Gun
		sets.RA.Gun = { 
					head="Arcadian Beret +1", neck="Ocachi Gorget", lear="Tripudio Earring", rear="Enervating Earring",
					body="Orion Jerkin +1", hands="Orion Bracers +1", lring="Rajas Ring", rring="Hajduk Ring",
					back=Aug.Cape.RNG.TP, waist="Patentia Sash", legs="Nahtirah Trousers", feet="Orion Socks +1"}
						
		sets.RA.Acc.Gun = { 
					head="Arcadian Beret +1", neck="Ocachi Gorget", lear="Tripudio Earring", rear="Enervating Earring",
					body="Orion Jerkin +1", hands="Orion Bracers +1", lring="Hajduk Ring", rring="Hajduk Ring",
					back=Aug.Cape.RNG.TP, waist="Patentia Sash", legs="Nahtirah Trousers", feet="Orion Socks +1"}

						
		-- Eagle Eye Shot
		sets.precast.JA["Eagle Eye Shot"] = set_combine(sets.RA, {legs="Arcadian Braccae +1"})

		sets.precast.JA.Acc["Eagle Eye Shot"] = set_combine(sets.RA.Acc, {legs="Arcadian Braccae +1"})

		-- Overkill
		sets.precast.JA["Overkill"] = {
						head="Arcadian Beret +1", neck="Ocachi Gorget", lear="Tripudio Earring", rear="Enervating Earring",
						body="Orion Jerkin +1", hands="Orion Bracers +1", lring="Rajas Ring", rring="Garuda Ring +1",
						back=Aug.Cape.RNG.TP, waist="Kwahu Kachina Belt", legs="Nahtirah Trousers", feet="Orion Socks +1"}

		sets.precast.JA.Acc["Overkill"] = set_combine(sets.RA.Acc, {
						head="Arcadian Beret +1", neck="Ocachi Gorget", lear="Tripudio Earring", rear="Enervating Earring",
						body="Orion Jerkin +1", hands="Orion Bracers +1", lring="Garuda Ring +1 ", rring="Garuda Ring +1",
						back=Aug.Cape.RNG.TP, waist="Kwahu Kachina Belt", legs="Nahtirah Trousers", feet="Orion Socks +1"})

		-- Weaponskills
		-- Melee
		sets.precast.WS = set_combine(sets.TP,{})

		sets.precast.WS.Acc = set_combine(sets.TP.Acc,{})

		-- Range Attack WS
		sets.precast.RAWS = {
						head="Arcadian Beret +1", neck="Ocachi Gorget", lear="Vulcan's Pearl", rear="Vulcan's Pearl",
						body="Amini Caban", hands="Arc. Bracers +1", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
						back=Aug.Cape.RNG.WS, waist="Kwahu Kachina Belt", legs="Nahtirah Trousers", feet="Orion Socks +1"}

		sets.precast.RAWS.Acc = set_combine(sets.precast.RAWS,{})

		-- Bow WS
		-- Jishnu's Radiance
		sets.precast.RAWS['Jishnu\'s Radiance'] = {
						-- rear="Sherida Earring"
						head="Adhemar Bonnet", neck="Fotia Gorget", lear="Moonshade Earring", rear="Vulcan's Pearl",
						-- Kobo Kote Begruding Ring
						body="Meg. Cuirie +2", hands="Mummu Wrists +2", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
						-- 	Aug.Cape.RNG.WS.Crit Darraigner's Brais
						back=Aug.Cape.RNG.WS, waist="Fotia Belt", legs="Meg. Chausses +1", feet="Adhemar Gamashes"}

		sets.precast.RAWS.Acc['Jishnu\'s Radiance'] = {
						-- rear="Sherida Earring"
						head="Adhemar Bonnet", neck="Fotia Gorget", lear="Vulcan's Pearl", rear="Moonshade Earring",
						-- Begruding Ring
						body="Meg. Cuirie +2", hands="Mummu Wrists +2", lring="Mummu Ring", rring="Ifrit Ring +1",
						-- 	Aug.Cape.RNG.WS.Crit Darraigner's Brais
						back=Aug.Cape.RNG.WS, waist="Fotia Belt", legs="Meg. Chausses +1", feet="Adhemar Gamashes"}
		-- Namas Arrow			
		sets.precast.RAWS['Namas Arrow'] = {
						head="Arcadian Beret +1", neck="Fotia Gorget", lear="Vulcan's Pearl", rear="Vulcan's Pearl",
						body="Kyujutsugi", hands="Arc. Bracers +1", lring="Rajas Ring", rring="Ifrit Ring +1",
						back=Aug.Cape.RNG.WS, waist="Fotia Belt", legs="Nahtirah Trousers", feet="Arcadian Socks +1"}

		sets.precast.RAWS.Acc['Namas Arrow'] = {
						head="Arcadian Beret +1", neck="Fotia Gorget", lear="Vulcan's Pearl", rear="Vulcan's Pearl",
						body="Kyujutsugi", hands="Arc. Bracers +1", lring="Rajas Ring", rring="Ifrit Ring +1",
						back=Aug.Cape.RNG.WS, waist="Fotia Belt", legs="Nahtirah Trousers", feet="Arcadian Socks +1"}

		-- Gun/Crossbow WS
		sets.precast.RAWS['Last Stand'] = {
						head="Amini Gapette", neck="Fotia Gorget", lear="Vulcan's Pearl", rear="Vulcan's Pearl",
						body="Orion Jerkin +1", hands="Orion Bracers +1", lring="Rajas Ring", rring="Ifrit Ring +1",
						back=Aug.Cape.RNG.WS, waist="Kwahu Kachina Belt", legs="Nahtirah Trousers", feet="Orion Socks +1"}

		sets.precast.RAWS['Coronach'] = {
						head="Amini Gapette", neck="Fotia Gorget", lear="Vulcan's Pearl", rear="Vulcan's Pearl",
						body="Orion Jerkin +1", hands="Orion Bracers +1", lring="Rajas Ring", rring="Ifrit Ring +1",
						back=Aug.Cape.RNG.WS, waist="Kwahu Kachina Belt", legs="Nahtirah Trousers", feet="Orion Socks +1"}
		-- Wildfire
		sets.precast.RAWS['Wildfire'] = {
						head="Amini Gapette", neck="Stoicheion Medal", lear="Crematio Earring", rear="Friomisi Earring",
						body="Orion Jerkin +1", hands="Orion Bracers +1", lring="Garuda Ring +1", rring="Garuda Ring +1",
						back=Aug.Cape.RNG.WS, waist="Aquiline Belt", legs="Arcadian Braccae +1", feet="Arcadian Socks +1"}
		-- Trueflight
		sets.precast.RAWS['Trueflight'] = {
						head="Amini Gapette", neck="Stoicheion Medal", lear="Crematio Earring", rear="Friomisi Earring",
						body="Orion Jerkin +1", hands="Orion Bracers +1", lring="Garuda Ring +1", rring="Garuda Ring +1",
						back=Aug.Cape.RNG.WS, waist="Aquiline Belt", legs="Arcadian Braccae +1", feet="Arcadian Socks +1"}
							
end