-- Feary's SMN LUA
-- Date Created : 1/29/2014
-- Last Update: 8/14/2015
-- To Do
-- Astral Conduit?
--
--

--includes
	include('include/functions.lua')
	-- Global Buffs
	include('include/status.lua')
	
-- Gear Sets 
function get_sets()
--includes
	--include('include/autoexec.lua')
	include('include/binds.lua')
	include('include/utility.lua')
	include('include/macro.lua')
	
	-- Get SMN gearsets
	include('Gearsets/'..player.name..'/SMN_Gearsets.lua')
	
	-- Variables 
	ShadowType = 'None'
	Mode = 0
	PDT = 0
	MDT = 0
	
	 -- Wards table for creating custom timers   
    wards = {}
    -- Base duration for ward pacts.
    wards.durations = {
        ['Crimson Howl'] = 60, ['Earthen Armor'] = 60, ['Inferno Howl'] = 60, ['Heavenward Howl'] = 60,
        ['Rolling Thunder'] = 120, ['Fleet Wind'] = 120,
        ['Shining Ruby'] = 180, ['Frost Armor'] = 180, ['Lightning Armor'] = 180, ['Ecliptic Growl'] = 180,
        ['Glittering Ruby'] = 180, ['Hastega'] = 180, ['Noctoshield'] = 180, ['Ecliptic Howl'] = 180,
        ['Dream Shroud'] = 180,
        ['Reraise II'] = 3600
    }
    -- Icons to use when creating the custom timer.
    wards.icons = {
        ['Earthen Armor']   = 'spells/00299.png', -- 00299 for Titan
        ['Shining Ruby']    = 'spells/00043.png', -- 00043 for Protect
        ['Dream Shroud']    = 'spells/00304.png', -- 00304 for Diabolos
        ['Noctoshield']     = 'spells/00106.png', -- 00106 for Phalanx
        ['Inferno Howl']    = 'spells/00298.png', -- 00298 for Ifrit
        ['Hastega']         = 'spells/00358.png', -- 00358 for Hastega
        ['Rolling Thunder'] = 'spells/00104.png', -- 00358 for Enthunder
        ['Frost Armor']     = 'spells/00250.png', -- 00250 for Ice Spikes
        ['Lightning Armor'] = 'spells/00251.png', -- 00251 for Shock Spikes
        ['Reraise II']      = 'spells/00135.png', -- 00135 for Reraise
        ['Fleet Wind']      = 'abilities/00074.png', -- 
    }
	
	SpiritList = S{"LightSpirit", "DarkSpirit", "FireSpirit", "EarthSpirit", "WaterSpirit", "AirSpirit", "IceSpirit", "ThunderSpirit"}
    AvatarList = S{'Shiva','Ramuh','Garuda','Leviathan','Diabolos','Titan','Fenrir','Ifrit','Carbuncle', 'Cait Sith','Alexander','Odin','Atomos'}

	-- Types of BloodPacts
	-- Skill
		Skill_BloodPact = S{'Perfect Defense', 'Impact'}
	
	-- Physical
		PhysicalRagePacts = S{
		-- T1 BPs
		'Double Slap', 'Camisado', 'Punch', "Barracurda Dive", 'Claw', 'Axe Kick',
		-- T2 BPs
		'Predator Claws', 'Eclipse Bite', 'Double Punch', 'Spinning Dive', 'Regal Scratch', 'Rush',
		-- T3 BPs
		'Regal Gash', 
		}
	-- Magical 
	-- MAB
		MagicalBloodPactRage = S{
		-- Astral Flow
        'Inferno','Earthen Fury','Tidal Wave','Aerial Blast','Diamond Dust','Judgment Bolt','Searing Light','Howling Moon','Ruinous Omen',
        -- T2 Nukes
		'Fire II','Stone II','Water II','Aero II','Blizzard II','Thunder II',
        -- T4 Nukes 
		'Fire IV','Stone IV','Water IV','Aero IV','Blizzard IV','Thunder IV',
        -- T1 BPs
		'Thunderspark','Burning Strike','Meteorite',
        -- T2 BPs
		'Level ? Holy', 'Nether Blast', 'Flaming Crush',
		-- T3 BPs
		'Zantetsuken'
		}
	-- Macc
	-- Uses Magic Acc BP Set
		DebuffBloodPact = T{
		-- T1
		 'Mewing Lullaby', 'Sleepga', 'Slowga', 'Tidal Roar', 'Nightmare', 'Ultimate Terror', 'Somnolence', 'Lunar Cry', 'Lunar Roar', 'Moonlit Charge', 'Crescent Fang',
		-- T2
		'Diamond Storm', 'Eerie Eye', "Chaotic Strike",
		-- T3
		'Shock Squall','Pavor Nocturnus', 'Volt Strike',
		}
	-- Uses Rage set with Beckoner's Spats
	Magical_BPs_affected_by_TP = T{'Heavenly Strike', 'Wind Blade', 'Night Terror', 'Thunderstorm', 'Geocrush', 'Meteor Strike', 'Grand Fall', 'Thunderspark', 'Holy Mist', 'Lunar Bay',}
end

-- Called when this job file is unloaded (eg: job change)
function file_unload()
	clear_binds()
end
function self_command(command)
-- Lock PDT
	if command == 'PDT' then
		if PDT == 1 then
			-- make sure other values are set to default
			-- Unlock PDT/MDT Variables
			PDT = 0
			MDT = 0
			-- Place Me in my previous set.
			if player.status == 'Engaged' then
				previous_set()
			else
				equip(sets.idle.Standard)
			end
			windower.add_to_chat(121,'PDT Set UnLocked')
		else
		-- Make sure other values are set to default
				MDT = 0
			-- Set PDT set and equip it
				PDT = 1
				equip(sets.idle.PDT)
				windower.add_to_chat(121,'PDT Set Locked')
		end
--  Lock MDT
	elseif command == 'MDT' then
		if MDT == 1 then
		-- make sure other values are set to default
		-- Unlock PDT/MDT Variables
			PDT = 0
			MDT = 0
			-- Place Me in my previous set.
			if player.status == 'Engaged' then
				previous_set()
			else
				equip(sets.idle.Standard)
			end
			windower.add_to_chat(121,'MDT Set UnLocked')
		else
		-- make sure other values are set to default
			PDT = 0
		-- lock MDT set and equip it
			MDT = 1	
			equip(sets.idle.MDT)
			windower.add_to_chat(121,'MDT Set Locked')
		end
	elseif command == 'TP' then
		if PDT == 1 or MDT == 1 then
			-- Reset to Default
			PDT = 0
			MDT = 0
			-- Place me in previous set
			if player.status == 'Engaged' then
				previous_set()
			else
				equip(sets.idle.Standard)
			end
			windower.add_to_chat(121,'PDT/MDT Set UnLocked')
		else
			if Mode >= 1 then
				-- Reset to 0
				Mode = 0
			else
				-- Increment by 1
				Mode = Mode + 1
			end
			-- Place me in previous set
			if player.status == 'Engaged' then
				previous_set()
			else
				equip(sets.idle.Standard)
			end
		end
	elseif command == "AvatarMode" or command == "AM" then
		if AvatarMode >= 3 then
			-- Reset to Default
				AvatarMode = 0
			-- Place me in previous set
				if player.status == 'Engaged' then
					pet_sets()
				else
					equip(sets.idle.Avatar)
				end
					windower.add_to_chat(121,'PDT/MDT Set UnLocked')		
		else
			if AvatarMode > 3 then
				-- Reset to Default
				AvatarMode = 0		
			end
		end
	elseif command == "siphon" then
		handle_siphoning()
	elseif command == "petweather" then
		handle_petweather()	
	end
end

function pet_change(pet,gain)
-- Gain a Pet via Summoning
	if gain then
			if pet.name == "Carbuncle" then
				set_macro_page(7,2)
			elseif pet.name == 'Garuda' then
				set_macro_page(7,3)
			elseif pet.name == 'Titan' then
				set_macro_page(7,4)
			elseif pet.name == 'Fenrir' then 
				set_macro_page(7,5)
			elseif pet.name == 'Diabolos' then 
				set_macro_page(7,6)
			elseif pet.name == 'Shiva' then 
				set_macro_page(7,7)
			elseif pet.name == 'Ramuh' then 
				set_macro_page(7,8)
			elseif pet.name == 'Leviathan' then 
				set_macro_page(7,9)
			elseif pet.name == 'Ifrit' then 
				set_macro_page(7,10)
			else
				set_macro_page(7,1)
			end
		pet_sets()
	else
		set_macro_page(7,1)
		if pet.name == "Alexander" then
			equip(sets.midcast.SummoningMagic)
		else
			equip(sets.idle.Standard)
		end
	end
end
	
function status_change(new,old)
-- Auto set
	if pet.isvalid then
		if pet.status == "Engaged" then
			-- equip pet Engaged
			if AvatarMode == 1 then
				equip(sets.idle.Avatar.DT)
			elseif AvatarMode == 2 then
				equip(sets.idle.Avatar.Melee)
			else
				equip(sets.idle.Avatar)
			end
		else
			pet_sets()
		end
	else
		if new == 'Resting' then
			equip(sets.Resting)
		elseif new == 'Idle' then
				slot_lock()
				if areas.Town:contains(world.zone) then
					windower.add_to_chat(121, "Town Gear")
					equip(sets.misc.Town)
				else
					if PDT == 1 then
						equip(sets.idle.PDT)
					elseif MDT == 1 then
						equip(sets.idle.MDT)
					else
						equip(sets.idle.Standard)
					end
				end
		elseif new == 'Engaged' then
			slot_lock()
			if PDT == 1 or MDT == 1 then
				if PDT == 1 and MDT == 0 then
					windower.add_to_chat(121,'PDT Locked')
					equip(sets.idle.PDT)
				elseif MDT == 1 and PDT == 0 then
					windower.add_to_chat(121,'MDT Locked')
					equip(sets.idle.MDT)
				else
					MDT = 0
					PDT = 0
				end
			else
				-- Equip previous TP set 
					previous_set()
			end
		end
	end
end

function precast(spell,arg)
	if not midaction() or not pet_midaction() then
	-- Job Abilities
		if spell.type == 'JobAbility' then
			if sets.precast.JA[spell.name] then
				equip(sets.precast.JA[spell.name])
			end
		elseif spell.type == "BloodPactWard" or spell.type == "BloodPactRage" then
			if spell.name == "Alexander" or spell.name == "Perfect Defense" then
				windower.add_to_chat(121,'Alexander')
				equip(sets.midcast.SummoningSkill)
			else
				windower.add_to_chat(121,'BP Delay')
				equip(sets.precast.BP)
			end
	-- Weaponskills
		elseif spell.type == "WeaponSkill" then
			if player.status == 'Engaged' then
				if player.tp >= 100 then
					if spell.target.distance <= 5 then
						if sets.precast.WS[spell.name] then
							equip(sets.precast.WS[spell.name])
						else
							equip(sets.precast.WS)
						end
					else
						cancel_spell()
						windower.add_to_chat(121, 'Canceled '..spell.name..'.'..spell.target.name..' is Too Far')
					end
				else 
					cancel_spell()
					windower.add_to_chat(121, ''..player.tp..'TP is not enough to WS')
				end
			else
				cancel_spell()
				windower.add_to_chat(121, 'You must be Engaged to WS')
			end
	-- Magic
		elseif spell.type:endswith('Pact') then
			-- Magian Staff
			if Fastcast.Staff[spell.element] and (player.inventory[Fastcast.Staff[spell.element]] or player.wardrobe[Fastcast.Staff[spell.element]] or player.wardrobe2[Fastcast.Staff[spell.element]]) then
				equip(sets.precast.Fastcast,{main=Fastcast.Staff[spell.element]})
			else
				equip(sets.precast.Fastcast)
			end
		elseif spell.type:endswith('Magic') then
			if spell.skill == 'Healing Magic' then
				-- Cure casting time
				if spell.english:startswith('Cure') or spell.english:startswith("Curaga") then
					equip(sets.precast.Cure)
				else
					if Fastcast.Staff[spell.element] and (player.inventory[Fastcast.Staff[spell.element]] or player.wardrobe[Fastcast.Staff[spell.element]] or player.wardrobe2[Fastcast.Staff[spell.element]]) then
						equip(sets.precast.Fastcast,{main=Fastcast.Staff[spell.element]})
					else
						equip(sets.precast.Fastcast)
					end
				end
			elseif spell.skill == 'Enhancing Magic' then
				-- Cancel Sneak
				if spell.name == 'Sneak' and buffactive.Sneak and spell.target.type == 'SELF' then
					windower.ffxi.cancel_buff(71)
					cast_delay(0.3)
				end	
			else
				-- Magian Staff
				if Fastcast.Staff[spell.element] and (player.inventory[Fastcast.Staff[spell.element]] or player.wardrobe[Fastcast.Staff[spell.element]] or player.wardrobe2[Fastcast.Staff[spell.element]]) then
					equip(sets.precast.Fastcast,{main=Fastcast.Staff[spell.element]})
				else
					equip(sets.precast.Fastcast)
				end
			end
	-- Ninjutsu
		elseif spell.type == 'Ninjutsu' then
			-- Magian Staff
			if Fastcast.Staff[spell.element] and (player.inventory[Fastcast.Staff[spell.element]] or player.wardrobe[Fastcast.Staff[spell.element]] or player.wardrobe2[Fastcast.Staff[spell.element]]) then
				equip(sets.precast.Fastcast,{main=Fastcast.Staff[spell.element]})
			else
				equip(sets.precast.Fastcast)
			end
	-- BardSongs
		elseif spell.type == 'BardSong' then
			-- Magian Staff
			if Fastcast.Staff[spell.element] and (player.inventory[Fastcast.Staff[spell.element]] or player.wardrobe[Fastcast.Staff[spell.element]] or player.wardrobe2[Fastcast.Staff[spell.element]]) then
				equip(sets.precast.Fastcast,{main=Fastcast.Staff[spell.element]})
			else
				equip(sets.precast.Fastcast)
			end
		end
	end
end

function pet_midcast(spell)
	if string.find(pet.name,'Spirit') then
		equip(sets.midcast.Pet.Spirit)
	else
	-- Blood Pacts
		if Skill_BloodPact:contains(spell.name) then
			equip(sets.midcast.SummoningSkill)
		elseif spell.name == "Flaming Crush" then
			equip(sets.midcast.Pet.FC)
		elseif PhysicalRagePacts:contains(spell.name) then
			equip(sets.midcast.Pet.PhysicalBloodPactRage)
		elseif MagicalBloodPactRage:contains(spell.name) then
			equip(sets.midcast.Pet.MagicalBloodPactRage)
		elseif DebuffBloodPact:contains(spell.name) then
			equip(sets.midcast.Pet.BloodPactWard.Macc)
		elseif Magical_BPs_affected_by_TP:contains(spell.name) then
			if (spell.name == 'Heavenly Strike' and pet.TP > 1200) or pet.TP > 2800 then
				equip(sets.midcast.Pet.MagicalBloodPactRage)
			else
				equip(sets.midcast.Pet.MagicalBloodPactRage.TP)
			end
		else
			if spell.type == "BloodPactWard" then
				windower.add_to_chat(121,'Defaulted Ward Set')
				equip(sets.midcast.SummoningSkill)
			elseif spell.type == "BloodPactRage" then
				windower.add_to_chat(121,'Defaulted Rage Set')
				equip(sets.midcast.Pet.BloodPactRage)
			end
		
		end
	end
end

function midcast(spell,arg)
	if not midaction() or not pet_midaction() or spell.interrupted then
	-- SummoningMagic
		if spell.skill == "Summoning Magic" then
			equip(sets.midcast.Recast)
	-- Healing Magic
		elseif spell.skill == 'Healing Magic' then
			-- Cure Curaga Cura
			if spell.english:startswith('Cure') then
				equip(sets.midcast.Cure)
			elseif spell.english:startswith("Curaga") then
				equip(sets.midcast.Curaga)
			elseif spell.english:startswith('Cura') then
				equip(sets.midcast.Cura)
			-- Na Spells
			elseif spell.english:wcmatch('Paralyna|Poisona|Blindna|Silena|Cursna|Viruna|Stona') then
				if buffactive['Divine Caress'] then
					equip(sets.midcast.Naspells, sets.precast.JA[spell.name])
				elseif spell.name == 'Cursna' then
					equip(sets.midcast.Cursna)
				else
					equip(sets.midcast.Naspells)
				end
			elseif spell.name == 'Erase' then
				equip(sets.midcast.Erase)
			elseif spell.name == 'Esuna' then
				equip(sets.midcast.Esuna)
			elseif spell.name == 'Sacrifice' then
				equip(sets.midcast.Sacrifice)
			elseif spell.english:startswith('Reraise') or spell.name == 'Arise' then
				equip(sets.midcast.ConserveMP)
			else
				equip(sets.midcast.Recast)
			end
	-- Enhancing Magic
		elseif spell.skill == 'Enhancing Magic' then
			if spell.name == 'Phalanx' then
				equip(sets.midcast.Phalanx) 
			elseif spell.english:wcmatch('Regen*') then
				equip(sets.midcast.Regen)
			elseif spell.english:wcmatch('BarStona|BarWatera|BarAera|BarFira|BarBlizzara|BarThundra') then
				equip(sets.midcast.BarElement)
			elseif spell.english:wcmatch('BarSleepra|BarPoisonra|BarParalyna|BarBlindra|BarSilencra|BarVira|BarPetra|BarAmnesra') then
				equip(sets.midcast.BarStatus)
			elseif spell.english:wcmatch('Boost-*') then
				equip(sets.midcast.Boost)
			elseif spell.english:endswith('Spikes') then
				equip(sets.midcast.Spikes)
			elseif spell.name == 'Stoneskin' then
				equip(sets.midcast.Stoneskin)
				if buffactive.Stoneskin then
					windower.ffxi.cancel_buff(36)
				end
			elseif spell.name == 'Blink' then
				equip(sets.midcast.Blink)
			elseif spell.name == 'Aquaveil' then
				equip(sets.midcast.Aquaveil)
			elseif spell.name == 'Haste' then
				equip(sets.midcast.Hastespell)
			elseif spell.english:wcmatch('Protectra*') then
				equip(sets.midcast.ConserveMP)
			elseif spell.english:wcmatch('Shellra*') then
				equip(sets.midcast.ConserveMP)
			elseif spell.english:wcmatch('Reraise*') then
				equip(sets.midcast.ConserveMP)
			else
				equip(sets.midcast.ConserveMP)
			end
	-- Enfeebling Magic
		elseif spell.skill == 'Enfeebling Magic' then
			if spell.english:startswith('Dia') then
				equip(sets.midcast.Dia)
			elseif spell.english:wcmatch('Paralyze*|Slow*|Addle') then
				equip(sets.midcast.enfeebling)
			else
				equip(sets.midcast.Macc)
			end
	-- Divine Magic
		elseif spell.skill == 'Divine Magic' then
			if spell.english:startswith('Banish') then
				equip(sets.midcast.Banish)
			elseif spell.english:startswith('Holy') then
				equip(sets.midcast.Holy)
			elseif spell.name == 'Repose' then
				equip(sets.midcast.Repose)
			elseif spell.name == 'Flash' then
				equip(sets.midcast.Flash)
			end
	-- Dark Magic
		elseif spell.skill == 'Dark Magic' then
			if spell.name == 'Drain' then
				equip(sets.midcast.Drain)
			elseif spell.name == 'Aspir' then
				equip(sets.midcast.Aspir)
			elseif spell.name == 'Stun' then
				equip(sets.midcast.Macc)
			else
				equip(sets.midcast.DarkMagic)
			end
	-- Elemental Magic
		elseif spell.skill == 'Elemental Magic' then
			equip(sets.midcast.Macc)
	-- Ninjutsu
		elseif spell.skill == "Ninjutsu" then
			equip(sets.midcast.Recast)
			if spell.name == 'Utsusemi: Ichi' and ShadowType == 'Ni' then
				if buffactive['Copy Image'] then
					windower.ffxi.cancel_buff(66)
				elseif buffactive['Copy Image (2)'] then
					windower.ffxi.cancel_buff(444)
				elseif buffactive['Copy Image (3)'] then
					windower.ffxi.cancel_buff(445)
				elseif buffactive['Copy Image (4+)'] then
					windower.ffxi.cancel_buff(446)
				end
			end
		elseif spell.name == 'Monomi: Ichi' and buffactive.Sneak and spell.target.type == 'SELF' then
			windower.ffxi.cancel_buff(71)
		end
	end
end 

function pet_aftercast(spell)
	if spell.name == "Fleet Wind" then
		equip({feet="Herald's Gaiters"})
	else
		pet_sets()
	end
end

function aftercast(spell,arg)
	if not midaction() or not pet_midaction() or spell.interrupted then
		if spell.type == "BloodPactRage" or spell.type == "BloodPactWard" then
			return
		end
	-- Autoset
		if pet.isvalid then
			if pet.status == "Engaged" then
				-- equip pet Engaged
				equip(sets.idle.Avatar.Melee)
			else
				pet_sets()
			end
		else	
			if player.status == 'Engaged' then
				if PDT == 1 or MDT == 1 then
					if PDT == 1 and MDT == 0 then
						windower.add_to_chat(121,'PDT Locked')
						equip(sets.idle.PDT)
					elseif MDT == 1 and PDT == 0 then
						windower.add_to_chat(121,'MDT Locked')
						equip(sets.idle.MDT)
					else
						MDT = 0
						PDT = 0
					end
				else
					-- Equip previous TP set 
						previous_set()
				end
			else
				slot_lock()
				if PDT == 1 or buffactive['Weakness'] or player.hpp < 30 then
					equip(sets.idle.PDT)
				elseif MDT == 1 then
					equip(sets.idle.MDT)
				else
					equip(sets.idle.Standard)
				end
			end
		end
		-- Sleep and repose
		if spell.name == "Sleep II" or spell.name == "Repose" then
			windower.send_command('wait 75;input /echo [ WARNING! '..spell.name..' : Will wear off within 0:15 ]')
			windower.send_command('wait 80;input /echo [ WARNING! '..spell.name..' : Will wear off within 0:10 ]')
			windower.send_command('wait 85;input /echo [ WARNING! '..spell.name..' : Will wear off within 0:05 ]')
		elseif spell.name == "Sleep" or spell.name == "Sleepga" then
			windower.send_command('wait 45;input /echo [ WARNING! '..spell.name..' : Will wear off within 0:15 ]')
			windower.send_command('wait 50;input /echo [ WARNING! '..spell.name..' : Will wear off within 0:10 ]')
			windower.send_command('wait 55;input /echo [ WARNING! '..spell.name..' : Will wear off within 0:05 ]')
		end
		-- Convert
		if spell.name == 'Convert' then
			windower.send_command('wait 1.1; input /ma "Cure IV" <me>')
		end
		 -- Changes shadow type variable to allow cancel Copy Image if last cast was Utsusemi: Ni
		if spell and spell.name == 'Utsusemi: Ni' then
			ShadowType = 'Ni'
		elseif spell and spell.name == 'Utsusemi: Ichi' then
			ShadowType = 'Ichi'
		end
	end
end

-- Handles Pets Gearsets
function pet_sets()
	-- Spirits
	if pet.isvalid then
		if string.find(pet.name,'Spirit') then
			equip(sets.idle.Avatar.Spirit)
		else
			-- Avatar's Favor
			if buffactive["Avatar's Favor"] then
				equip(sets.idle.Avatar.Favor)
			else
			-- Avatars
				if S{'Carbuncle','Diabolos','Alexander'}:contains(pet.name) then
					if pet.name == "Alexander" then
						windower.add_to_chat(121, 'Alexander')
						equip(sets.idle.Avatar[pet.name])
					elseif pet.element == world.day_element then
						equip(sets.idle.Avatar[pet.name],sets.perp.Day)
					elseif pet.element == world.weather_element then
						equip(sets.idle.Avatar[pet.name],sets.perp.Weather)
					else
						equip(sets.idle.Avatar[pet.name])
					end
				else
					if pet.element == world.day_element then
						equip(sets.idle.Avatar,sets.perp.Day)
					elseif pet.element == world.weather_element then
						equip(sets.idle.Avatar,sets.perp.Weather)
					else					
						equip(sets.idle.Avatar)
					end
				end
			end
		end
	end
end

-- Handles Melee TP Sets
function previous_set()
	slot_lock()
	if Mode == 0 then
		equip(sets.TP)
		windower.add_to_chat(121,'TP Set')
	elseif Mode == 1 then
		equip(sets.TP.Acc)
		windower.add_to_chat(121,'Acc TP Set')
	end
end

function slot_lock()
    if player.equipment.left_ear == 'Reraise Earring' then
        disable('left_ear')
        windower.add_to_chat(8,'Reraise Earring equiped on left ear')
    elseif player.equipment.right_ear == 'Reraise Earring' then
        disable('right_ear')
        windower.add_to_chat(8,'Reraise Earring equiped on right ear')
    else
        enable('left_ear','right_ear')
    end
end

-- Cast the appopriate storm for the currently summoned avatar, if possible.
function handle_petweather()
    if player.sub_job ~= 'SCH' then
        add_to_chat(122, "You can not cast storm spells")
        return
    end
        
    if not pet.isvalid then
        add_to_chat(122, "You do not have an active avatar.")
        return
    end
    
    local element = pet.element
    if element == 'Thunder' then
        element = 'Lightning'
    end
    
    if S{'Light','Dark','Lightning'}:contains(element) then
        add_to_chat(122, 'You do not have access to '..elements.storm_of[element]..'.')
        return
    end 
    
    local storm = elements.storm_of[element]
    
    if storm then
        send_command('@input /ma "'..elements.storm_of[element]..'" <me>')
    else
        add_to_chat(123, 'Error: Unknown element ('..tostring(element)..')')
    end
end

-- Custom uber-handling of Elemental Siphon
function handle_siphoning()
    if areas.Town:contains(world.zone) then
        add_to_chat(122, 'Cannot use Elemental Siphon in a city area.')
        return
    end

    local siphonElement
    local stormElementToUse
    local releasedAvatar
    local dontRelease
    
    -- If we already have a spirit out, just use that.
    if pet.isvalid and SpiritList:contains(pet.name) then
        siphonElement = pet.element
        dontRelease = true
        -- If current weather doesn't match the spirit, but the spirit matches the day, try to cast the storm.
        if player.sub_job == 'SCH' and pet.element == world.day_element and pet.element ~= world.weather_element then
            if not S{'Light','Dark','Lightning'}:contains(pet.element) then
                stormElementToUse = pet.element
            end
        end
    -- If we're subbing /sch, there are some conditions where we want to make sure specific weather is up.
    -- If current (single) weather is opposed by the current day, we want to change the weather to match
    -- the current day, if possible.
    elseif player.sub_job == 'SCH' and world.weather_element ~= 'None' then
        -- We can override single-intensity weather; leave double weather alone, since even if
        -- it's partially countered by the day, it's not worth changing.
        if get_weather_intensity() == 1 then
            -- If current weather is weak to the current day, it cancels the benefits for
            -- siphon.  Change it to the day's weather if possible (+0 to +20%), or any non-weak
            -- weather if not.
            -- If the current weather matches the current avatar's element (being used to reduce
            -- perpetuation), don't change it; just accept the penalty on Siphon.
            if world.weather_element == elements.weak_to[world.day_element] and
                (not pet.isvalid or world.weather_element ~= pet.element) then
                -- We can't cast lightning/dark/light weather, so use a neutral element
                if S{'Light','Dark','Lightning'}:contains(world.day_element) then
                    stormElementToUse = 'Wind'
                else
                    stormElementToUse = world.day_element
                end
            end
        end
    end
    
    -- If we decided to use a storm, set that as the spirit element to cast.
    if stormElementToUse then
        siphonElement = stormElementToUse
    elseif world.weather_element ~= 'None' and (get_weather_intensity() == 2 or world.weather_element ~= elements.weak_to[world.day_element]) then
        siphonElement = world.weather_element
    else
        siphonElement = world.day_element
    end
    
    local command = ''
    local releaseWait = 0
    
    if pet.isvalid and AvatarList:contains(pet.name) then
        command = command..'input /pet "Release" <me>;wait 1.1;'
        releasedAvatar = pet.name
        releaseWait = 10
    end
    
    if stormElementToUse then
        command = command..'input /ma "'..elements.storm_of[stormElementToUse]..'" <me>;wait 4;'
        releaseWait = releaseWait - 4
    end
    
    if not (pet.isvalid and SpiritList:contains(pet.name)) then
        command = command..'input /ma "'..elements.spirit_of[siphonElement]..'" <me>;wait 4;'
        releaseWait = releaseWait - 4
    end
    
    command = command..'input /ja "Elemental Siphon" <me>;'
    releaseWait = releaseWait - 1
    releaseWait = releaseWait + 0.1
    
    if not dontRelease then
        if releaseWait > 0 then
            command = command..'wait '..tostring(releaseWait)..';'
        else
            command = command..'wait 1.1;'
        end
        
        command = command..'input /pet "Release" <me>;'
    end
    
    if releasedAvatar then
        command = command..'wait 1.1;input /ma "'..releasedAvatar..'" <me>'
    end
    
    send_command(command)
end

-- Function to create custom timers using the Timers addon.  Calculates ward duration
-- based on player skill and base pact duration (defined in job_setup).
function create_pact_timer(spell_name)
    -- Create custom timers for ward pacts.
    if wards.durations[spell_name] then
        local ward_duration = wards.durations[spell_name]
        if ward_duration < 1810 then
            local skill = player.skills.summoning_magic
            if skill > 3000 then
                skill = skill - 3000
                if skill > 2000 then skill = 2000 end
                ward_duration = ward_duration + skill
            end
        end
        
        local timer_cmd = 'timers c "'..spell_name..'" '..tostring(ward_duration)..' down'
        
        if wards.icons[spell_name] then
            timer_cmd = timer_cmd..' '..wards.icons[spell_name]
        end

        send_command(timer_cmd)
    end
end