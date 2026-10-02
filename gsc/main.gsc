main() {
    level waittill("connected", player);
    player thread ascension\core\startup::init_();
    player thread ascension\core\api::init_();
    player thread ascension\core\workers::init_();
    player thread ascension\core\listeners::init_();
}
