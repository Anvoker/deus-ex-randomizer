class BalanceAugSpeed injects AugSpeed;

state Active
{
Begin:
    // DXRando: instantly use 1 energy to prevent abuse
    Player.Energy -= 1;
    if(Player.Energy <= 0) {
        Player.Energy = 0;
        Deactivate();
    } else {
        Player.GroundSpeed *= LevelValues[CurrentLevel];
        Player.JumpZ *= LevelValues[CurrentLevel];
        if ( Level.NetMode != NM_Standalone )
        {
            if ( Human(Player) != None )
                Human(Player).UpdateAnimRate( LevelValues[CurrentLevel] );
        }
    }
}

//original went from 1.2 up to 1.8, I've thought about nerfing the max speed so you can't just run past all enemies, but I think that would require an unreasonably large nerf
//original EnergyRate is 40, might nerf it if people use it too much?
defaultproperties
{
    EnergyRate=40
    Description="Ionic polymeric gel myofibrils are woven into the leg muscles, increasing the speed at which an agent can run and climb, the height they can jump, and reducing the damage they receive from falls.|n|nTECH ONE: Speed and jumping are increased slightly, while falling damage is reduced.|n|nTECH TWO: Speed and jumping are increased moderately, while falling damage is further reduced.|n|nTECH THREE: Speed and jumping are increased significantly, while falling damage is substantially reduced.|n|nTECH FOUR: An agent can run like the wind and leap from the tallest building."
    LevelValues(0)=1.2
    LevelValues(1)=1.35
    LevelValues(2)=1.5
    LevelValues(3)=1.7
}
