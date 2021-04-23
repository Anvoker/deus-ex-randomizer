class DXRNetworkTerminal injects NetworkTerminal;

var ComputerScreenKnownAccounts winKnownAccounts;
var ShadowWindow               winKnownShadow;

function ConfigurationChanged()
{
	local float hackAccountsWidth, hackAccountsHeight;
	local float hackWidth, hackHeight;

    Super.ConfigurationChanged();
    
	if (winHack != None)
	{
		winHack.QueryPreferredSize(hackWidth, hackHeight);
	}
    
	if (winKnownAccounts != None)
	{
		winKnownAccounts.QueryPreferredSize(hackAccountsWidth, hackAccountsHeight);
		winKnownAccounts.ConfigureChild(
			width - hackAccountsWidth, hackHeight + 20, 
			hackAccountsWidth, hackAccountsHeight);

		// Place shadow
		winKnownShadow.ConfigureChild(
			width - hackAccountsWidth + winKnownAccounts.backgroundPosX - shadowOffsetX, 
			hackHeight + 20 + winKnownAccounts.backgroundPosY - shadowOffsetY, 
			winKnownAccounts.backgroundWidth + (shadowOffsetX * 2), 
			winKnownAccounts.backgroundHeight + (shadowOffsetY * 2));
	}
       
}

function LogInAs(String user, String pass)
{
    local ComputerScreenLogin login;
    if (winComputer.IsA('ComputerScreenLogin'))
    {
        login = ComputerScreenLogin(winComputer);
		login.editUserName.SetText(user);
		login.editPassword.SetText(pass);
        login.ProcessLogin();
    }
}

function CloseScreen(String action)
{
	if ((action == "LOGIN") && (winKnownAccounts != None))
	{
		CloseKnownAccountsWindow();
	}
    
    Super.CloseScreen(action);
}

function CreateKnownAccountsWindow()
{
    if (Computers(compOwner).HasKnownAccounts()) {
		winKnownShadow = ShadowWindow(NewChild(Class'ShadowWindow'));

		winKnownAccounts = ComputerScreenKnownAccounts(NewChild(Class'ComputerScreenKnownAccounts'));
		winKnownAccounts.SetNetworkTerminal(Self);
		winKnownAccounts.SetCompOwner(compOwner);
		winKnownAccounts.AskParentForReconfigure();   
    }        

}

function CloseKnownAccountsWindow()
{
	if (winKnownAccounts != None)
	{
		winKnownAccounts.Destroy();
		winKnownAccounts = None;

		winKnownShadow.Destroy();
		winKnownShadow = None;
	}
}