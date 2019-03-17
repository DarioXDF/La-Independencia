pct = obj_gml.coins/costs;
if(pct < 0.2){
	image_index = 0;
} else {
	if (pct >= 0.2 && pct < 0.4) {
		image_index = 1;
	} else {
		if (pct >= 0.4 && pct < 0.6) {
			image_index = 2;
		} else {
			if (pct >= 0.6 && pct < 0.8) {
				image_index = 3;
			} else {
				if (pct >= 0.8 && pct < 1) {
					image_index = 4;
				} else {
					if (pct >= 1) {
						image_index = 5;
					}
				}
			}
		}
	}
}