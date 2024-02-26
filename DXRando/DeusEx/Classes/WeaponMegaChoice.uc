class WeaponMegaChoice extends Info;

var DXRActorsBase dxrAB;
var #var(PlayerPawn) p;

static function WeaponMegaChoice Create(#var(PlayerPawn) p)
{
    local WeaponMegaChoice megaChoice;

    megaChoice = WeaponMegaChoice(p.Spawn(GetSelfClass(),,GetWeaponConversationName()));
    megaChoice.p = p;

    megaChoice.AddWeaponChoiceTrigger();

    return megaChoice;
}

static function class<Actor> GetSelfClass()
{
    return class'WeaponMegaChoice';
}

static function Name GetWeaponConversationName()
{
    return 'NoConversationName';
}

event PostPostBeginPlay()
{
    Super.PostPostBeginPlay();

    //In case the provided DXRActorsBase is transient (Like DXRFixups)
    if (p==None){
        foreach AllActors(class'#var(PlayerPawn)',p){break;}
    }
    AddWeaponChoiceTrigger();
}

//Borrowed from DXRActorsBase
function Conversation GetConversation(Name conName)
{
    local Conversation c;
    if (p.flagBase.GetBool('LDDPJCIsFemale')) {
        conName = p.flagBase.StringToName("FemJC"$string(conName));
    }
    foreach AllObjects(class'Conversation', c) {
        if( c.conName == conName ) return c;
    }
    return None;
}

function AddWeaponChoiceTrigger()
{
    local Conversation c;
    local ConEventTrigger cet;

    //The idea is that the conversation starts, triggers this class,
    //which goes and generates the weapon choices for the conversation
    c = GetConversation(GetWeaponConversationName());

    cet = new(c) class'ConEventTrigger';
    cet.eventType=ET_Trigger;
    cet.triggerTag = tag;

    cet.nextEvent = c.eventList;
    c.eventList = cet;
}

function Trigger(Actor Other,Pawn Instigator)
{
    GenerateWeaponChoice();
}

function GenerateWeaponChoice();

