-- SCH Gearsets
-- Created: 6/13/2014
-- Last Updated: 6/13/2014
-- To Do:
--
--
--
--


if player.Name == 'Feary' then
		-- includes
		include('include/mappings.lua')
		include('include/equipment.lua')
		include('include/utility.lua')

		-- sets Macros off = 0  on = 1
		automacroset = 0
		if automacroset == 1 then
			if player.sub_job == 'RDM' then
				set_macro_page(2,1)
			elseif player.sub_job =='WHM' then
				set_macro_page(2,2)
			elseif player.sub_job == 'SCH' then
				set_macro_page(2,3)
			elseif player.sub_job == 'BRD' then
				set_macro_page(2,4)
			elseif player.sub_job =='NIN' then 
				set_macro_page(2,5)
			end
		else
			set_macro_page(9,1)
		end

		-- Auto Sets
		-- Standard/idle
		sets.idle.PDT = {main="Earth Staff",
				head="Hagondes Hat", neck="Twilight Torque",
                body="Hagondes Coat", hands="Hagondes Cuffs", lring=Aug.Darkring1, rring="Defending Ring",
                back="Umbra Cape", waist="Fucho-no-obi", legs="Hagondes Pants", feet="Hagondes Sabots"}
		sets.idle.MDT = {
				head="Hagondes Hat", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
                body="Hagondes Coat", hands="Hagondes Cuffs", lring=Aug.Darkring1, rring="Defending Ring",
                back="Felicitas Cape", waist="Fucho-no-obi", legs="Hagondes Pants", feet="Hagondes Sabots"}			
		sets.Resting = set_combine(sets.idle.PDT, {main="Chatoyant Staff",
				neck="Eidolon Pendant", lear="Magnetic Earring", rear="Moonshade Earring",
                body="Hagondes Coat", hands="Serpentes Cuffs",
                back="Umbra Cape", waist="Fucho-no-obi", legs="Nares Trews", feet="Chelona Boots"})
		sets.idle.Standard = set_combine(sets.idle.PDT,{
				lear="Merman's Earring", rear="Moonshade Earring",feet="Herald's Gaiters"})
		sets.misc.Town = set_combine(sets.idle.PDT, {feet="Herald's Gaiters"})
		
		-- JA
		sets.precast.JA["Tabula Rasa"] = {legs="Argute Pants +2"}
		sets.precast.JA["Caper Emissarius"] = {}
		
		sets.precast.JA["Sublimation"] = {}
		sets.precast.JA["Enlightenment"] = {}
		sets.precast.JA["Libra"] = {}
		sets.precast.JA["Modus Veritas"] = {}
		sets.precast.JA["Libra"] = {}
		
		-- Strategems 
		sets.precast.JA["Rapture"] = {}
		
		-- Precast
		-- Magic
		sets.precast.Fastcast = {ammo="Incantor Stone",
				head="Nahtirah Hat", neck="", lear="Loquac. Earring",
                body="Anhur Robe", hands="Gende. Gages +1", rring="Prolix Ring",
                back="Swith Cape", waist="Witful Belt", legs="Orvail Pants +1", feet="Peda. Loafers"}
		sets.precast.Cure = set_combine(sets.precast.Fastcast, {
                body="Heka's Kalasiris", 
                back="Pahtli Cape"})  		
				
		-- Midcast
		sets.midcast.Recast = set_combine(sets.idle.PDT, sets.precast.Fastcast, {waist="Witful Belt"})
		
		sets.midcast.ConserveMP = {ammo="Clarus Stone",
				head="Nares Cap", lear="Magnetic Earring", rear="Gifted Earring",
                body="Hedera's Cotehardie",
				waist="Austerity Belt", feet="Umbani Boots"}
		
		-- Elemental
		-- High Resist
		sets.midcast.Elemental = {main="Atinian Staff", sub="Wise Grip", ammo="Witchstone",
				head="Hagondes Hat", neck="Eddy Necklace", lear="Strophadic Earring", rear="Friomisi Earring",
                body="Bokwus Robe", hands="Yaoyotl Gloves", lring="Icesoul ring", rring="Icesoul ring",
                back="Toro Cape", waist="Sekhmet Corset", legs="Hagondes Pants", feet="Umbani Boots"}
		-- Damage
		sets.midcast.Nuke = {main="Atinian Staff", sub="Wise Grip", ammo="Witchstone",
				head="Hagondes Hat", neck="Eddy Necklace", lear="Novio Earring", rear="Friomisi Earring",
                body="Bokwus Robe", hands="Yaoyotl Gloves", lring="Icesoul ring", rring="Icesoul ring",
                back="Toro Cape", waist="Sekhmet Corset", legs="Hagondes Pants", feet="Umbani Boots"}
		
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
		sets.midcast.Enhancing = {main="Kirin's Pole", sub="Fulcio Grip", ammo="Savant's Treatise",
			neck="Colossus's Torque", lear="Andoaa Earring",
			body="Anhur Robe",
			back="Merciful Cape", waist="Cascade Belt", legs="Scholar's Pants", feet="Rubeus Boots"}
		sets.midcast.Embrava = set_combine(sets.midcast.Enhancing, {hands="Svnt. Bracers +2"})
		sets.midcast.Phalanx = set_combine(sets.midcast.Enhancing)
		sets.midcast.Hastespell = {ammo="Impatiens", waist="Witful Belt"}
		sets.midcast.Stoneskin = {}
		sets.midcast.Aquaveil = {}
		sets.midcast.Blink = set_combine(sets.midcast.Aquaveil)
		sets.midcast.Reraise = set_combine(sets.midcast.ConserveMP)

		-- Enfeebling
		-- Potency
		sets.midcast.Enfeebling = {main="Atinian Staff", sub="Mephitis Grip", ammo="Aureole",
				head="Nahtirah Hat", neck="Eddy Necklace", lear="Lifestorm Earring", rear="Psystorm Earring",
                body="Bokwus Robe", hands="Hagondes Cuffs", lring="Perception ring", rring="Sangoma ring",
                back="Refraction Cape", waist="Demonry Sash", legs="Bokwus Slops", feet="Bokwus Boots"}
		sets.midcast.Macc = {main="Atinian Staff", sub="Mephitis Grip", ammo="Aureole",
				head="Nahtirah Hat", neck="Eddy Necklace", lear="Lifestorm Earring", rear="Psystorm Earring",
                body="Bokwus Robe", hands="Hagondes Cuffs", lring="Perception ring", rring="Sangoma ring",
                back="Refraction Cape", waist="Demonry Sash", legs="Bokwus Slops", feet="Bokwus Boots"}
		sets.midcast.Dia = set_combine(sets.midcast.ConserveMP)
		sets.midcast.Paralyze = set_combine(sets.midcast.Macc)
		sets.midcast.Blind = set_combine(sets.midcast.Macc)
		sets.midcast.Bio = set_combine(sets.midcast.Macc)
		sets.midcast.Slow = set_combine(sets.midcast.Macc)
		
		
		-- Dark Magic
		sets.midcast.Dark = set_combine(sets.midcast.Macc, {
				head="Appetence Crown", neck="Aesir Torque",
				back="Merciful Cape", })
		sets.midcast.Aspir = set_combine(sets.midcast.Dark, {
			head="Appetence Crown",
			waist="Fucho-no-Obi",})
			
		-- Stun - Alacrity Down
		sets.midcast.Stun = set_combine(sets.precast.Fastcast, {main="Atinian Staff", sub="Arbuda Grip", ammo="Incantor Stone",
			head="Argute M.board +2", neck="Eddy Necklace", lear="Loquac. Earring", rear="Gwati Earring",
			body="Hedera Cotehardie", hands="Gende. Gages +1", lring="Prolix Ring", rring="Sangoma Ring",
			back="Swith Cape", waist="Ninurta's Sash", legs="Artsieq Hose", feet="Acad. Loafers"})
		-- Stun - Alacrity Up
		sets.midcast.Stun.Alacrity = set_combine(sets.midcast.Stun, {main="Atinian Staff", sub="Arbuda Grip", ammo="Incantor Stone",
			head="Nahtirah Hat", neck="Eddy Necklace", lear="Loquac. Earring", rear="Gwati Earring",
			body="Hedera Cotehardie", hands="Gende. Gages +1", lring="Prolix Ring", rring="Sangoma Ring",
			back="Swith Cape", waist="Ninurta's Sash", legs="Artsieq Hose", feet="Argute's Loafers +2"})
		
		-- Melee Sets
		sets.TP = set_combine(sets.idle.PDT, {
				head="", neck="", lear="", rear="",
                body="", hands="", lring="", rring="",
                back="", waist="", legs="", feet=""})
		sets.precast.WS = set_combine(sets.TP, {
				head="", neck="", lear="", rear="",
                body="", hands="", lring="", rring="",
                back="", waist="", legs="", feet=""})
		sets.precast.WS['Shattersoul'] = set_combine(sets.precast.WS, {})
		
		-- Misc
		sets.misc.Waltz = {}
		sets.misc.Steps = {}
		sets.misc.flourish = {}
end