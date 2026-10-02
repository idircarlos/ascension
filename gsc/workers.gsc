init_() {
    _SetupWorkers();
}

_SetupWorkers() {
    self endon("disconnect");
    for (i = 0; i < 10; i++) {
        setdvar("ascension_gsc_worker_" + i, "");
        self thread _RunWorker(i);         
    }
}

_RunWorker(workerId) {
    self endon("disconnect");
    while (1) {
        request = getdvar("ascension_gsc_worker_" + workerId);
        if (request != "") {
            requestTokens = strTok(request, "::");
            method = requestTokens[1];
            args = strTok(requestTokens[2], ",");
            result = "success";
            switch (method) {
                case "AddPerks":
                    ascension\core\api\perks::AddPerks(args);
                    break;
                case "RemovePerks":
                    ascension\core\api\perks::RemovePerks(args);
                    break;
                case "NumPerks":
                    result = ascension\core\api\perks::NumPerks();
                    break;
                case "StaticBox":
                    if (args.size == 0) {
                        result = ascension\core\api\box::GetStaticBox();
                    } else {
                        ascension\core\api\box::SetStaticBox(args);
                    }
                    break;
                case "PlayEasterEggSong":
                    result = ascension\core\api\music::PlayEasterEggSong();
                    break;
                case "GetRound":
                    result = ascension\core\api\level::GetRound();
                    break;
                case "GiveWeapons":
                    result = ascension\core\api\weapons::GiveWeapons(args);
                    break;
                case "TakeWeapons":
                    result = ascension\core\api\weapons::TakeWeapons();
                    break;
                default:
                    break;
            }
            setdvar("ascension_gsc_worker_" + workerId, "");
            wait 0.2; // Wait a bit for dvar update since its async
            self notify("ascension::Worker" + workerId + "::" + result);
        }
        wait 0.05;
    }
}
