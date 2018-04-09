-- BST Gear_sets
-- Created: 7/26/2014
-- Last Modified: 8/12/2015
-- To Do:
-- Dual Wield vs Single
--
--
--
--

if player.name == 'Carrisa' then
-- includes
	include('include/utility.lua')
	include('include/mappings.lua')
	include('include/equipment.lua')
	-- include('../include/autoexec.lua')
	
-- sets Macros off = 0  on = 1
		automacroset = 1
		if automacroset == 1 then
			if player.sub_job == 'NIN' then
				set_macro_page(14,1)
			elseif player.sub_job == 'WAR' then
				set_macro_page(14,2)
			elseif player.sub_job == 'DNC' then
				set_macro_page(14,3)
			elseif player.sub_job == 'SAM' then 
				set_macro_page(14,4)
			elseif player.sub_job == 'WHM' then 
				set_macro_page(14,5)
			end
		else
			set_macro_page(14,3)
		end
		
-- Auto Sets
-- Standard/idle
sets.idle.PDT = { 
				head="Felistris Mask", neck="Twilight Torque", lear="Merman's Earring", rear="Etiolation Earring",
                body="Iuitl Vest +1", hands="Iuitl Wristbands +1", lring=Aug.Darkring1, rring="Defending Ring",
                back="Repulse Mantle", waist="Flume Belt", legs="Iuitl Tights +1", feet="Iuitl Gaiters"}

sets.idle.MDT = {
				head="Felistris Mask", neck="Twilight Torque", lear="Merman's Earring", rear="Etiolation Earring",
                body="Iuitl Vest +1", hands="Iuitl Wristbands +1", lring=Aug.Darkring1, rring="Defending Ring",
                back="Engulfer Cape", waist="Nierenschutz", legs="Iuitl Tights +1", feet="Iuitl Gaiters"}

sets.idle.Standard = set_combine(sets.idle.PDT, {
				lear="Merman's Earring", rear="Etiolation Earring", 
				feet="Skadi's Jambeaux"})

sets.Resting = set_combine(sets.idle.PDT,{
				head="Twilight Helm",
				body="Twilight Mail"})
				
sets.misc.Town = set_combine(sets.idle.PDT, {feet="Skadi's Jambeaux"})
	
sets.lockstyle = set_combine(sets.misc.Town)

-- Precast Sets
sets.precast.Fastcast = set_combine(sets.idle.PDT, {
				head="Cizin Helm +1", neck="Voltsurge Torque", lear="Loquac. Earring", rear="Enchntr. Earring +1", 
				body="Taeon Tabard", hands="Thaumas Gloves", rring="Prolix Ring"})
				
sets.precast.Utsusemi = set_combine(sets.precast.Fastcast, {neck="Magoraga Beads"})

sets.misc.Waltz = set_combine(sets.idle.PDT,{})
sets.misc.Steps = set_combine({ammo="Ginsen",
			head="", neck="Iqabi Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
			body=Aug.Skirmish.Taeon.Body.FC, hands=Aug.Skirmish.Taeon.Hands.FC, lring="Rajas ring", rring="Ramuh Ring +1",
			back="", waist="", legs=Aug.Skirmish.Taeon.Legs.FC,feet=Aug.Skirmish.Taeon.Feet.FC})

sets.misc.flourish = {
			head="", neck="Voltsurge Torque", lear="Gwati Earring", rear="Enchntr. Earring +1",
			body=Aug.Skirmish.Taeon.Body.FC, hands=Aug.Skirmish.Taeon.Hands.FC, lring="Perception Ring", rring="Sangoma Ring",
			back="", waist="", legs=Aug.Skirmish.Taeon.Legs.FC, feet=Aug.Skirmish.Taeon.Feet.FC}


-- JA
sets.precast.JA["Familiar"] = {legs="Ankusa Trousers"}
sets.precast.JA["Unleash"] = {}

sets.precast.JA["Killer Instinct"] = {head="Ankusa Helm"}
sets.precast.JA["Feral Howl"] = {
			head="Despair Helm", neck="Voltsurge Torque", lear="Gwati Earring", rear="Enchntr. Earring +1",
			body="Ankusa Jackcoat", hands=Aug.Skirmish.Acro.Hands.Breathe, lring="Sangoma Ring", rring="Perception Ring",
			back="", waist="", legs=Aug.Skirmish.Acro.Legs.Breathe, feet=Aug.Skirmish.Acro.Feet.Breathe}
sets.precast.JA["Call Beast"] = {
			head="Acro Helm",
			body="Mirke Wardecors", hands="Ankusa Gloves",
			legs="Acro Breeches", feet="Armada Sollerets"}
sets.precast.JA["Beast Loyality"] = set_combine(sets.precast.JA["Call Beast"])
sets.precast.JA["Tame"] = {
				head="Totemic Helm", lear="Tamer's Earring",
				legs="Stout Kecks"}
sets.precast.JA["Spur"] = {feet="Nukumi Ocreae"}

-- Reward + MND
sets.precast.JA["Reward"] = {
				head="Stout Bonnet", neck="Morgana's Choker", lear="Enchntr. Earring +1", rear="Lifestorm Earring",
				body="Totemic Jackcoat", hands="Beast Gloves", lring="Levia. Ring +1", rring="Levia. Ring +1",
				back="Pastoralist's Mantle", waist="Crudelist Belt", legs="Ankusa Trousers", feet="Ankusa Gaiters"}
-- Charm + CHR 
sets.precast.JA["Charm"] = {
				head="Totemic Helm", neck="Ferine Necklace", lear="Enchntr. Earring +1", rear="",
				body="Ankusa Jackcoat", hands="Ankusa Gloves",
				back="", waist="", legs="Ankusa Trousers", feet="Ankusa Gaiters"}
				
-- Ready/Sic Moves
sets.midcast.Pet = {}
sets.midcast.Pet.Recast = {legs="Desultor Tassets"}

sets.midcast.Pet.WS = {
		head="Despair Helm", neck="Ferine Necklace", lear="Sabong Earring", rear="Domesticator's Earring",
		body=Aug.Skirmish.Taeon.Body.PET, hands="Regimen Mittens", lring="", rring="",
		back="Ferine Mantle",waist="Hurch'lan Sash", legs=Aug.Skirmish.Taeon.Legs.PET, feet=Aug.Skirmish.Taeon.Feet.PET}
 
sets.midcast.Pet.WS.MAB = {
		head=Aug.Skirmish.Acro.Head.Delay, neck="", lear="", rear="",
		body=Aug.Skirmish.Acro.Body.Delay, hands=Aug.Skirmish.Acro.Hands.Delay, lring="", rring="",
		back="", waist="Hurch'lan Sash", legs=Aug.Skirmish.Acro.Legs.Delay, feet=Aug.Skirmish.Acro.Feet.Delay}
 
sets.midcast.Pet.WS.Macc = {
		head="Despair Helm", neck="Ferine Necklace", lear="Sabong Earring", rear="Domesticator's Earring",
		body=Aug.Skirmish.Acro.Body.Breathe, hands=Aug.Skirmish.Acro.Hands.Breathe, lring="", rring="",
		back="Ferine Mantle",waist="Hurch'lan Sash", legs=Aug.Skirmish.Acro.Legs.Breathe, feet=Aug.Skirmish.Acro.Feet.Breathe}
 

sets.midcast.Pet.TPBonus = {hands="Nukumi Manoplas"}

-- Master Priority - TP set - Pet Idle
sets.TP = {	ammo="Paeapua",
			head=Aug.Skirmish.Taeon.Head.TA, neck="Asperity Necklace", lear="Brutal Earring", rear="Suppanomimi",
			body=Aug.Skirmish.Taeon.Body.TA, hands=Aug.Skirmish.Taeon.Hands.TA, lring="Rajas ring", rring="Epona's Ring",
			back="Atheling Mantle", waist="Patentia Sash", legs=Aug.Skirmish.Taeon.Legs.DW, feet=Aug.Skirmish.Taeon.Feet.TA}

-- Master Priority - Acc TP set - Pet Not Engaged
sets.TP.Acc = {	ammo="Ginsen",
			head=Aug.Skirmish.Taeon.Head.DW, neck="Iqabi Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
			body=Aug.Skirmish.Taeon.Body.DW, hands=Aug.Skirmish.Taeon.Hands.DW, lring="Rajas ring", rring="Ramuh Ring +1",
			back="Atheling Mantle", waist="Patentia Sash", legs=Aug.Skirmish.Taeon.Legs.DW,feet=Aug.Skirmish.Taeon.Feet.DW}

-- Master Priority - Acc TP set - Pet Not Engaged
sets.TP.Buffed = {ammo="Ginsen",
			head=Aug.Skirmish.Taeon.Head.TA, neck="Asperity Necklace", lear="Brutal Earring", rear="Suppanomimi",
			body=Aug.Skirmish.Taeon.Body.TA, hands=Aug.Skirmish.Taeon.Hands.TA, lring="Rajas ring", rring="Epona's Ring",
			back="Atheling Mantle", waist="Windbuffet Belt", legs=Aug.Skirmish.Taeon.Legs.TA,feet=Aug.Skirmish.Taeon.Feet.TA}

-- Pet Priority - Master Engaged - Pet Engaged - TP set
sets.TP.Pet = {	ammo="Paeapua",
			head=Aug.Skirmish.Taeon.Head.PET, neck="Asperity Necklace", lear="Bladeborn Earring", rear="SteelFlash Earring",
			body=Aug.Skirmish.Taeon.Body.PET, hands=Aug.Skirmish.Taeon.Hands.PET, lring="Rajas ring", rring="Epona's Ring",
			back="Atheling Mantle", waist="Hurch'lan Sash", legs=Aug.Skirmish.Taeon.Legs.PET, feet=Aug.Skirmish.Taeon.Feet.PET}
				
-- Pet Priority - Master Idle - Pet Engaged
sets.TP.Pet.Tank = {
			head=Aug.Skirmish.Taeon.Head.PDT, neck="Shepherd's Chain", lear="Handler's Earring", rear="Handler's Earring +1",
			body=Aug.Skirmish.Taeon.Body.PDT, hands=Aug.Skirmish.Taeon.Hands.PDT, lring="Rajas ring", rring="Defending Ring",
			back="Pastoralist's Mantle", waist="Isa Belt", legs=Aug.Skirmish.Taeon.Legs.PDT,feet=Aug.Skirmish.Taeon.Feet.PDT}

-- Pet Priority - Master Idle - Pet Idle
sets.idle.Pet = set_combine(sets.TP.Pet.Tank, {
				head="Twilight Helm", neck="Twilight Torque",
				body="Twilight Mail", hands="Regimen Mittens", lring=Aug.Darkring1, rring="Defending Ring",
				back="Pastoralist's Mantle", waist="Isa Belt", legs="Nukumi Quijotes", feet="Skadi Jambeaux"})		


-- Weaponskills
sets.precast.WS = {ammo="Ginsen",
			head="Otomi Helm", neck="Fotia Gorget", lear="Brutal earring", rear="Vulcan's Pearl",
			body=Aug.Skirmish.Acro.Body.TP, hands=Aug.Skirmish.Acro.Hands.TP, lring="Ifrit Ring +1", rring="Epona's Ring",
			back="Buquwik Cape", waist="Fotia Belt", legs=Aug.Skirmish.Acro.Legs.TP, feet=Aug.Skirmish.Acro.Feet.TP}
sets.precast.WS.Acc = set_combine(sets.precast.WS, {ammo="Hasty Pinion +1",
			head="Otomi Helm", neck="Fotia Gorget", lear="Bladeborn Earring", rear="SteelFlash Earring",
			body=Aug.Skirmish.Acro.Body.TP, hands=Aug.Skirmish.Acro.Hands.TP, lring="Ifrit Ring +1", rring="Epona's Ring",
			back="Buquwik Cape", waist="Fotia Belt", legs=Aug.Skirmish.Acro.Legs.TP, feet=Aug.Skirmish.Acro.Feet.TP})

-- Ruinator
sets.precast.WS["Ruinator"] = set_combine(sets.precast.WS, {ammo="Ginsen",
			head="Otomi Helm", neck="Fotia Gorget", lear="Brutal earring", rear="Vulcan's Pearl",
			body=Aug.Skirmish.Acro.Body.TP, hands=Aug.Skirmish.Acro.Hands.TP, lring="Ifrit Ring +1", rring="Epona's Ring",
			back="Buquwik Cape", waist="Fotia Belt", legs=Aug.Skirmish.Acro.Legs.TP, feet=Aug.Skirmish.Acro.Feet.TP})
sets.precast.WS.Acc["Ruinator"] = set_combine(sets.precast.WS, {ammo="Hasty Pinion +1",
			head=Aug.Skirmish.Acro.Head.TP, neck="Fotia Gorget", lear="Bladeborn Earring", rear="SteelFlash Earring",
			body=Aug.Skirmish.Acro.Body.TP, hands=Aug.Skirmish.Acro.Hands.TP, lring="Ifrit Ring +1", rring="Epona's Ring",
			back="Buquwik Cape", waist="Fotia Belt", legs=Aug.Skirmish.Acro.Legs.TP, feet=Aug.Skirmish.Acro.Feet.TP})

-- Rampage 
sets.precast.WS["Rampage"] = set_combine(sets.precast.WS, {ammo="Ginsen",
			head=Aug.Skirmish.Acro.Head.TP, neck="Fotia Gorget", lear="Brutal earring", rear="Moonshade Earring",
			body=Aug.Skirmish.Acro.Body.TP, hands=Aug.Skirmish.Acro.Hands.TP, lring="Ifrit Ring +1", rring="Epona's Ring",
			back="Buquwik Cape", waist="Fotia Belt", legs=Aug.Skirmish.Acro.Legs.TP, feet=Aug.Skirmish.Acro.Feet.TP})
sets.precast.WS.Acc["Rampage"] = set_combine(sets.precast.WS, {ammo="Hasty Pinion +1",
			head=Aug.Skirmish.Acro.Head.TP, neck="Fotia Gorget", lear="Bladeborn Earring", rear="SteelFlash Earring",
			body=Aug.Skirmish.Acro.Body.TP, hands=Aug.Skirmish.Acro.Hands.TP, lring="Ifrit Ring +1", rring="Epona's Ring",
			back="Buquwik Cape", waist="Fotia Belt", legs=Aug.Skirmish.Acro.Legs.TP, feet=Aug.Skirmish.Acro.Feet.TP})

-- Onslaught
sets.precast.WS["Onslaught"] = set_combine(sets.precast.WS,{ammo="Ginsen",
			head=Aug.Skirmish.Taeon.Head.TA, neck="Asperity Necklace", lear="Brutal Earring", rear="Moonshade Earring",
			body=Aug.Skirmish.Taeon.Body.TA, hands=Aug.Skirmish.Taeon.Hands.TA, lring="Ifrit Ring +1", rring="Epona's Ring",
			back="Vespid Mantle", waist="Windbuffet Belt", legs=Aug.Skirmish.Taeon.Legs.TA, feet=Aug.Skirmish.Taeon.Feet.TA})

sets.precast.WS.Acc["Onslaught"] = set_combine(sets.precast.WS, {ammo="Ginsen",
			head=Aug.Skirmish.Taeon.Head.TA, neck="Asperity Necklace", lear="Brutal Earring", rear="Moonshade Earring",
			body=Aug.Skirmish.Taeon.Body.TA, hands=Aug.Skirmish.Taeon.Hands.TA, lring="Ramuh Ring +1", rring="Epona's Ring",
			back="Vespid Mantle", waist="Windbuffet Belt", legs=Aug.Skirmish.Taeon.Legs.TA, feet=Aug.Skirmish.Taeon.Feet.TA})

-- Primal Rend - Magic WS
sets.precast.WS["Primal Rend"] = set_combine(sets.precast.WS, {ammo="Ginsen",
			head=Aug.Skirmish.Acro.Head.WS, neck="Asperity Necklace", lear="Brutal Earring", rear="Moonshade Earring",
			body=Aug.Skirmish.Acro.Body.WS, hands=Aug.Skirmish.Taeon.Hands.TA, lring="Ifrit Ring +1", rring="Epona's Ring",
			back="Vespid Mantle", waist="Windbuffet Belt", legs=Aug.Skirmish.Acro.Legs.WS, feet=Aug.Skirmish.Acro.Feet.WS})

-- Cloudslitter - Magic WS
sets.precast.WS["Cloudsplitter"] = set_combine(sets.precast.WS['Primal Rend'], {})
end