-- Feary's WAR LUA
-- Created: 6/13/2014
-- Last Update: 6/13/2014
-- To Do List
--
--
-- includes
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
	
	-- Get WAR Gearsets
	include('Gearsets/'..player.name..'/WAR_Gearsets.lua')

-- Define Default Values for Variables
	Mode = 0
	PDT = 0
	MDT = 0
	ShadowType = 'None'
	
	GreatAxes = T{'Castigation','Sverga'}
	GreatSwords = T{}
	
end 

function file_unload()
	clear_binds()
end

function self_command(command)
   -- Lock PDT
	if command == 'PDT' then
		if PDT == 1 then
			windower.add_to_chat(121,'PDT Unlocked')
			-- make sure other values are set to default
			PDT = 0
			-- Unlock MDT set and equip Current TP set
			MDT = 0
			-- Place Me in my previous set.
			if player.status == 'Engaged' then
				previous_set()
			else
				equip(sets.idle.Standard)
			end
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
			PDT = 0
		-- Unlock MDT set and equip Current TP set
			MDT = 0
			windower.add_to_chat(121,'MDT Unlocked')
		-- Place Me in my previous set.
			if player.status == 'Engaged' then
				previous_set()
			else
				equip(sets.idle.Standard)
			end
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
		else
			if Mode >= 2 then
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
	elseif command == 'twilight' then
		-- Twilight Helm/Mail logic
		if player.equipment.head == 'Twilight Helm' and player.equipment.body == 'Twilight Mail' then
			enable('head','body')
			if player.status == "Engaged" then
				-- equip appropriate set
				previous_set()
			else
				equip(sets.idle.Standard)
			end
			windower.add_to_chat(121, 'Twilight Unequipped')
		else
			equip({head="Twilight Helm",body="Twilight Mail"})
		end
	end
end

function status_change(new,old)
    if T{'Idle','Resting'}:contains(new) then
		if areas.Town:contains(world.zone) then
			windower.add_to_chat(121, "Town Gear")
			equip(sets.misc.Town)
		else	
			if PDT == 1 then
				if buffactive['Weakness'] or player.hpp < 30 then
					equip(sets.idle.PDT,{head="Twilight Helm",body="Twilight Mail"})
				else
					equip(sets.idle.PDT)
				end
			elseif MDT == 1 then
				equip(sets.idle.MDT)
			elseif new == "Resting" then
				equip(sets.Resting)
			else
				equip(sets.idle.Standard)
			end
		end
	elseif new == 'Engaged' then
 		-- Automatically activate Hasso when engaging
		if player.sub_job["SAM"] and not buffactive['Hasso'] and not buffactive.Amnesia and not buffactive.Obliviscence and	not buffactive.Paralysis and windower.ffxi.get_ability_recasts()[138] < 1 then
			windower.send_command('Hasso')
        end
		-- Engaged Sets
		if PDT == 1 then
			if buffactive['Weakness'] or player.hpp < 30 then
				equip(sets.idle.PDT,{head="Twilight Helm",body="Twilight Mail"})
			else
				equip(sets.idle.PDT)
			end
		elseif MDT == 1 then
			equip(sets.idle.MDT)
		else
			-- Equip apporiate sets
				previous_set()
		end
    end
end

function precast(spell,arg)
    -- Job Abilities
	if spell.type == 'JobAbility' then
		if sets.precast.JA[spell.name] then
			equip(sets.precast.JA[spell.name])
		end
	-- Weaponskills
	elseif spell.type == 'WeaponSkill' then
		if player.status == 'Engaged' then
			if player.tp >= 100 then
				if spell.target.distance <= 5 then
					if buffactive["Mighty Strikes"] then
						if sets.precast.WS.MS[spell.name] then
							equip(sets.precast.WS.MS[spell.name])
						else
							equip(sets.precast.WS.MS)
						end
					else
						if Mode == 1 then
							if sets.precast.WS.Acc[spell.name] then
								equip(sets.precast.WS.Acc[spell.name])
							else
								if sets.precast.WS[spell.name] then
									equip(sets.precast.WS[spell.name])
								else
									equip(sets.precast.WS)
								end
							end
						else
							if sets.precast.WS[spell.name] then
								equip(sets.precast.WS[spell.name])
							else
								equip(sets.precast.WS)
							end
						end
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
	elseif spell.type:endswith('Magic') then
		-- Cancel Sneak
		if spell.name == 'Sneak' and buffactive.Sneak and spell.target.type == 'SELF' then
			windower.ffxi.cancel_buff(71)
			cast_delay(0.3)
		end	
    -- Magic spell gear handling(Precast)
    elseif spell.type == 'Ninjutsu' then
        equip(sets.precast.Fastcast)
        if windower.wc_match(spell.name,'Utsusemi*') then
            equip(sets.precast.Utsusemi)
        end
    else
		-- Special handling to remove Dancer sub job Sneak effect
		if spell.name == 'Spectral Jig' and buffactive.Sneak then
			windower.ffxi.cancel_buff(71)
			cast_delay(0.3)
		elseif windower.wc_match(spell.name,'Curing*') then
			equip(sets.misc.Waltz)
		elseif windower.wc_match(spell.name,'*Step') then
			equip(sets.misc.Steps)
		elseif windower.wc_match(spell.name,'*Flourish') then
			equip(sets.misc.flourish)
		end
    end
end

function midcast(spell,arg)	
	if spell.type == 'Ninjutsu' then
		-- Gear change to Damage Taken set when in midcast of Utsusemi
		-- Special handling to remove Utsusemi, Sneak, and Stoneskin effects if they are active
		if windower.wc_match(spell.name,'Utsusemi*') then
			equip(sets.precast.Utsusemi)
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
		elseif spell.name == 'Monomi: Ichi' or spell.name == 'Sneak' and buffactive.Sneak and spell.target.type == 'SELF' then
			windower.ffxi.cancel_buff(71)
		end
	end
end

function aftercast(spell,arg)
-- Engaged
		if player.status == 'Engaged' then
			if PDT == 1 then
				if buffactive['Weakness'] or player.hpp < 30 then
					equip(sets.idle.PDT,{head="Twilight Helm",body="Twilight Mail"})
				else
					equip(sets.idle.PDT)
				end
			elseif MDT == 1 then
				equip(sets.idle.MDT)
			else
				previous_set()
			end
		else
			if PDT == 1 then
				if buffactive['Weakness'] or player.hpp < 30 then
					equip(sets.idle.PDT,{head="Twilight Helm",body="Twilight Mail"})
				else
					equip(sets.idle.PDT)
				end
			elseif MDT == 1 then
				equip(sets.idle.MDT)
			else
				equip(sets.idle.Standard)
			end
		end
		-- Changes shadow type variable to allow cancel Copy Image if last cast was Utsusemi: Ni
		if spell and spell.name == 'Utsusemi: Ni' then
			ShadowType = 'Ni'
		elseif spell and spell.name == 'Utsusemi: Ichi' then
			ShadowType = 'Ichi'
		end
end

function previous_set()
	slot_lock()
	-- Great Axe
	if GreatAxes:contains(player.equipment.main) then
		if Mode == 1 then
			if buffactive.Ionis and areas.Adoulin:contains(world.area) then
				equip(sets.TP.GA.Acc.Ionis)
			--windower.add_to_chat(121,'Ionis buffed')
			else
				equip(sets.TP.GA.Acc)
			end
		elseif Mode == 2 then
			equip(sets.TP.Hybrid)
		else
			if buffactive.Ionis and areas.Adoulin:contains(world.area) then
				equip(sets.TP.GA.Ionis)
			--windower.add_to_chat(121,'Ionis buffed')
			else
				equip(sets.TP.GA)
			end
		end
	elseif GreatSwords:contains(player.equipment.main) then
		if Mode == 1 then
			equip(sets.TP.GS.Acc)
		elseif Mode == 2 then
			equip(sets.TP.Hybrid)
		else
			equip(sets.TP.GS)
		end
	else
		if Mode == 1 then
			equip(sets.TP.Acc)
		elseif Mode == 2 then
			equip(sets.TP.Hybrid)
		else
			equip(sets.TP)
		end
	end
end

function slot_lock()
    -- Twilight Helm/Mail logic
    if player.equipment.head == 'Twilight Helm' and player.equipment.body == 'Twilight Mail' then
        disable('head','body')
    else
        enable('head','body')
    end
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