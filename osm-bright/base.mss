/* BASE.MSS CONTENTS
 * - Landuse & landcover
 * - Water areas
 * - Water ways
 * - Administrative Boundaries
 *
 */

/*==================================================================*/
/* LANDUSE & LANDCOVER
/*==================================================================*/

@zero:0;
#land-low[zoom>=0][zoom<10],
#land-high[zoom>=10] {
  polygon-fill:@land;
  polygon-gamma:0.75;
}


#landuse_gen0[zoom>3][zoom<=9],
#landuse_gen1[zoom>9][zoom<=12],
#landuse[zoom>12] {
  [type='commercial']    { polygon-fill:@industrial; }
  [type='common']        { polygon-fill:@park; }
  //[building='hospital']      { polygon-fill:@hospital; }
  [type='industrial']    { polygon-fill:@industrial; }
  [type='parking']       { polygon-fill:@parking; }
  [type='residential']   { polygon-fill:@residential; }
  //[building='university']    { building-fill:@school; }
  //[building='public']    { building-fill:@building_public; }
  [type='townhall']   	 { polygon-fill:@building_public; }
  [type='cemetery']      { polygon-fill:@cemetery; }   // #9EA39A
  [type='pedestrian']    { polygon-fill:@pedestrian_fill; }
  [type='grass']         { polygon-fill:@grass; }
  [type='park']          { polygon-fill:@park; }
  [type='golf_course']   { polygon-fill:@sports; }
  [type='sports_center'] { polygon-fill:@sports; }
  [type='pitch']         { polygon-fill:@sports; }
  [type='stadium']       { polygon-fill:@sports; }
  [type='forest']        { polygon-fill:@wooded; }
  [type='wood']          { polygon-fill:@wooded; }
  [type='hospital']      { polygon-fill:@hospital; }
  [type='college']       { polygon-fill:@school; }
  [type='school']        { polygon-fill:@school; }
  [type='university']    { polygon-fill:@school; }
  }
#landuse[zoom>=17] { // $ZPattern>=17
  [type='pedestrian']    { polygon-pattern-file:url(./img/pattern/pedestrian.png); } // http://www.transparenttextures.com/ 
  [type='forest']        { polygon-pattern-file:url(./img/pattern/forest.png); }
  [type='wood']          { polygon-pattern-file:url(./img/pattern/forest.png); }
  [type='grass']         { polygon-pattern-file:url(./img/pattern/grass.png); } // old-map_green2.png); }
  [type='park']          { polygon-pattern-file:url(./img/pattern/park.png); }
  [type='golf_course']   { polygon-pattern-file:url(./img/pattern/grass.png); }
  }
#landuse[zoom=17] { // $ZPattern=17
  [type='cemetery']      { polygon-pattern-file:url(./img/pattern/cemetery_32.png); }
  [type='sports_center'] { polygon-pattern-file:url(./img/pattern/sport_32.png); }
  [type='stadium']       { polygon-pattern-file:url(./img/pattern/sport_32.png); }
  [type='pitch']         { polygon-pattern-file:url(./img/pattern/sport_32.png); } // grass.png); }
  [type='hospital']      { polygon-pattern-file:url(./img/pattern/hospital16_32.png); }
  [type='college']       { polygon-pattern-file:url(./img/pattern/university_32.png); }
  [type='school']        { polygon-pattern-file:url(./img/pattern/school_32.png); } //  url(./img/pattern/maths5_48.png); }
  [type='university']    { polygon-pattern-file:url(./img/pattern/university_32.png); }
  }
#landuse[zoom=18] { // $ZPattern=18
  [type='cemetery']      { polygon-pattern-file:url(./img/pattern/cemetery_48.png); }
  [type='sports_center'] { polygon-pattern-file:url(./img/pattern/sport_48.png); }
  [type='stadium']       { polygon-pattern-file:url(./img/pattern/sport_48.png); }
  [type='pitch']         { polygon-pattern-file:url(./img/pattern/sport_48.png); } // grass.png); }
  [type='hospital']      { polygon-pattern-file:url(./img/pattern/hospital16_48.png); }
  [type='college']       { polygon-pattern-file:url(./img/pattern/university_48.png); }
  [type='school']        { polygon-pattern-file:url(./img/pattern/school_48.png); } //  url(./img/pattern/maths5_48.png); }
  [type='university']    { polygon-pattern-file:url(./img/pattern/university_48.png); }
  }
#landuse[zoom>=19] { // $ZPattern>=19
  [type='cemetery']      { polygon-pattern-file:url(./img/pattern/cemetery_64.png); }
  [type='sports_center'] { polygon-pattern-file:url(./img/pattern/sport_64.png); }
  [type='stadium']       { polygon-pattern-file:url(./img/pattern/sport_64.png); }
  [type='pitch']         { polygon-pattern-file:url(./img/pattern/sport_64.png); }
  [type='hospital']      { polygon-pattern-file:url(./img/pattern/hospital16_64.png); }
  [type='college']       { polygon-pattern-file:url(./img/pattern/university_64.png); }
  [type='school']        { polygon-pattern-file:url(./img/pattern/school_64.png); } //  url(./img/pattern/maths5_48.png); }
  [type='university']    { polygon-pattern-file:url(./img/pattern/university_64.png); }
  }

#landuse_overlays[type='nature_reserve'][zoom>6] {
  line-color:darken(@wooded,25%);
  line-opacity:0.3;
  line-dasharray:1,1;
  polygon-fill:darken(@wooded,25%);
  polygon-opacity:0.1;
  [zoom=7] { line-width:0.4; }
  [zoom=8] { line-width:0.6; }
  [zoom=9] { line-width:0.8; }
  [zoom=10] { line-width:1.0; }
  [zoom=11] { line-width:1.5; }
  [zoom>=12] { line-width:2.0; }
}

#landuse_overlays[type='wetland'][zoom>11] {
  [zoom>12][zoom<=15] // $ZPatternWetland1
  	{ polygon-pattern-file:url(./img/pattern/wetland_32.png); }
  [zoom>15] // $ZPatternWetland2
    { polygon-pattern-file:url(./img/pattern/wetland_32.png);}
  }

/* ---- BUILDINGS ---- */
#buildings[zoom>=16] // $BuildingFillZ16
{ 
    polygon-fill:@building; // *1.01;
  	[type='public'],[amenity='townhall']
    	{ polygon-fill:@building_public; } // *1.02; }
    [type='university'],[type='college'],[type='school'],[amenity='university'],[amenity='college'],[amenity='school']
    	{ polygon-fill:@building_school; } // @school*1.02; }
    [type='hospital'],[amenity='hospital']
    	{ polygon-fill:@building_hospital; } // hospital*1.02; }
     // line-color:darken(@building,5%);
     // line-width:0.2;
  }
/*
  #buildings[zoom=16] {
  line-color:darken(@building,5%);
  }
*/
#buildings[zoom>=17] // $BuildingLineZ17
{
   line-color:darken(@building,20%);
   line-width:0.4;
}
// At the highest zoom levels, render buildings in fancy pseudo-3D.
// Ordering polygons by their Y-position is necessary for this effect
// so we use a separate layer that does this for us.
#buildings[zoom>17] // $Building3D
{
  building-fill:@building;
  [type='hedge']
    { building-fill:@wooded }
//  [type='public'],[amenity='townhall']
//  	{ building-fill:@building_public; }
//  [type='university'],[type='college'],[type='school'],[amenity='university'],[amenity='college'],[amenity='school']
//  	{ building-fill:@building_school; }
//  [type='hospital']
//  	{ building-fill:@building_hospital; }
  building-height:1.3;
}

#buildings[zoom>19] // $Building3D
{
  building-height:1.6;
}

/*
#buildings[zoom>=21] // $Building3D
{
  building-fill:@building;
  [type='hedge']
    { building-fill:@wooded }
  [type='public'],[amenity='townhall']
  	{ building-fill:@building_public; }
  [type='university'],[type='college'],[type='school'],[amenity='university'],[amenity='college'],[amenity='school']
  	{ building-fill:@building_school; }
  [type='hospital']
  	{ building-fill:@building_hospital; }
  building-height:1.5;
}
*/

// Patterns in buildings
#buildings[zoom>=17] { // $ZPattern>=17
  [type='hospital'],[amenity='hospital']   {
  	[zoom=17] // $ZPatternBuilding=17
      {polygon-pattern-file:url(./img/pattern/hospital16_48.png);}
	[zoom=18] // $ZPatternBuilding=18
      {polygon-pattern-file:url(./img/pattern/hospital16_64.png);}
	[zoom>=19] // $ZPatternBuilding>=19
      {polygon-pattern-file:url(./img/pattern/hospital16_128.png);}
  }
}

/*==================================================================*/
/* WATER AREAS
/*==================================================================*/

Map { background-color:@water; }

#water_gen0[zoom>3][zoom<=9],
#water_gen1[zoom>9][zoom<=12],
#water[zoom>12] { polygon-fill:@water; }
#water[zoom>=17] {
  	polygon-pattern-file:url(./img/pattern/water_256.png);
	}

/*==================================================================*/
/* WATER WAYS
/*==================================================================*/

#waterway_low[zoom>=8][zoom<=12] {
  line-color:@water;
  [zoom=8] { line-width:0.1; }
  [zoom=9] { line-width:0.2; }
  [zoom=10]{ line-width:0.4; }
  [zoom=11]{ line-width:0.6; }
  [zoom=12]{ line-width:0.8; }
}

#waterway_med[zoom>=13][zoom<=14] {
  line-color:@water;
  [type='river'],
  [type='canal'] {
    line-cap:round;
    line-join:round;
    [zoom=13]{ line-width:1; }
    [zoom=14]{ line-width:1.5; }
  }
  [type='stream'] {
    [zoom=13]{ line-width:0.2; }
    [zoom=14]{ line-width:0.4; }
  }
}
  
#waterway_high[zoom>=15] {
  line-color:@water;
  [type='river'],
  [type='canal'] {
    line-cap:round;
    line-join:round;
    [zoom=15]{ line-width:2; }
    [zoom=16]{ line-width:3; }
    [zoom=17]{ line-width:4; }
    [zoom=18]{ line-width:5; }
    [zoom>=19]{ line-width:6; }
    // [zoom>19]{ line-width:7; }
  }
  [type='stream'] {
    [zoom=15]{ line-width:0.6; }
    [zoom=16]{ line-width:0.8; }
    [zoom=17]{ line-width:1; }
    [zoom=18]{ line-width:1.5; }
    [zoom>18]{ line-width:2; }
  }
  [type='ditch'],
  [type='drain'] {
    [zoom=15]{ line-width:0.1; }
    [zoom=16]{ line-width:0.3; }
    [zoom=17]{ line-width:0.5; }
    [zoom=18]{ line-width:0.7; }
    [zoom>19]{ line-width:1; }
    //[zoom>19]{ line-width:1.5; }
  }
}

/*==================================================================*/
/* ADMINISTRATIVE BOUNDARIES
/*==================================================================*/


#admin[admin_level='2'][zoom>1] {
  line-color:@admin_2;
  line-width:0.5;
  [zoom=2] { line-opacity:0.25; }
  [zoom=3] { line-opacity:0.3; }
  [zoom=4] { line-opacity:0.4; }
}

/*==================================================================*/
/* BARRIER POINTS
/*==================================================================*/


#barrier_points[zoom>=17][stylegroup='divider'] {
  marker-height:2;
  marker-fill:#c7c7c7;
  marker-line-opacity:0;
  marker-allow-overlap:true;
}

/*==================================================================*/
/* BARRIER LINES
/*==================================================================*/

#barrier_lines[zoom>=17][stylegroup='gate'] {
  line-width:2.5;
  line-color:#aab;
  line-dasharray:3,2;
}

#barrier_lines[zoom>=17][stylegroup='fence'] {
  line-width:1.75;
  line-color:#aab;
  line-dasharray:1,1;
}

#barrier_lines[zoom>=17][stylegroup='hedge'] {
  line-width:3;
  line-color:darken(@park,5%);
}



/* OPEN DATA GRAND NANCY */
/* COMMUNES */

#commune[zoom>=12]{
	line-width:1;
	line-color:@limite_commune;
	line-opacity:0.7; // 0.8;
    line-dasharray:5,8;
	[zoom=13] {
    	line-opacity:0.8;
   	}
	[zoom=14] {
    	line-width:2;
    	line-opacity:0.7;
    	line-dasharray:3,10;
  		}	
 	[zoom=15] {
    	line-width:2.5; 
    	line-opacity:0.7;
    	line-dasharray:3,8;
  		}
	[zoom=16] {
    	line-width:1;
    	line-opacity:0.65;
      	line-dasharray:4,9;
  		}
 	[zoom>16] {
    	line-width:1;
    	line-opacity:0.65;
      	line-dasharray:7,11;
  		}
}


