//=============================================================================
// MenuScreenRandoOptionsAudio
//=============================================================================

class MenuScreenRandoOptionsAudio expands MenuScreenRandoOptionsBase;

function CreateChoices()
{
    if(!#defined(revision)) {
        CreateChoice(class'MenuChoice_ContinuousMusic');
        CreateChoice(class'MenuChoice_RandomMusic');
        CreateChoice(class'MenuChoice_ChangeSong');
        //TODO: CreateChoice(class'MenuChoice_AutoChangeSong'); on a timer
        CreateChoice(class'MenuChoice_DisableSong');
        CreateChoice(class'MenuChoice_UTMusic');
        CreateChoice(class'MenuChoice_UnrealMusic');
        CreateChoice(class'MenuChoice_DXMusic');
    }
    if(#defined(injections)){
        CreateChoice(class'MenuChoice_ChargeTimer');
    }
}

defaultproperties
{
    Title="Randomizer Audio"
}
