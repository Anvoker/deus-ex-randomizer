class AugmentationManager merges AugmentationManager;
// merges because the game validates the superclass

function DeactivateAll()
{
    local Augmentation anAug;

    anAug = FirstAug;
    while(anAug != None)
    {
        if (anAug.bIsActive && anAug.GetEnergyRate() > 0 && !anAug.bAutomatic && !anAug.bAlwaysActive)
            anAug.Deactivate();
        anAug = anAug.next;
    }
}

function ActivateAllAutoAugs()
{
    local Augmentation anAug;

    if (player != None)
    {
        for(anAug = FirstAug; anAug != None; anAug = anAug.next)
        {
            if (anAug.bAutomatic)
                anAug.Activate();
        }
    }
}

simulated function int NumAugsActive()
{
    local Augmentation anAug;
    local int count;

    if (player == None)
        return 0;

    count = 0;
    for(anAug = FirstAug; anAug != None; anAug = anAug.next)
    {
        if (anAug.bHasIt && anAug.bIsActive && !anAug.bAlwaysActive) {
            if(anAug.bAutomatic && !anAug.IsTicked()) {
                continue;
            }
            count++;
        }
    }

    return count;
}

function Augmentation GetAugByKey(int keyNum)
{
    local Augmentation anAug;

    if ((keyNum < 0) || (keyNum > 9))
        return None;

    anAug = FirstAug;
    while(anAug != None)
    {
        if ((anAug.HotKeyNum - 3 == keyNum) && (anAug.bHasIt))
            return anAug;

        anAug = anAug.next;
    }

    return None;
}

simulated function Augmentation GetAug(class<Augmentation> AugClass)
{
    local Augmentation anAug;

    anAug = FirstAug;
    while(anAug != None)
    {
        if (anAug.Class == augClass)
            return anAug;
        anAug = anAug.next;
    }

    return None;
}

// ----------------------------------------------------------------------
// GetAugLevelValue()
//
// takes a class instead of being called by actual augmentation, modified for automatic augs
// ----------------------------------------------------------------------

simulated function float GetAugLevelValue(class<Augmentation> AugClass)
{
    local Augmentation anAug;
    local float retval;

    retval = 0;

    anAug = FirstAug;
    while(anAug != None)
    {
        if (anAug.Class == augClass)
        {
            if (anAug.bHasIt && anAug.bIsActive) {
                anAug.TickUse();
                if(Player.Energy <= 0 && anAug.bAutomatic) {
                    return -1.0;
                } else {
                    return anAug.LevelValues[anAug.CurrentLevel];
                }
            }
            else
                return -1.0;
        }

        anAug = anAug.next;
    }

    return -1.0;
}


// GetClassLevel DXRando: just squish the AugMuscle levels, this function is only used for AugMuscle, AugSpeed, and in multiplayer AugRadarTrans
simulated function int GetClassLevel(class<Augmentation> augClass)
{
    local Augmentation anAug;

    anAug = FirstAug;
    while(anAug != None)
    {
        if (anAug.Class == augClass)
        {
            if (anAug.bHasIt && anAug.bIsActive)
            {
                // we squished the AugMuscle levels to make it more useful, and some things use the level instead of the strength
                if(AugMuscle(anAug) != None)
                    return anAug.CurrentLevel * 3;// aug levels start with 0
                return anAug.CurrentLevel;
            }
            else
                return -1;
        }

        anAug = anAug.next;
    }

    return -1;
}


// ----------------------------------------------------------------------
// CalcEnergyUse()
//
// Calculates energy use for all active augmentations, modified for automatic power recirc
// ----------------------------------------------------------------------

simulated function Float CalcEnergyUse(float deltaTime)
{
    local float f, energyUse, boostedEnergyUse, energyMult, boostMult;
    local Augmentation anAug;

    boostedEnergyUse = 0;
    energyUse = 0;
    energyMult = 1.0;
    boostMult = 1.0;

    Player.AmbientSound = None;

    anAug = FirstAug;
    while(anAug != None)
    {
        if (AugPower(anAug) != None && anAug.bHasIt && anAug.bIsActive)
            energyMult = anAug.LevelValues[anAug.CurrentLevel];
        if (AugHeartLung(anAug) != None && anAug.bHasIt && anAug.bIsActive)
            boostMult = anAug.LevelValues[anAug.CurrentLevel];

        if (anAug.bHasIt && anAug.bIsActive)
        {
            f = ((anAug.GetEnergyRate()/60) * deltaTime);
            if(anAug.bBoosted) {
                boostedEnergyUse += f;
            } else {
                energyUse += f;
            }

            if ((anAug.bAutomatic == false && anAug.bAlwaysActive == false) || f > 0.0) {
                Player.AmbientSound = anAug.LoopSound;
            }
        }
        anAug = anAug.next;
    }

    // check for synthetic heart
    energyUse += boostedEnergyUse * boostMult;

    // check for the power augmentation
    energyUse *= energyMult;

    return energyUse;
}

function BoostAugs(bool bBoostEnabled, Augmentation augBoosting)
{
    local Augmentation anAug;

    for(anAug = FirstAug; anAug != None; anAug = anAug.next)
    {
        // Don't boost the augmentation causing the boosting!
        if (anAug == augBoosting) continue;

        // DXRando: don't boost free augs because (0 * synth_heart_strength) == 0
        if (bBoostEnabled && anAug.energyRate > 0)
        {
            if (anAug.bIsActive && !anAug.bBoosted && (anAug.CurrentLevel < anAug.MaxLevel))
            {
                anAug.CurrentLevel++;
                anAug.bBoosted = True;
                anAug.Reset();
            }
        }
        else if (anAug.bBoosted)
        {
            anAug.CurrentLevel--;
            anAug.bBoosted = False;
            anAug.Reset();
        }
    }
}
