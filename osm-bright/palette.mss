/* ****************************************************************** */
/* OSM BRIGHT for Imposm                                              */
/* ****************************************************************** */

/* For basic style customization you can simply edit the colors and
 * fonts defined in this file. For more detailed / advanced
 * adjustments explore the other files.
 *
 * GENERAL NOTES
 *
 * There is a slight performance cost in rendering line-caps.  An
 * effort has been made to restrict line-cap definitions to styles
 * where the results will be visible (lines at least 2 pixels thick).
 */

/*==================================================================*/
/* FONTS
/*==================================================================*/

/* directory to load fonts from in addition to the system directories */
Map {
  font-directory:url(./fonts);
}

/* set up font sets for various weights and styles */
@sans_lt:           "Open Sans Regular","DejaVu Sans Book","unifont Medium";
@sans_lt_italic:    "Open Sans Italic","DejaVu Sans Italic","unifont Medium";
@sans:              "Open Sans Semibold","DejaVu Sans Book","unifont Medium";
@sans_italic:       "Open Sans Semibold Italic","DejaVu Sans Italic","unifont Medium";
@sans_bold:         "Open Sans Bold","DejaVu Sans Bold","unifont Medium";
@sans_bold_italic:  "Open Sans Bold Italic","DejaVu Sans Bold Italic","unifont Medium";

/* Some fonts are larger or smaller than others. Use this variable to
   globally increase or decrease the font sizes. */
/* Note this is only implemented for certain things so far */
@text_adjust:0;

/*==================================================================*/
/* LANDUSE & LANDCOVER COLORS
/*==================================================================*/


@land_osmbright:        #FCFBE7;
@water_osmbright:       #C4DFF6;
@grass_osmbright:       #E6F2C1;
@beach_osmbright:       #FFEEC7;
@park_osmbright:        #DAF2C1;
@cemetery_osmbright:    #D6DED2; // pattern:#9EA39A
@wooded_osmbright:      #C3D9AD;

@agriculture_osmbright:  #F2E8B6;
@building_osmbright:     #E4E0E0;
@hospital_osmbright:     #E5C6C3; // pattern:#B59D9A
@school_osmbright:       #ffdebf; // pattern:#BBA38D
@sports_osmbright:       #B8E6B8; // pattern:#83A383
@parking_osmbright:      #E0E0E0;

@land:        @land_osmbright; // darken(@land_osmbright, 2%);
@water:       darken(@water_osmbright, 1%);
@grass:       @grass_osmbright;
@beach:       @beach_osmbright;
@park:        @park_osmbright;
@cemetery:    @cemetery_osmbright;
@wooded:      @wooded_osmbright;
@agriculture:@agriculture_osmbright;

@building:    @building_osmbright; // * 1.01;
@building_public:#D4D0EF * 1.02;
@hospital:    @hospital_osmbright;
@building_hospital:lighten(@hospital,8%);
@school:      @school_osmbright;
@building_school:lighten(@school,5%);
@sports:      @sports_osmbright;

@residential:darken(@land, 3%); // #FCFBE7; // @land * 0.99;
@industrial:  darken(@land, 6%); // @land * 0.95;
@commercial:  darken(@land, 8%); // @land * 0.97;

@parking:     @parking_osmbright;


/*==================================================================*/
/* ROAD COLORS
/*==================================================================*/

/* For each class of road there are three color variables:
 * - line:for lower zoomlevels when the road is represented by a
 *         single solid line.
 * - case:for higher zoomlevels, this color is for the road's
 *         casing (outline).
 * - fill:for higher zoomlevels, this color is for the road's
 *         inner fill (inline).
 */

@motorway_line_osmbright:#E65C5C;
@trunk_line_osmbright:  #E68A5C;
@primary_line_osmbright:#FFC859;
@secondary_line_osmbright:#FFE870;
  
@motorway_line:@motorway_line_osmbright;
@motorway_fill:lighten(@motorway_line,10%);
@motorway_case:@motorway_line * 0.9;

@trunk_line:  @trunk_line_osmbright;
@trunk_fill:  lighten(@trunk_line,10%);
@trunk_case:  @trunk_line * 0.9;

@primary_line:darken(@primary_line_osmbright, 2%);
@primary_fill:lighten(@primary_line,10%);
@primary_case:@primary_line * 0.85; // @primary_line * 0.9;

@secondary_line:darken(@secondary_line_osmbright,2%);
@secondary_fill:lighten(@secondary_line,10%);
@secondary_case:@secondary_line * 0.85; //  @secondary_line * 0.9;

@standard_line:@land * 0.77; //  @land * 0.85;
@standard_fill:#fff;
@standard_case:@land * 0.85; // @land * 0.9;

@pedestrian_line:@standard_line;
@pedestrian_fill:#F9F9F5; // #FAFADB
@pedestrian_case:@land;

@cycle_line:  @standard_line;
@cycle_fill:  #FAFAF5;
@cycle_case:  @land;

@rail_line:   #aaa;
@rail_line_dash:   #999;
@rail_fill:   #fff;
@rail_case:   @land;
@rail_tram:   #A99;

@aeroway:     #ddd;

/*==================================================================*/
/* BOUNDARY COLORS
/*==================================================================*/

@admin_2:     #324;
@limite_commune:#E79FC0;

/*==================================================================*/
/* LABEL COLORS
/*==================================================================*/

/* We set up a default halo color for places so you can edit them all
   at once or override each individually. */
@place_halo:  fadeout(#fff,34%);

@country_text:#324;
@country_halo:@place_halo;

@state_text:  #435;
@state_halo:  @place_halo;

@city_text:   #777;
@city_halo:   @place_halo;

@town_text:   #777;
@town_halo:   @place_halo;

@poi_text:    #555;

@road_text:   #555;
@road_halo:   #eee;

@other_text:  #555;
@other_halo:  @place_halo;

@locality_text:#777;
@locality_halo:@land;

/* Also used for other small places:hamlets, suburbs, localities */
@village_text:#999;
@village_halo:@place_halo;

@default_text:#666;
/* ****************************************************************** */

// G-Ny Adds
@housenumber_halo:@place_halo;
@housenumber_text:#7a5537;


/* ****************************************************************** */

