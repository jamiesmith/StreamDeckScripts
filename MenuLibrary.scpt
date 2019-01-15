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