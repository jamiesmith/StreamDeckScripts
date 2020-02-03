-- put this in ~/Library/Script\ Libraries/

-- put this in ~/Library/Script\ Libraries/

on menuItemClick({appName, menuName1, menuItem1})
	
	tell application "System Events"
		tell application process appName
			if menu item menuItem1 of menu 1 of menu bar item menuName1 of menu bar 1 exists then
				set frontmost to true
				click menu item menuItem1 of menu 1 of menu bar item menuName1 of menu bar 1
				-- keystroke tab using {command down}
			else
				return false
			end if
		end tell
	end tell
end menuItemClick

on menuItemClickToggle({appName, menuName1, menuItemA, menuItemB})
	tell application "System Events"
		tell application process appName
			if menu item menuItemA of menu 1 of menu bar item menuName1 of menu bar 1 exists then
				set frontmost to true
				click menu item menuItemA of menu 1 of menu bar item menuName1 of menu bar 1
				-- keystroke tab using {command down}
			else
				if menu item menuItemB of menu 1 of menu bar item menuName1 of menu bar 1 exists then
					set frontmost to true
					click menu item menuItemB of menu 1 of menu bar item menuName1 of menu bar 1
					-- keystroke tab using {command down}
				end if
			end if
		end tell
	end tell
end menuItemClickToggle

on menu_click(mList)
	local appName, topMenu, r
	
	-- Validate our input
	if mList's length < 3 then error "Menu list is not long enough"
	
	-- Set these variables for clarity and brevity later on
	set {appName, topMenu} to (items 1 through 2 of mList)
	tell application appName to activate
	
	set r to (items 3 through (mList's length) of mList)
	
	-- This overly-long line calls the menu_recurse function with
	-- two arguments: r, and a reference to the top-level menu
	tell application "System Events" to my menu_click_recurse(r, ((process appName)'s ¬
		(menu bar 1)'s (menu bar item topMenu)'s (menu topMenu)))
end menu_click

on menu_click_recurse(mList, parentObject)
	local f, r
	
	-- `f` = first item, `r` = rest of items
	set f to item 1 of mList
	if mList's length > 1 then set r to (items 2 through (mList's length) of mList)
	
	-- either actually click the menu item, or recurse again
	tell application "System Events"
		if mList's length is 1 then
			click parentObject's menu item f
		else
			my menu_click_recurse(r, (parentObject's (menu item f)'s (menu f)))
		end if
	end tell
end menu_click_recurse

menu_click({"Mail", "Message", "Flag", "Purple"})