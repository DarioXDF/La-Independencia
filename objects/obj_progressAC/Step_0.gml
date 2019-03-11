/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
pctPB = obj_buttonAC.timer/200;
if(pctPB < 0/11){
	image_index = 10;
} else {
	if (pctPB >= 1/11 && pctPB < 2/11) {
		image_index = 9;
	} else {
		if (pctPB >= 2/11 && pctPB < 3/11) {
			image_index = 8;
		} else {
			if (pctPB >= 4/11 && pctPB < 5/11) {
				image_index = 7;
			} else {
				if (pctPB >= 5/11 && pctPB < 6/11) {
					image_index = 6;
				} else {
					if (pctPB >= 6/11 && pctPB < 7/11) {
						image_index = 5;
					} else {	
						if (pctPB >= 7/11 && pctPB < 8/11) {
							image_index = 4;
						} else {
							if (pctPB >= 8/11 && pctPB < 9/11) {
								image_index = 3;
							} else {
								if (pctPB >= 9/11 && pctPB < 10/11) {
									image_index = 2;
								} else {
									if (pctPB >= 10/11 && pctPB < 11/11) {
										image_index = 1;
									} else {
										if (pctPB >= 11/11) {
											image_index = 0;
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
}