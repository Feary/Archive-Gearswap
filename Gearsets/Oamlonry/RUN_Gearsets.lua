-- RUN Gear_sets
-- Created: 7/13/2014
-- Last Modified: 7/19/2014
-- To Do List
--
--
--
--

if player.name == 'Feary' then
-- includes
	include('include/utility.lua')
	include('include/mappings.lua')
	include('include/equipment.lua')
	-- include('../include/autoexec.lua')
	
-- sets Macros off = 0  on = 1
		automacroset = 1
		if automacroset == 1 then
			if player.sub_job == 'NIN' then
				set_macro_page(1,1)
			elseif player.sub_job == 'SAM' then
				set_macro_page(12,2)
			elseif player.sub_job == 'WAR' then
				set_macro_page(12,3)
			elseif player.sub_job == 'DNC' then 
				set_macro_page(12,4)
			elseif player.sub_job == 'DRG' then 
				set_macro_page(12,5)
			elseif player.sub_job == 'MNK' then 
				set_macro_page(12,6)
			elseif player.sub_job == 'WHM' then 
				set_macro_page(12,8)
			elseif player.sub_job == 'RDM' then 
				set_macro_page(12,8)
			elseif player.sub_job == 'SCH' then 
				set_macro_page(12,8)
			end
		else
			set_macro_page(12,2)
		end
		
-- Auto Sets
-- Standard/idle
sets.idle.PDT = { 
				head="Felistris Mask", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
                body="Iuitl Vest", hands="Iuitl wristbands +1", lring="Defending Ring", rring=Aug.Darkring1,
                back="Repulse Mantle", waist="Flume Belt", legs="Iuitl Tights", feet="Iuitl Gaiters"}

sets.idle.MDT = { ammo="Vanir Battery",
				head="Felistris Mask", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
                body="Iuitl Vest", hands="Iuitl wristbands +1", lring="Defending Ring", rring=Aug.Darkring1,
                back="Engulfer Cape", waist="Flume Belt", legs="Iuitl tights", feet="Iuitl Gaiters"}

sets.misc.Town = set_combine(sets.idle.PDT, {legs="Blood Cuisses"})
				
sets.idle.Standard = set_combine(sets.idle.PDT, {
				lear="Merman's Earring", rear="Merman's Earring",
				legs="Blood Cuisses"})
sets.idle.Evasion = { 
				head="Felistris Mask", neck="Torero Torque", lear="Musical Earring", rear="Novia Earring",
                body="Iuitl Vest", hands="Iuitl Wristbands +1", lring="Defending Ring", rring=Aug.Darkring1,
                back="Fravashi Mantle", waist="Flume Belt", legs="Iuitl Tights", feet="Iuitl Gaiters"}

sets.Enmity = {
			neck="Atzintli Necklace",
			back="Fravashi Mantle"}

-- TP set
sets.TP = { ammo="Vanir Battery",
			head="Felistris Mask", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
            body="Thaumas Coat", hands="Manibozho Gloves", lring="Rajas Ring", rring="Epona's Ring",
            back="Atheling Mantle", waist="Windbuffet Belt", legs="Manibozho Brais", feet="Manibozho Boots"}
sets.TP.Acc = { ammo="Honed Tathlum",
			head="Whirlpool Mask", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
            body="Thaumas Coat", hands="Buremte Gloves", lring="Rajas Ring", rring="Epona's Ring",
            back="Atheling Mantle", waist="Dynamic Belt +1", legs="Manibozho Brais", feet="Manibozho Boots"}
sets.TP.Buffed = { ammo="Vanir Battery",
			head="Felistris Mask", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
            body="Thaumas Coat", hands="Manibozho Gloves", lring="Rajas Ring", rring="Epona's Ring",
            back="Atheling Mantle", waist="Windbuffet Belt", legs="Manibozho Brais", feet="Manibozho Boots"}			
sets.TP.Hybrid = { ammo="Vanir Battery",
			head="Whirlpool Mask", neck="Twilight Torque", lear="Bladeborn Earring", rear="Steelflash Earring",
            body="Thaumas Coat", hands="Iuitl Wristbands +1", lring="Defending Ring", rring="Epona's Ring",
            back="Repulse Mantle", waist="Flume Belt", legs="Iuitl Tights", feet="Iuitl Gaiters"}
				
-- JA
sets.precast.JA["Elemental Sforzo"] = {body="Futhark Coat"}
sets.precast.JA["Odyllic Subterfuge"] = {}

sets.precast.JA["Lunge"] = {
				head="Athos Chapeau", neck="Eddy Necklace", lear="Friomisi Earring", rear="Novio Earring",
				back="Toro Cape", legs="Iuitl Tights"}
sets.precast.JA["Valiance"] = {body="Runiest Coat"}
sets.precast.JA["Vallation"] = {body="Runiest Coat"}
sets.precast.JA["Gambit"] = {hands="Runiest Mitons"}
sets.precast.JA["Pflug"] = {feet="Runiest Boots"}
sets.precast.JA["Battuta"] = {head="Futhark Bandeau"}
sets.precast.JA["Sleight of Sword"] = {hands="Futhark Mitons"}
sets.precast.JA["Inspiration"] = {legs="Futhark Trousers"}
sets.precast.JA["Rayke"] = {feet="Futhark Boots"}

-- Magic 
sets.precast.Fastcast = set_combine(sets.idle.PDT, {
				head="Runiest Bandeau", lear="Loquac. Earring", 
				hands="Thaumas Gloves", rring="Prolix Ring",
				legs="Orvail Pants +1", feet="Chelona Boots"})
sets.midcast.Enhancing = {
				neck="Colossus's Torque", lear="Andoaa Earring",
				hands="Runeist Mitons",
				back="Merciful Cape", waist="Cascade Belt", legs="Futhark Trousers"}
sets.midcast.Phalanx = set_combine(sets.midcast.Enhancing,{
				head="Futhark Bandeau"})
sets.midcast.Regen = {head="Runiest Bandeau"}

-- INT
sets.midcast.Spikes = set_combine(sets.idle.PDT,{lring="Icesoul Ring", rring="Icesoul Ring"})
sets.midcast.Flash = set_combine(sets.Enmity,sets.precast.Fastcast,{})

-- Weaponskills
sets.precast.WS = {ammo="Vanir Battery",
				head="Whirlpool Mask", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Manibozho Jerkin", hands="Manibozho Gloves", lring="Rajas Ring", rring="Pyrosoul Ring",
                back="Atheling Mantle", waist="Wanion Belt", legs="Manibozho Brais", feet="Manibozho Boots"}
sets.precast.WS.Acc = {ammo="Vanir Battery",
				head="Whirlpool Mask", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Manibozho Jerkin", hands="Manibozho Gloves", lring="Rajas Ring", rring="Pyrosoul Ring",
                back="Atheling Mantle", waist="Wanion Belt", legs="Manibozho Brais", feet="Manibozho Boots"}

-- GreatSword
sets.precast.WS["Resolution"] = set_combine(sets.precast.WS, {ammo="Vanir Battery",
				head="Whirlpool Mask", neck="Breeze Gorget", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Manibozho Jerkin", hands="Manibozho Gloves", lring="Rajas Ring", rring="Pyrosoul Ring",
                back="Buquwik Cape", waist="Breeze Belt", legs="Manibozho Brais", feet="Manibozho Boots"})
sets.precast.WS.Acc["Resolution"] = set_combine(sets.precast.WS, {ammo="Vanir Battery",
				head="Whirlpool Mask", neck="Breeze Gorget", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Manibozho Jerkin", hands="Manibozho Gloves", lring="Rajas Ring", rring="Pyrosoul Ring",
                back="Buquwik Cape", waist="Breeze Belt", legs="Manibozho Brais", feet="Manibozho Boots"})				
sets.precast.WS["Dimidiation"] = set_combine(sets.precast.WS, {ammo="Vanir Battery",
				head="Uk'uxkaj Cap", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Manibozho Jerkin", hands="Manibozho Gloves", lring="Rajas Ring", rring="Epona's Ring",
                back="Atheling Mantle", waist="Windbuffet Belt", legs="Manibozho Brais", feet="Manibozho Boots"})
sets.precast.WS["Torcleaver"] = set_combine(sets.precast.WS, {ammo="Vanir Battery",
				head="Whirlpool Mask", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Manibozho Jerkin", hands="Manibozho Gloves", lring="Rajas Ring", rring="Pyrosoul Ring",
                back="Atheling Mantle", waist="Wanion Belt", legs="Manibozho Brais", feet="Manibozho Boots"})
-- Sword
sets.precast.WS["Requiescat"] = set_combine(sets.precast.WS, {ammo="Ginsen",
				head="Whirlpool Mask", neck="Shadow Gorget", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Manibozho Jerkin", hands="Manibozho Gloves", lring="Aquasoul Ring", rring="Epona's Ring",
                back="Atheling Mantle", waist="Shadow Belt", legs="Manibozho Brais", feet="Manibozho Boots"})
			
-- Misc Sets
sets.misc.Utsusemi = set_combine(sets.misc.Fastcast, {})

sets.misc.Waltz = set_combine(sets.idle.PDT,{})
sets.misc.Steps = set_combine(sets.TP.ACC)
sets.misc.flourish = {}


elseif player.name == 'Derion' then

elseif player.name == 'Aniyah' then

elseif player.name == 'Firetoplay' then

end