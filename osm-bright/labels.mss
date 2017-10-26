/* LABELS.MSS CONTENTS:
 * - place names
 * - area labels
 * - waterway labels 
 */

/* Font sets are defined in palette.mss */

/*==================================================================*/
/* PLACE NAMES
/*==================================================================*/

#place::country[type='country'][zoom>3][zoom<9] {
  text-name:'[name]';
  text-face-name:@sans_bold;
  text-placement:point;
  text-fill:@country_text;
  text-halo-fill:@country_halo;
  text-halo-radius:1;
  [zoom=3] {
    text-size:10 + @text_adjust;
    text-wrap-width:40;
  }
  [zoom=4] {
    text-size:11 + @text_adjust;
    text-wrap-width:50;
  }
  [zoom>4] {
    text-halo-radius:2;
  }
  [zoom=5] {
    text-size:11 + @text_adjust;
    text-wrap-width:50;
    text-line-spacing:1;
  }
  [zoom=6] {
    text-size:12 + @text_adjust;
    text-character-spacing:1;
    text-wrap-width:80;
    text-line-spacing:2;
  }
  [zoom=7] {
    text-size:14 + @text_adjust;
    text-character-spacing:2;
  }
}

#place::state[type='state'][zoom>=5][zoom<=10] {
  text-name:'[name]';
  text-face-name:@sans_bold_italic;
  text-placement:point;
  text-fill:@state_text;
  text-halo-fill:@state_halo;
  text-halo-radius:1;
  [zoom=6] {
    text-size:10 + @text_adjust;
    text-wrap-width:40;
  }
  [zoom=7] {
    text-size:11 + @text_adjust;
    text-wrap-width:50;
  }
  [zoom>8] {
    text-halo-radius:2;
  }
  [zoom=8] {
    text-size:11 + @text_adjust;
    text-wrap-width:50;
    text-line-spacing:1;
  }
  [zoom=9] {
    text-size:12 + @text_adjust;
    text-character-spacing:1;
    text-wrap-width:80;
    text-line-spacing:2;
  }
  [zoom=10] {
    text-size:14 + @text_adjust;
    text-character-spacing:2;
  }
}

/* ---- Cities ------------------------------------------------------ */

#place::city[type='city'][zoom>=8][zoom<=15] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@city_text;
  text-halo-fill:@city_halo;
  text-halo-radius:2;
  [zoom<=8] {
    text-size:10;
    text-halo-radius:1;
  }
  [zoom=9] {
    text-size:11;
    text-wrap-width:60;
  }
  [zoom=10] {
    text-size:11;
    text-wrap-width:70;
  }
  [zoom=11] {
    text-size:12;
    text-character-spacing:1;
    text-wrap-width:80;
  }
  [zoom=12] {
    text-size:13;
    text-character-spacing:1;
    text-wrap-width:100;
  }
  //[zoom>=13]{text-transform:uppercase;}
  [zoom=13] {
    text-size:14;
    text-character-spacing:2;
    text-wrap-width:200;
  }
  [zoom>=14] {
    text-size:16;
    text-character-spacing:4;
    text-wrap-width:300;
  }
}

/* ---- Towns ------------------------------------------------------- */
#place::town[type='village'][zoom>=9][zoom<=17],
#place::town[type='town'][zoom>=9][zoom<=17] {  
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@town_text;
  text-size:9;
  text-halo-fill:@town_halo;
  text-halo-radius:1;
  text-wrap-width:50;
  [zoom>=10] {
    text-halo-radius:2;
    text-size:10;
  }
  [zoom=11] {
    text-size:11;
  }
  [zoom>=12]{
    text-size:12;
    text-line-spacing:1;
  }
  // [zoom>=13]{text-transform:uppercase;}
  [zoom=13]{
    text-size:13;
    text-character-spacing:1;
    text-line-spacing:2;
  }
  [zoom=14]{
    text-size:15;
    text-character-spacing:2;
    text-line-spacing:3;
  }
  [zoom=15]{
    text-size:16;
    text-character-spacing:3;
    text-line-spacing:4;
  }
  [zoom>15]{
    text-size:17;
    text-character-spacing:4;
    text-line-spacing:5;
  }
}

/* ---- Other small places ------------------------------------------ */

// #place::small[type='village'][zoom>=13],
#place::small[type='suburb'][zoom>=13],
#place::small[type='hamlet'][zoom>=13],
#place::small[type='neighbourhood'][zoom>=13] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@other_text;
  text-size:10;
  text-halo-fill:@other_halo;
  text-halo-radius:1;
  text-wrap-width:30;
  [zoom>=14] {
    text-size:11;
    text-character-spacing:1;
    text-wrap-width:40;
    text-line-spacing:1;
  }
  [zoom>=15] {
    text-halo-radius:2;
    //text-transform:uppercase;
    text-character-spacing:1;
    text-wrap-width:60; 
    text-line-spacing:1;
  }
  [zoom>=16] {
    text-size:12;
    text-character-spacing:2;
    text-wrap-width:120;
    text-line-spacing:2;
  } 
  [zoom>=17] {
    text-size:13; 
    text-character-spacing:3;
    text-wrap-width:160;
    text-line-spacing:4;
  }
  [zoom>=18] {
    text-size:15;
    text-character-spacing:4;
    text-line-spacing:6;
  }
}

#place::small[type='locality'][zoom>=15] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@locality_text;
  text-size:11;
  text-halo-fill:@locality_halo;
  text-halo-radius:1;
  text-wrap-width:30;
  [zoom>=16] {
    text-size:12;
    text-wrap-width:60;
    text-line-spacing:1;
  }
  [zoom>=17] {
    text-size:13;
    text-wrap-width:120;
    text-line-spacing:2;
  }
  [zoom>=18] {
    text-size:15;
    text-character-spacing:1;
    text-line-spacing:4;
  }
}


//=====================================================================
// AREA LABELS
//=====================================================================

#area_label {
  // Bring in labels gradually as one zooms in, bases on polygon area
  [zoom>=10][area>102400000],
  [zoom>=11][area>25600000],
  [zoom>=13][area>1600000],
  [zoom>=14][area>320000],
  [zoom>=15][area>80000],
  [zoom>=16][area>20000],
  [zoom>=17][area>5000],
  [zoom>=18][area>=0] {
    text-name:"[name]";
    text-halo-radius:1.5;
    text-face-name:@sans;
    text-size:12;
    text-wrap-width:30;
    text-fill:@default_text; // #888;
    text-halo-fill:#fff;
    // Specific style overrides for different types of areas:
    [type='park'][zoom>=10] {
      text-face-name:@sans_lt_italic;
      text-fill:@park * 0.45;
      text-halo-fill:lighten(@park, 10);
    }
    [type='golf_course'][zoom>=10],
    [type='sports_center'][zoom>=10],
    [type='stadium'][zoom>=10],
    [type='pitch'][zoom>=10]
    {
      text-fill:@sports * 0.45;
      text-halo-fill:lighten(@sports, 10);
    }
    [type='cemetery'][zoom>=10] {
      text-fill:@cemetery * 0.4;
      text-halo-fill:lighten(@cemetery, 10);
    }
    [type='hospital'][zoom>=10] {
      text-fill:@hospital * 0.45;
      text-halo-fill:lighten(@hospital, 10);
    }
    [type='college'][zoom>=10],
    [type='school'][zoom>=10],
    [type='university'][zoom>=10] {
      text-fill:@school * 0.45;
      text-halo-fill:lighten(@school, 10);
    }
    [type='water'][zoom>=10] {
      text-fill:@water * 0.45;
      text-halo-fill:lighten(@water, 10);
    }
  }
  [zoom>=15][area>1600000],
  [zoom>=16][area>80000],
  [zoom>=17][area>20000],
  [zoom>=18][area>5000] {
    text-name:"[name]";
    text-size:14;
    text-wrap-width:50;
    text-character-spacing:1;
    text-halo-radius:2;
  }
  [zoom>=16][area>1600000],
  [zoom>=17][area>80000],
  [zoom>=18][area>20000] {
    text-size:15;
    text-character-spacing:2;
    text-wrap-width:100;
  }
  [zoom>=17][area>1600000],
  [zoom>=18][area>80000] {
    text-size:16;
    text-character-spacing:2.5;
    text-wrap-width:150;
  }
}

#poi[type='university'][zoom>=15],
#poi[type='hospital'][zoom>=16],
#poi[type='school'][zoom>=17],
#poi[type='library'][zoom>=17] {
  text-name:"[name]";
  text-face-name:@sans;
  text-size:12;
  text-wrap-width:30;
  text-fill:@poi_text; 
}

/*==================================================================*/
/* WATERWAY LABELS
/*==================================================================*/
#waterway_label[type='river'][zoom>=13],
#waterway_label[type='canal'][zoom>=15],
#waterway_label[type='stream'][zoom>=17] {
  text-name:'[name]';
  text-face-name:@sans_italic;
  text-fill:@water * 0.55;
  text-halo-fill:fadeout(lighten(@water,5%),25%);
  text-halo-radius:1;
  text-placement:line;
  text-min-distance:400;
  text-size:12;
  [type='river'][zoom>=14],
  [type='canal'][zoom>=16],
  [type='stream'][zoom>=18] {
	  text-size:14;
  }
  [type='river'][zoom>=15],
  [type='canal'][zoom>=17],
  [type='stream'][zoom>=19] {
	  text-size:15;
  }
  [type='river'][zoom>=16],
  [type='canal'][zoom>=18],
  [type='stream'][zoom>=19] {
    text-size:16;
    text-spacing:300;
  }
}

/*==================================================================*/
/* ROAD LABELS
/*==================================================================*/

#motorway_label[zoom>=11][zoom<=14][reflen<=8] {
  shield-name:"[ref]";
  shield-size:10;
  shield-face-name:@sans_bold;
  shield-fill:#fff;
  shield-file:url(img/icon/shield-motorway-1.png);
  [zoom=11] { shield-min-distance:60; } //50
  [zoom=12] { shield-min-distance:80; } //60
  [zoom=13] { shield-min-distance:120; } //120
  [zoom=14] { shield-min-distance:150; }
  [type='motorway'] {
    [reflen=1] { shield-file:url(img/icon/shield-motorway-1.png); }
    [reflen=2] { shield-file:url(img/icon/shield-motorway-2.png); }
    [reflen=3] { shield-file:url(img/icon/shield-motorway-3.png); }
    [reflen=4] { shield-file:url(img/icon/shield-motorway-4.png); }
    [reflen=5] { shield-file:url(img/icon/shield-motorway-5.png); }
    [reflen=6] { shield-file:url(img/icon/shield-motorway-6.png); }
    [reflen=7] { shield-file:url(img/icon/shield-motorway-7.png); }
    [reflen=8] { shield-file:url(img/icon/shield-motorway-8.png); }
  }
  [type='trunk'] {
    [reflen=1] { shield-file:url(img/icon/shield-trunk-1.png); }
    [reflen=2] { shield-file:url(img/icon/shield-trunk-2.png); }
    [reflen=3] { shield-file:url(img/icon/shield-trunk-3.png); }
    [reflen=4] { shield-file:url(img/icon/shield-trunk-4.png); }
    [reflen=5] { shield-file:url(img/icon/shield-trunk-5.png); }
    [reflen=6] { shield-file:url(img/icon/shield-trunk-6.png); }
    [reflen=7] { shield-file:url(img/icon/shield-trunk-7.png); }
    [reflen=8] { shield-file:url(img/icon/shield-trunk-8.png); }
  }
}

#motorway_label[type='motorway'][zoom>=10],
#motorway_label[type='trunk'][zoom>=10] {
  text-name:[name];
  text-face-name:@sans_bold;
  text-placement:line;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance:60;
  text-size:10;
  [zoom=11] { text-min-distance:70; }
  [zoom=12] { text-min-distance:80; }
  [zoom>=13] { text-min-distance:90; }
}
/*
#mainroad_label[type='primary'][zoom>=13],
#mainroad_label[type='secondary'][zoom>=14],
#mainroad_label[type='tertiary'][zoom>=14],
#minorroad_label[zoom>=14] {
  text-name:[name];
  text-face-name:@sans;
  text-placement:line;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance:50;
  text-size:10; 
}
*/
#mainroad_label[zoom>=14],
#minorroad_label[zoom>=14] {
  text-name:[name];
  text-face-name:@sans;
  text-placement:line;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance:50;
  text-size:10; 
}

#mainroad_label[reflen>=1][zoom>=15] {
    text-name:[name] + ' - ' + [ref];
    text-face-name:@sans;
}
#mainroad_label[zoom>=15],
#minorroad_label[zoom>=15] {
 	text-min-distance:90;
  	text-size:11; 	
}

#mainroad_label[zoom>=16],
#minorroad_label[zoom>=16]{
  text-min-distance:150;
  text-size:12;
}

#mainroad_label[zoom>=17],
#minorroad_label[zoom>=17]{
  text-min-distance:200;
  text-size:13;
}

#mainroad_label[zoom>=18],
#minorroad_label[zoom>=18]{
  text-min-distance:250;
  // text-spacing:300;
  text-size:15;
}

#mainroad_label[zoom>=19],
#minorroad_label[zoom>=19]{
  text-size:16;
  text-min-distance:300;
}

/*
#mainroad_label[type='primary'][zoom>=16],
#mainroad_label[type='secondary'][zoom>=16],
#mainroad_label[type='tertiary'][zoom>=16],
#minorroad_label[zoom>=16]{
  text-min-distance:150;
  text-size:12;
}

#mainroad_label[type='primary'][zoom>=17],
#mainroad_label[type='secondary'][zoom>=17],
#mainroad_label[type='tertiary'][zoom>=17],
#minorroad_label[zoom>=17]{
  text-min-distance:200;
  text-size:13;
}

#mainroad_label[type='primary'][zoom>=18],
#mainroad_label[type='secondary'][zoom>=18],
#mainroad_label[type='tertiary'][zoom>=18],
#minorroad_label[zoom>=18]{
  text-size:15;
}

#mainroad_label[type='primary'][zoom>=19],
#mainroad_label[type='secondary'][zoom>=19],
#mainroad_label[type='tertiary'][zoom>=19],
#minorroad_label[zoom>=18]{
  text-size:16;
}
*/
/*
#minorroad_label[zoom>=14] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:line;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance:15;
  text-size:10;
}
#minorroad_label[zoom=15] {
  text-min-distance:140;
  text-size:12;
  }
#minorroad_label[zoom=16] {
  text-min-distance:150;
  text-size:13;
}
#minorroad_label[zoom=17] {
  text-min-distance:160;
  text-size:14;
  }
#minorroad_label[zoom>=18] {
  text-min-distance:170;
  text-size:15;
}
*/

/*==================================================================*/
/* ONE-WAY ARROWS
/*==================================================================*/

#motorway_label[oneway='yes'][zoom>=16],
#mainroad_label[oneway='yes'][zoom>=16],
#minorroad_label[oneway='yes'][zoom>=16] {
  marker-placement:line;
  marker-max-error:0.5;
  marker-spacing:200;
  marker-file:url(./img/icon/oneway.svg);
  [zoom=16] { marker-transform:"scale(0.5)"; }
  [zoom=17] { marker-transform:"scale(0.75)"; }
}
#motorway_label[oneway='-1'][zoom>=16],
#mainroad_label[oneway='-1'][zoom>=16],
#minorroad_label[oneway='-1'][zoom>=16] {
  marker-placement:line;
  marker-max-error:0.5;
  marker-spacing:200;
  marker-file:url(./img/icon/oneway-reverse.svg);
  [zoom=16] { marker-transform:"scale(0.5)"; }
  [zoom=17] { marker-transform:"scale(0.75)"; }
}


/* ****************************************************************** */

// G-Ny Adds

// ---------------------------------------------------------------------

// House numbers
/*

// SOURCE:OpenStreetMap
#housenumbers[zoom>=17] {
::label {
    text-name:'[addr:housenumber]';
    text-face-name:@sans;
    text-size:10; 
    text-placement:interior;
    text-min-distance:1;
    text-wrap-width:0;
    text-halo-fill:@housenumber_halo;
    text-halo-radius:1;
    text-fill:@housenumber_text;
  }
  }
  
#housenumbers[zoom>=19] {
::label {
    	text-size:12;
    	}
   }
*/

// SOURCE:Open Data Grand Nancy
#adresses[zoom>=17]
{
	text-name:'[NUMVOIE]';
    text-face-name:@sans;
    text-size:9;
    text-min-distance:25; // $TSizeVoie10
    // text-placement:interior;
    text-wrap-width:0;
    text-halo-fill:@housenumber_halo;
    text-halo-radius:1;
    text-fill:@housenumber_text;
}
#adresses[zoom=18]
{
  	text-size:11;
  	text-min-distance:10;
   }
#adresses[zoom>=19]
{
    text-size:12; // $TSizeVoie12
  	text-min-distance:1;
   }

/*==================================================================*/
/* POI
/*==================================================================*/
// Hospital
#poi_label[amenity='hospital'][zoom>=15] {
  text-name:"[name]";
  text-fill:@hospital * 0.6;
  text-halo-fill:lighten(@hospital, 10);
  text-face-name:@sans;
  }
#poi_label[zoom=15][amenity='hospital'] {
  text-halo-radius:1.5; 
  text-size:11;
  text-wrap-width:30; 
  }
#poi_label[zoom=16][amenity='hospital'] {
  text-halo-radius:2; 
  text-size:13;
  text-wrap-width:60;
  text-character-spacing:1;
  }
#poi_label[zoom=17][amenity='hospital'] {
  text-halo-radius:2; 
  text-size:14;
  text-wrap-width:120;
  text-character-spacing:2;
  }
#poi_label[zoom>=18][amenity='hospital'] {
  text-halo-radius:2; 
  text-size:15;
  text-wrap-width:180;
  text-character-spacing:3;
  }


/*==================================================================*/
/* LIEUX DITS
/*==================================================================*/
/*
#lieudit {
  [zoom>=16] {
   	text-name:"[NOM]";
    text-face-name:@sans_bold_italic;
  	text-fill:@default_text;
    text-opacity:0.4;
    text-size:10;
    text-character-spacing:1;
    text-allow-overlap:true;
    }
  [zoom=17] {
    text-size:12;
    text-character-spacing:2;
  }
  [zoom>=18] {
    text-size:17;
    text-character-spacing:3;
    }
}
*/

#quartiers_nancy[zoom<19] {
  [zoom>=14] {
   	text-name:"[NOM_QUARTI]";
    text-face-name:@sans_bold_italic;
  	text-fill:@default_text;
    text-opacity:0.5;
    text-size:11;
    text-character-spacing:1;
    text-allow-overlap:true;
    text-wrap-width:120;
    }
  [zoom>=15] {
    text-opacity:0.4;
    text-size:12;
    text-character-spacing:2;
    text-wrap-width:150;
  }
  [zoom>=17] {
    //text-opacity:0.3;
    text-size:20;
    text-character-spacing:3;
    text-wrap-width:200;
    }
}
