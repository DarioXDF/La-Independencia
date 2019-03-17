/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
progress();
if (bought = true) {
	if (timer < 0) {
		loan = obj_gml.coins^lvl;
		obj_gml.coins += round(loan);
		timer = 200;
	} else {
		timer--;
	}
}