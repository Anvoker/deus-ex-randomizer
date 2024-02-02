class EndgameQuoteManager extends Info transient;

struct EndQuote
{
    var string quote;
    var string attribution;
};

var EndQuote quotes[130];
var int numQuotes;

//For now, this is limited to the default UnrealScript limit of 256 characters in a string
function AddQuote(string quote, string attribution)
{
    quotes[numQuotes].quote = quote;
    quotes[numQuotes].attribution = "    -- "$attribution;
    numQuotes++;
}

function LoadQuotes()
{
    //Original Endgame Quotes
    //AddQuote("YESTERDAY WE OBEYED KINGS AND BENT OUR NECKS BEFORE EMPERORS.  BUT TODAY WE KNEEL ONLY TO TRUTH...","KAHLIL GIBRAN");
    //AddQuote("IF THERE WERE NO GOD, IT WOULD BE NECESSARY TO INVENT HIM.","VOLTAIRE");
    //AddQuote("BETTER TO REIGN IN HELL, THAN SERVE IN HEAVEN.","PARADISE LOST, JOHN MILTON");

    //DX Quotes
    AddQuote("A BOMB!","JC DENTON");
    AddQuote("OH MY GOD! JC! A BOMB!","JOCK");
    AddQuote("I SPILL MY DRINK!","IVAN");
    AddQuote("THANKS FOR GETTING ME IN!","TESSA");
    AddQuote("WHAT A SHAME...","JC DENTON");
    AddQuote("YOU CAN'T FIGHT IDEAS WITH BULLETS.","LEO GOLD");
    AddQuote("WHAT AN EXPENSIVE MISTAKE YOU TURNED OUT TO BE.","WALTON SIMONS");
    AddQuote("JUMP! YOU CAN MAKE IT!","BOB PAGE");
    AddQuote("THE MORE POWER YOU THINK YOU HAVE, THE MORE QUICKLY IT SLIPS FROM YOUR GRASP.","TRACER TONG");
    AddQuote("I NEVER HAD TIME TO TAKE THE OATH OF SERVICE TO THE COALITION. HOW ABOUT THIS ONE? I SWEAR NOT TO REST UNTIL UNATCO IS FREE OF YOU AND THE OTHER CROOKED BUREAUCRATS WHO HAVE PERVERTED ITS MISSION.","JC DENTON");
    AddQuote("WE ARE THE INVISIBLE HAND. WE ARE THE ILLUMINATI. WE COME BEFORE AND AFTER. WE ARE FOREVER. AND EVENTUALLY... EVENTUALLY WE WILL LEAD THEM INTO THE DAY.","MORGAN EVERETT");
    AddQuote("THE NEED TO BE OBSERVED AND UNDERSTOOD WAS ONCE SATISFIED BY GOD. NOW WE CAN IMPLEMENT THE SAME FUNCTIONALITY WITH DATA-MINING ALGORITHMS.","MORPHEUS");
    AddQuote("I ORDER YOU TO STAND IN THE SPOTLIGHT AND GROWL AT THE WOMEN LIKE A DOG WHO NEEDS A MASTER.","DOOR GIRL");
    AddQuote("I WANTED ORANGE. IT GAVE ME LEMON-LIME.","GUNTHER HERMANN");
    AddQuote("THE SUB-BAY DOORS ARE CLOSED.  YOU NEED TO OPEN THEM.","GARY SAVAGE");

    //Why not some Zero Wing?
    AddQuote("SOMEBODY SET UP US THE BOMB.","MECHANIC");
    AddQuote("ALL YOUR BASE ARE BELONG TO US.","CATS");
    AddQuote("YOU HAVE NO CHANCE TO SURVIVE MAKE YOUR TIME.","CATS");

    //A bit of Zelda perhaps?
    AddQuote("AND THE MASTER SWORD SLEEPS AGAIN... FOREVER!","A LINK TO THE PAST");
    AddQuote("IT'S A SECRET TO EVERYBODY","MOBLIN");
    AddQuote("AH, THE SCROLL OF SHURMAK, BEARER OF SAD NEWS THESE MANY YEARS AGO.","GASPRA");
    AddQuote("SHADOW AND LIGHT ARE TWO SIDES OF THE SAME COIN, ONE CANNOT EXIST WITHOUT THE OTHER.","PRINCESS ZELDA");
    AddQuote("A SWORD WIELDS NO STRENGTH UNLESS THE HAND THAT HOLDS IT HAS COURAGE","THE HERO'S SHADE");
    AddQuote("THE WIND... IT IS BLOWING...","GANONDORF");
    AddQuote("DO NOT THINK IT ENDS HERE... THE HISTORY OF LIGHT AND SHADOW WILL BE WRITTEN IN BLOOD!","GANONDORF");
    AddQuote("YOUR COURAGE AND STRENGTH WILL NOT BE FORGOTTEN. FOR NOW, YOUR WORK IS DONE. OFF YOU GO TO CELEBRATE LINK'S RETURN. BUT FIRST, REMEMBER, LESSONS OF THE HEART, MERCY, AND HUMAN KINDNESS PREVAIL ABOVE ALL ELSE.","GASPRA");
    AddQuote("LAMP OIL? ROPE? BOMBS? YOU WANT IT? IT'S YOURS MY FRIEND, AS LONG AS YOU HAVE ENOUGH RUBIES!","MORSHU");
    AddQuote("TINGLE, TINGLE! KOOLOO-LIMPAH! ...THESE ARE THE MAGIC WORDS THAT TINGLE CREATED HIMSELF. DON'T STEAL THEM!","TINGLE");
    AddQuote("PAY NO ATTENTION TO THE AVERAGE MIDDLE-AGED MAN STANDING BY THIS SIGN. LEAVE HIM ALONE!","SIGN");
    AddQuote("I'M KIKI THE MONKEY KI KI! I LOVE RUPEES MORE THAN ANYTHING.  CAN YOU SPARE ME 10 RUPEES?","KIKI THE MONKEY");

    //Some Plumber Talk
    AddQuote("THANK YOU MARIO! BUT OUR PRINCESS IS IN ANOTHER CASTLE!","TOAD");
    AddQuote("THANK YOU SO MUCH FOR PLAYING MY GAME!","MARIO");
    AddQuote("DEAR PESKY PLUMBERS, THE KOOPALINGS AND I HAVE TAKEN OVER THE MUSHROOM KINGDOM! THE PRINCESS IS NOW A PERMANENT GUEST AT ONE OF MY SEVEN KOOPA HOTELS. I DARE YOU TO FIND HER IF YOU CAN!","BOWSER");

    //A bit of this and that
    AddQuote("UNFORTUNATELY, KLLING IS ONE OF THOSE THINGS THAT GETS EASIER THE MORE YOU DO IT.","SOLID SNAKE");
    AddQuote("WHAT IS A MAN? A MISERABLE LITTLE PILE OF SECRETS!","DRACULA");
    AddQuote("THE RIGHT MAN IN THE WRONG PLACE CAN MAKE ALL THE DIFFERENCE IN THE WORLD","G-MAN");
    AddQuote("HACK THE PLANET!","HACKERS");
    AddQuote("I NEVER ASKED FOR THIS","ADAM JENSEN");
    AddQuote("BRING ME A BUCKET, AND I'LL SHOW YOU A BUCKET!","PSYCHO");
    AddQuote("DO A BARREL ROLL!","PEPPY HARE");
    AddQuote("WAR.  WAR NEVER CHANGES.","RON PERLMAN");
    AddQuote("PRAISE THE SUN!","SOLAIRE OF ASTORA");
    AddQuote("STUPID BANJO AND DUMB KAZOOIE. I'LL BE BACK IN BANJO-TOOIE!","GRUNTILDA");
    AddQuote("IF HISTORY IS TO CHANGE, LET IT CHANGE.  IF THE WORLD IS TO BE DESTROYED, SO BE IT.  IF MY FATE IS TO DIE, I MUST SIMPLY LAUGH","MAGUS");
    AddQuote("DO NOT HATE HUMANS. IF YOU CANNOT LIVE WITH THEM, THEN AT LEAST DO THEM NO HARM, FOR THEIRS IS ALREADY A HARD LOT","LISA");
    AddQuote("UH, BOYS? HOW ABOUT THAT EVAC? COMMANDER? JIM? WHAT THE HELL IS GOING ON UP THERE??","SARAH KERRIGAN");
    AddQuote("LOOK AT YOU, HACKER: A PATHETIC CREATURE OF MEAT AND BONE, PANTING AND SWEATING AS YOU RUN THROUGH MY CORRIDORS.  HOW CAN YOU CHALLENGE A PERFECT, IMMORTAL MACHINE?","SHODAN");
    AddQuote("NANOMACHINES, SON.","SENATOR ARMSTRONG");
    AddQuote("THIS WAS A TRIUMPH. I'M MAKING A NOTE HERE: HUGE SUCCESS","GLADOS");
    AddQuote("NEVER GONNA GIVE YOU UP, NEVER GONNA LET YOU DOWN. NEVER GONNA RUN AROUND AND DESERT YOU. NEVER GONNA MAKE YOU CRY. NEVER GONNA SAY GOODBYE. NEVER GONNA TELL A LIE AND HURT YOU","RICK ASTLEY");
    AddQuote("IF THE ZOO BANS ME FOR HOLLERING AT THE ANIMALS I WILL FACE GOD AND WALK BACKWARDS INTO HELL","DRIL");
    AddQuote("NANITES! COURTESY OF RAY PALMER!", "OLIVER QUEEN");
    AddQuote("SAY 'FUZZY PICKLES!'","PHOTOGRAPHER"); //Earthbound
    AddQuote("SPANKETY SPANKETY SPANKETY!","POKEY");//Earthbound
    AddQuote("I KNOW WHAT YOU'RE THINKING... ALL THIS POWER, AND LOOKS TOO!","BOWSER"); //Super Mario RPG
    AddQuote("I USED TO BE AN ADVENTURER LIKE YOU.  THEN I TOOK AN ARROW IN THE KNEE...","WHITERUN GUARD"); //Skyrim
    AddQuote("THAT WAS TOO CLOSE...  YOU WERE ALMOST A JILL SANDWICH","BARRY BURTON"); //Resident Evil
    AddQuote("YOU HAVE DIED OF DYSENTERY","THE OREGON TRAIL");
    AddQuote("LEEEEROOOYYYYYYYYY JEEEENNNKKKIIINNNNNNSSSSS","LEEROY JENKINS");
    AddQuote("A WINNER IS YOU","PRO WRESTLING"); //Pro Wrestling for NES
    AddQuote("ALL WE HAD TO DO, WAS FOLLOW THE DAMN TRAIN, CJ","BIG SMOKE"); //GTA San Andreas
    AddQuote("WE BROKE IT. YES, WE WERE NAUGHTY. COMPLETELY NAUGHTY. SO, SO VERY SORRY. BUT JUST BETWEEN YOU AND US, IT FELT QUITE GOOD","THE KING OF ALL COSMOS"); //Katamari
    AddQuote("IT IS NOT YOUR FAULT. IT IS OUR FAULT FOR BELIEVING IN YOU.","THE KING OF ALL COSMOS"); //Katamari
    AddQuote("MY BODY IS READY","REGGIE FILS-AIME");
    AddQuote("I'VE SEEN THINGS YOU PEOPLE WOULDN'T BELIEVE... ATTACK SHIPS ON FIRE OFF THE SHOULDER OF ORION... I WATCHED C-BEAMS GLITTER IN THE DARK NEAR THE TANNHAUSER GATE. ALL THOSE MOMENTS WILL BE LOST IN TIME, LIKE TEARS IN RAIN... TIME TO DIE.","ROY BATTY"); //Bladerunner
    AddQuote("ENOUGH! OPEN UP YOUR EYES AND LOOK AT THE BIG PICTURE; YOU'RE ALL PUPPETS OF CORRUPT POLITICIANS AND CAPITALISTS. DON'T YOU UNDERSTAND, IT'S UTTERLY POINTLESS TO FIGHT EACH OTHER.","COLONEL SHIKISHIMA"); //Akira
    AddQuote("THE LAST METROID IS IN CAPTIVITY. THE GALAXY IS AT PEACE…","SUPER METROID");
    AddQuote("YOU ARE FACED WITH OVERWHELMING POWER. ACCEPT YOUR HELPLESSNESS.","RAVEN BEAK");

    //T7G / T11H Quotes... trying to avoid spoilers...
    AddQuote("OLD MAN STAUF BUILT A HOUSE AND FILLED IT WITH HIS TOYS", "HENRY STAUF");
    AddQuote("MY, ISN'T THIS A CHEERY PLACE?", "MARTINE BURDEN");
    AddQuote("AT LEAST HE LEFT HIS *REGRETS*", "HAMILTON TEMPLE");
    AddQuote("YOU ARE A GLUTTON FOR PUNISHMENT", "HENRY STAUF");
    AddQuote("WANT A BALLOON, SONNY?", "CLOWN");
    AddQuote("FEELING LONELY?", "HENRY STAUF");
    AddQuote("ARRRRRR! DON'T THINK YOU'LL BE SO LUCKY NEXT TIME.", "HENRY STAUF");
    AddQuote("OH, I'M DYING TO SEE WHAT YOU DO NEXT...", "HENRY STAUF");
    AddQuote("SO... YOU LIVE TO PLAY ANOTHER DAY... <SIGHS>.", "HENRY STAUF");
    AddQuote("HENRY STAUF GREW WEALTHY, BUT THEN THIS STRANGE VIRUS CAME...", "THE 7TH GUEST NARRATOR");
    AddQuote("I THINK THAT WE WERE MEANT TO EAT THE SOUP.", "EDWARD KNOX");
    AddQuote("CHUCK HIM INTO THE SOUP", "SOUP");
    AddQuote("YEAH, IT'S BLOOD.", "CHIEF JIM MARTIN");

    //Final Fantasy 4
    AddQuote("YOU SPOONY BARD!","TELLAH");
    AddQuote("I WILL NEVER DIE...AS LONG AS THERE IS DARKNESS IN THE HEARTS OF MEN!","ZEROMUS");
    AddQuote("I RESPECT MEN LIKE YOU. MEN WITH COURAGE. BUT YOU ARE A SLAVE TO YOUR EMOTIONS, AND SO, WILL NEVER KNOW TRUE STRENGTH. SUCH IS THE CURSE OF MEN.","RUBICANTE");
    AddQuote("HA HA HA! THAT IS ALL THE POWER YOU POSSESS? A PITY. YOUR EYES SHOULD STILL BE FREE. OPEN THEM, AND GAZE UPON TRUE TERROR!","GOLBEZ");

    //Final Fantasy 6
    AddQuote("LIFE... DREAMS... HOPE... WHERE DO THEY COME FROM? AND WHERE DO THEY GO...? SUCH MEANINGLESS THINGS... I'LL DESTROY THEM ALL!","KEFKA PALAZZO");
    AddQuote("UWEE HEE HEE! DON'T TEASE THE OCTOPUS, KIDS!","ULTROS");
    AddQuote("MY LIFE IS A CHIP IN YOUR PILE. ANTE UP!","SETZER GABBIANI");
    AddQuote("WHAT FUN IS DESTRUCTION IF NO PRECIOUS LIVES ARE LOST?","KEFKA PALAZZO");
    AddQuote("SON OF A SUBMARINER!  THEY'LL PAY FOR THIS...","KEFKA PALAZZO");
    AddQuote("THE END COMES... BEYOND CHAOS","KEFKA PALAZZO");
    AddQuote("I AM A TREASURE HUNTER, NOT A THIEF!","LOCKE COLE");
    AddQuote("IF IT'S HEADS, YOU WIN..... WE'LL CHOOSE WHATEVER PATH WE WANT, WITHOUT ANY REGRETS....","EDGAR RONI FIGARO");
    AddQuote("YOU THINK A MINOR THING LIKE THE END OF THE WORLD WAS GONNA DO ME IN?","SABIN RENE FIGARO");
    AddQuote("YOU JUST HAVE TO SHOW TECHNOLOGY WHO'S BOSS!","CYAN GARAMONDE");
    AddQuote("ALL OF YOU HAVE THAT SPARKLE IN YOUR EYES… WELL, THIS OLD MAN'S NOT GIVING UP, EITHER!","STRAGO MAGUS");

    //Final Fantasy 7
    AddQuote("I'VE BEEN HERE SINCE THE BEGINNING AND I STILL DON'T KNOW WHAT THE HELL'S GOIN' ON!","BARRET WALLACE");
    AddQuote("OUT OF MY WAY. I'M GOING TO SEE MY MOTHER.","SEPHIROTH");
    AddQuote("WHAT MAY BE A FEW TO YOU WAS EVERYTHING TO THOSE WHO DIED...","CAIT SITH");

    //Vampire: The Masquerade - Bloodlines
    AddQuote("DON'T OPEN IT","A FRIEND");
    AddQuote("EVERY TIME I YANK A JAWBONE FROM A SKULL AND RAM IT INTO AN EYESOCKET, I KNOW I'M BUILDING A BETTER FUTURE","SMILING JACK");
    AddQuote("DO I POGO STICK THROUGH YOUR MIND WEARING NOTHING BUT A SMILE?","JEANETTE");
    AddQuote("BY THE CLACK-SMACK CRACKING OF MY THUMBS, SOMETHING WICKED THIS WAY COMES","GARY GOLDEN");
    AddQuote("KEEP YOUR FRIENDS CLOSE AND YOUR ENEMIES IN A BARBECUE PIT","NINES RODRIGUEZ");
    AddQuote("IT'S NOT THAT I DON'T LOVE WALKING INTO THE HEART OF DANGER TO CURRY FAVOR WITH THE LOCAL MAGISTRATE OF THE HOUR, BUT... ACTUALLY, THAT'S EXACTLY IT","BECKETT");
    AddQuote("INDIVIDUALISM IS A PATH FRAUGHT WITH OBSTACLES, AND SOMETIMES ANGRY MOBS, BUT FOR ALL ITS HARDSHIPS IT IS THE ONLY ONE WORTH TAKING","BECKETT");
    AddQuote("EACH MINOR PROBLEM LIKE A GRAIN OF SAND, EACH NIGHT I INHERIT THE DESERT","SEBASTIAN LACROIX");
    AddQuote("A TRUE MASTER HAS PLAYED THE ENTIRE GAME BEFORE THE FIRST MOVE","A FRIEND");
    AddQuote("WHETHER OR NOT YOU WIN THE GAME, MATTERS NOT. IT'S IF YOU BOUGHT IT.","ROSA");
    AddQuote("BEWARE THE PROTECTION OF WOLVES","SMILING JACK");

    //Max Payne
    AddQuote("THEY WERE ALL DEAD. THE FINAL GUNSHOT WAS AN EXCLAMATION MARK TO EVERYTHING THAT HAD LED TO THIS POINT. I RELEASED MY FINGER FROM THE TRIGGER. AND THEN IT WAS OVER.","MAX PAYNE");
    AddQuote("I DON'T KNOW ABOUT ANGELS, BUT IT'S FEAR THAT GIVES MEN WINGS.","MAX PAYNE");
    AddQuote("I WAS IN A GRAPHIC NOVEL. FUNNY AS HELL, IT WAS THE MOST HORRIBLE THING I COULD THINK OF.","MAX PAYNE");
    AddQuote("THROW THE RULES OUT THE WINDOW, ODDS ARE YOU'LL GO THAT WAY TOO.","MAX PAYNE");
 
    //Resident Evil 4
    AddQuote("PFFT...WHERE'S EVERYONE GOING? BINGO?","LEON KENNEDY");
    AddQuote("HEY, IT'S THAT DOG.","LEON KENNEDY");
    AddQuote("YOU MAY BE ABLE TO PROLONG YOUR LIFE, BUT IT'S NOT LIKE YOU CAN ESCAPE YOUR INEVITABLE DEATH, IS IT?","JACK KRAUSER");

    //Barkley Shut Up and Jam: Gaiden
    AddQuote("IF YOU CAN'T SLAM WITH THE BEST, THEN JAM WITH THE REST.","CHARLES BARKLEY");
    AddQuote("I BELIEVE GHOSTS ARE LIKE DOGS AND THEY JUST SORT OF DO THINGS ARBITRARILY.","CHARLES BARKLEY");
    AddQuote("THE YEAR IS 2053. BASKETBALL IS DEAD.","CHARLES BARKLEY");
    //AddQuote("JORDAN, YOU MOTHERFUCKING BAKA, YOU SICK MOTHERFUCKING GODDAMN BAKA!","CHARLES BARKLEY"); //Swearing?
    AddQuote("CHAOS DUUUUUUUUUUUUNNK!","CHARLES BARKLEY");
    AddQuote("THERE ARE TWO THINGS A DUERGAR CAN'T RESIST, BARKLEY. ONE IS RUBIES. THE OTHER IS A DUNKAROO.","CYBERDWARF");
    AddQuote("THE PORTAL IS CLOSING. THIS IS THE LAST WE'LL SEE OF THE B-BALL DIMENSION FOR A LONG TIME…","CYBERDWARF");
    AddQuote("I CONTROL THE POWERS OF SHIMMERGLOBE, B-BALL OF THE ANCIENT PROTO-DWARFS AND THE HELL B-BALL, FORGED ON THE ANVIL OF JAMICITE. I NOW HAVE THE POWER TO SHOOT A THREE POINTER FROM 30 YARDS AWAY.","CHARLES BARKLEY");
    AddQuote("THIS MEETING BETWEEN YOU AND I IS THE CULMINATION OF THOUSANDS OF YEARS OF B-BALL. THIS IS B-BALL IN ALL ITS GLORY, THIS IS THE FINAL GAME! IT'S JUST YOU AND ME, BARKLEY. NO REFS. NO WHISTLES. NO RULES. JUST YOU, ME, AND SWEET GEORGIA BROWN.","MICHAEL JORDAN");
    AddQuote("I AM THE BEGINNING AND THE END. THE ALPHA AND THE OMEGA. THE FIRST AND THE LAST.","CHARLES BARKLEY");

    log("EndgameQuoteManager loaded "$numQuotes$" endgame quotes");
}

function PickRandomQuote(out string quote, out string attrib)
{
    local DXRando dxr;
    local EndQuote q;

    foreach AllActors(class'DXRando',dxr) break;

    if(dxr != None) {
        q = quotes[dxr.rng(numQuotes)];
        quote = q.quote;
        attrib = q.attribution;
        return;
    }

    q = quotes[Rand(numQuotes)];
    quote = q.quote;
    attrib = q.attribution;
}
