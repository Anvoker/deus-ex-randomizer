class DXREnemiesShuffle extends DXREnemiesBase abstract;

function SwapItems(Pawn a, Pawn b)
{
    local Inventory item, newa[64], newb[64];
    local int i, numa, numb;

    for(item=a.Inventory; item != None; item=item.Inventory) {
        if(Weapon(item) == None && Ammo(item) == None) {
            if(item.Owner == a)
                a.DeleteInventory(item);
            newb[numb++] = item;
        }
    }
    for(item=b.Inventory; item != None; item=item.Inventory) {
        if(Weapon(item) == None && Ammo(item) == None) {
            if(item.Owner == b)
                b.DeleteInventory(item);
            newa[numa++] = item;
        }
    }

    for(i=0; i<numa; i++) {
        item = GiveExistingItem(a, newa[i]);
        if(Robot(a) != None)
            ThrowItem(item, 0.1);
    }
    for(i=0; i<numb; i++) {
        item = GiveExistingItem(b, newb[i]);
        if(Robot(b) != None)
            ThrowItem(item, 0.1);
    }
}

function SwapScriptedPawns(int percent, bool enemies)
{
    local ScriptedPawn temp[512];
    local ScriptedPawn a;
    local name exceptTag;
    local int num, i, slot;

    SetSeed( "SwapScriptedPawns" );
    num=0;
    if(dxr.localURL ~= "14_OCEANLAB_SILO") {
        exceptTag = 'Doberman';
    }
    foreach AllActors(class'ScriptedPawn', a )
    {
        if( a.bHidden || a.bStatic ) continue;
        if( a.bImportant ) continue;
        if( IsCritter(a) ) continue;
        if( IsInitialEnemy(a) != enemies ) continue;
        if( !chance_single(percent) ) continue;
        if( a.Region.Zone.bWaterZone || a.Region.Zone.bPainZone ) continue;
        if( exceptTag != '' && a.Tag == exceptTag ) continue;
        if( class'DXRMissions'.static.IsCloseToStart(dxr, a.Location) ) continue;
#ifdef gmdx
        if( SpiderBot2(a) != None && SpiderBot2(a).bUpsideDown ) continue;
#endif
        temp[num++] = a;
    }

    l("SwapScriptedPawns num: "$num);
    for(i=0; i<num; i++) {
        slot=rng(num);// -1 because we skip ourself, but +1 for vanilla
        if(slot==0) {
            l("not swapping "$ActorToString(temp[i]));
            continue;
        }
        slot--;
        if(slot >= i) slot++;

        if( !Swap(temp[i], temp[slot], true) ) {
            l("SwapScriptedPawns failed swapping "$i@ActorToString(temp[i])$" with "$slot@ActorToString(temp[slot]));
            continue;
        }

        l("SwapScriptedPawns swapping "$i@ActorToString(temp[i])$" with "$slot@ActorToString(temp[slot]));

        // TODO: swap non-weapons/ammo inventory, only need to swap nanokeys?
        SwapItems(temp[i], temp[slot]);
        if( temp[i].Tag != 'enemy_bot' && temp[slot].Tag != 'enemy_bot' ) // 12_VANDENBERG_CMD fix, see Mission12.uc https://discord.com/channels/823629359931195394/823629360929046530/974454774034497567
            SwapNames(temp[i].Tag, temp[slot].Tag);
        SwapNames(temp[i].Event, temp[slot].Event);
        SwapNames(temp[i].AlarmTag, temp[slot].AlarmTag);
        SwapNames(temp[i].SharedAlarmTag, temp[slot].SharedAlarmTag);
        SwapNames(temp[i].HomeTag, temp[slot].HomeTag);
        SwapVector(temp[i].HomeLoc, temp[slot].HomeLoc);
        SwapVector(temp[i].HomeRot, temp[slot].HomeRot);
        SwapProperty(temp[i], temp[slot], "HomeExtent");
        SwapProperty(temp[i], temp[slot], "bUseHome");
        SwapNames(temp[i].Orders, temp[slot].Orders);
        SwapNames(temp[i].OrderTag, temp[slot].OrderTag);
        SwapProperty(temp[i], temp[slot], "RaiseAlarm");

        ResetOrders(temp[i]);
        ResetOrders(temp[slot]);
    }
}
