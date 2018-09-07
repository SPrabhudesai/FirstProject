//
//  User.swift
//  13hectareFinal
//
//  Created by Deeva Infotech LLP on 10/02/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

//MARK: All Residental Fields
   //1. Residenatl Apartment
public class Residental_Sell_RA{
    var property_masterid:Int
    var sellpricing_expected_price:Int
    var sellproperty_bedrooms:Int
    var sellproperty_bathrooms :Int
    var sellproperty_balconies :Int
    var sellproperty_other_rooms:Int
    var sellfeature_aminities:String
    var sellproperty_superbuiltup_area:Int
    var sellproperty_sareaunit:Int
    var sellproperty_builtup_area:Int
    var sellproperty_builtup_areaunit:Int
    var sellproperty_carpet_area:Int
    var sellproperty_carpet_areaunit:Int
    var sellproperty_property_floor:Int
    var sellproperty_total_floors:Int
    var sellproperty_reserved_parking_none:Int
    var sellproperty_noof_parking:Int
    var sellpricing_transaction_type:String
    var sellpricing_ownership:String
    var sellpricing_availability:Int
    var sellpricing_age_of_property:String
    var sellpricing_possessionby:Int
    var sellpricing_possession_month:Int
    var sellfeature_description:String

init(property_masterid:Int,
     sellpricing_expected_price:Int,
     sellproperty_bedrooms:Int,
     sellproperty_bathrooms :Int,
     sellproperty_balconies :Int,
     sellproperty_other_rooms:Int,
     sellfeature_aminities:String,
     sellproperty_superbuiltup_area:Int,
     sellproperty_sareaunit:Int,
     sellproperty_builtup_area:Int,
     sellproperty_builtup_areaunit:Int,
     sellproperty_carpet_area:Int,
     sellproperty_carpet_areaunit:Int,
     sellproperty_property_floor:Int,
     sellproperty_total_floors:Int,
     sellproperty_reserved_parking_none:Int,
     sellproperty_noof_parking:Int,
     sellpricing_transaction_type:String,
     sellpricing_ownership:String,
     sellpricing_availability:Int,
     sellpricing_age_of_property:String,
     sellpricing_possessionby:Int,sellpricing_possession_month:Int,
     sellfeature_description:String){
    
        self.property_masterid = property_masterid
        self.sellpricing_expected_price = sellpricing_expected_price
        self.sellproperty_bedrooms = sellproperty_bedrooms
        self.sellproperty_bathrooms = sellproperty_bathrooms
        self.sellproperty_balconies = sellproperty_balconies
        self.sellproperty_other_rooms = sellproperty_other_rooms
        self.sellfeature_aminities = sellfeature_aminities
        self.sellproperty_superbuiltup_area = sellproperty_superbuiltup_area
        self.sellproperty_sareaunit = sellproperty_sareaunit
        self.sellproperty_builtup_area = sellproperty_builtup_area
        self.sellproperty_builtup_areaunit = sellproperty_builtup_areaunit
        self.sellproperty_carpet_area = sellproperty_carpet_area
        self.sellproperty_carpet_areaunit = sellproperty_carpet_areaunit
        self.sellproperty_property_floor = sellproperty_property_floor
        self.sellproperty_total_floors = sellproperty_total_floors
        self.sellproperty_reserved_parking_none = sellproperty_reserved_parking_none
        self.sellproperty_noof_parking = sellproperty_noof_parking
        self.sellpricing_transaction_type = sellpricing_transaction_type
        self.sellpricing_ownership = sellpricing_ownership
        self.sellpricing_availability = sellpricing_availability
        self.sellpricing_age_of_property = sellpricing_age_of_property
        self.sellpricing_possessionby = sellpricing_possessionby
        self.sellpricing_possession_month = sellpricing_possession_month
        self.sellfeature_description = sellfeature_description
    }
}
//--------------------------------------------------------------------------------------------------------------------------------
    //2.Independent Builder Floor
public class Residental_Sell_IBF{
   var property_masterid:Int
   var sellpricing_independentbuilderfloor_expected_price:Int
   var sellproperty_independentbuilderfloor_bedrooms:Int
   var sellproperty_independentbuilderfloor_bathrooms:Int
   var sellproperty_independentbuilderfloor_balconies:Int
   var sellproperty_independentbuilderfloor_other_rooms:Int
   var sellfeature_independentbuilderfloor_aminities:Int
   var sellproperty_independentbuilderfloor_superbuiltup_area:Int
   var sellproperty_independentbuilderfloor_sareaunit:Int
   var sellproperty_independentbuilderfloor_builtup_area:Int
   var sellproperty_independentbuilderfloor_builtup_areaunit:Int
   var sellproperty_independentbuilderfloor_carpet_area:Int
   var sellproperty_independentbuilderfloor_carpet_areaunit:Int
   var sellproperty_independentbuilderfloor_property_floor:Int
   var sellproperty_independentbuilderfloor_total_floors:Int
   var sellproperty_independentbuilderfloor_reserved_parking_none:Int
   var sellproperty_independentbuilderfloor_noof_parking:Int
   var sellpricing_independentbuilderfloor_transaction_type:String
   var sellpricing_independentbuilderfloor_ownership:String
   var sellpricing_independentbuilderfloor_availability:Int
   var sellpricing_independentbuilderfloor_age_of_property:String
   var sellpricing_independentbuilderfloor_possessionby:Int8
   var sellpricing_independentbuilderfloor_possession_month:Int
   var sellfeature_independentbuilderfloor_description:String
    
init(property_masterid:Int,
    sellpricing_independentbuilderfloor_expected_price:Int,
    sellproperty_independentbuilderfloor_bedrooms:Int,
    sellproperty_independentbuilderfloor_bathrooms:Int,
    sellproperty_independentbuilderfloor_balconies:Int,
    sellproperty_independentbuilderfloor_other_rooms:Int,
    sellfeature_independentbuilderfloor_aminities:Int,
    sellproperty_independentbuilderfloor_superbuiltup_area:Int,
    sellproperty_independentbuilderfloor_sareaunit:Int,
    sellproperty_independentbuilderfloor_builtup_area:Int,
    sellproperty_independentbuilderfloor_builtup_areaunit:Int,
    sellproperty_independentbuilderfloor_carpet_area:Int,
    sellproperty_independentbuilderfloor_carpet_areaunit:Int,
    sellproperty_independentbuilderfloor_property_floor:Int,
    sellproperty_independentbuilderfloor_total_floors:Int,
    sellproperty_independentbuilderfloor_reserved_parking_none:Int,
    sellproperty_independentbuilderfloor_noof_parking:Int,
    sellpricing_independentbuilderfloor_transaction_type:String,
    sellpricing_independentbuilderfloor_ownership:String,
    sellpricing_independentbuilderfloor_availability:Int,
    sellpricing_independentbuilderfloor_age_of_property:String,
    sellpricing_independentbuilderfloor_possessionby:Int8,
    sellpricing_independentbuilderfloor_possession_month:Int,
    sellfeature_independentbuilderfloor_description:String){
    
    self.property_masterid = property_masterid
    self.sellpricing_independentbuilderfloor_expected_price = sellpricing_independentbuilderfloor_expected_price
    self.sellproperty_independentbuilderfloor_bedrooms = sellproperty_independentbuilderfloor_bedrooms
    self.sellproperty_independentbuilderfloor_bathrooms = sellproperty_independentbuilderfloor_bathrooms
    self.sellproperty_independentbuilderfloor_balconies = sellproperty_independentbuilderfloor_balconies
    self.sellproperty_independentbuilderfloor_other_rooms = sellproperty_independentbuilderfloor_other_rooms
    self.sellfeature_independentbuilderfloor_aminities = sellfeature_independentbuilderfloor_aminities
    self.sellproperty_independentbuilderfloor_superbuiltup_area = sellproperty_independentbuilderfloor_superbuiltup_area
    self.sellproperty_independentbuilderfloor_sareaunit = sellproperty_independentbuilderfloor_sareaunit
    self.sellproperty_independentbuilderfloor_builtup_area = sellproperty_independentbuilderfloor_builtup_area
    self.sellproperty_independentbuilderfloor_builtup_areaunit = sellproperty_independentbuilderfloor_builtup_areaunit
    self.sellproperty_independentbuilderfloor_carpet_area = sellproperty_independentbuilderfloor_carpet_area
    self.sellproperty_independentbuilderfloor_carpet_areaunit = sellproperty_independentbuilderfloor_carpet_areaunit
    self.sellproperty_independentbuilderfloor_property_floor = sellproperty_independentbuilderfloor_property_floor
    self.sellproperty_independentbuilderfloor_total_floors = sellproperty_independentbuilderfloor_total_floors
    self.sellproperty_independentbuilderfloor_reserved_parking_none = sellproperty_independentbuilderfloor_reserved_parking_none
    self.sellproperty_independentbuilderfloor_noof_parking = sellproperty_independentbuilderfloor_noof_parking
    self.sellpricing_independentbuilderfloor_transaction_type = sellpricing_independentbuilderfloor_transaction_type
    self.sellpricing_independentbuilderfloor_ownership = sellpricing_independentbuilderfloor_ownership
    self.sellpricing_independentbuilderfloor_availability = sellpricing_independentbuilderfloor_availability
    self.sellpricing_independentbuilderfloor_age_of_property = sellpricing_independentbuilderfloor_age_of_property
    self.sellpricing_independentbuilderfloor_possessionby = sellpricing_independentbuilderfloor_possessionby
    self.sellpricing_independentbuilderfloor_possession_month = sellpricing_independentbuilderfloor_possession_month
    self.sellfeature_independentbuilderfloor_description = sellfeature_independentbuilderfloor_description
    
    }

}
//--------------------------------------------------------------------------------------------------------------------------------
    //3.Studio Apartment
public class Residental_Sell_SA{
    var property_masterid:Int
    var sellpricing_studioapartment_expected_price:Int
    var sellproperty_studioapartment_bedrooms:Int
    var sellproperty_studioapartment_bathrooms:Int
    var sellproperty_studioapartment_balconies:Int
    var sellproperty_studioapartment_other_rooms:Int
    var sellfeature_studioapartment_aminities:String
    var sellproperty_studioapartment_superbuiltup_area:Int
    var sellproperty_studioapartment_sareaunit:Int
    var sellproperty_studioapartment_builtup_area:Int
    var sellproperty_studioapartment_builtup_areaunit:Int
    var sellproperty_studioapartment_carpet_area:Int
    var sellproperty_studioapartment_carpet_areaunit:Int
    var sellproperty_studioapartment_property_floor:Int
    var sellproperty_studioapartment_total_floors:Int
    var sellproperty_studioapartment_reserved_parking_none:Int
    var sellproperty_studioapartment_noof_parking:Int
    var sellpricing_studioapartment_transaction_type:String
    var sellpricing_studioapartment_ownership:String
    var sellpricing_studioapartment_availability:Int
    var sellpricing_studioapartment_age_of_property:String
    var sellpricing_studioapartment_possessionby:Int
    var sellpricing_studioapartment_possession_month:Int
    var sellfeature_studioapartment_description:String
    
    init(property_masterid:Int,
     sellpricing_studioapartment_expected_price:Int,
     sellproperty_studioapartment_bedrooms:Int,
     sellproperty_studioapartment_bathrooms:Int,
     sellproperty_studioapartment_balconies:Int,
     sellproperty_studioapartment_other_rooms:Int,
     sellfeature_studioapartment_aminities:String,
     sellproperty_studioapartment_superbuiltup_area:Int,
     sellproperty_studioapartment_sareaunit:Int,
     sellproperty_studioapartment_builtup_area:Int,
     sellproperty_studioapartment_builtup_areaunit:Int,
     sellproperty_studioapartment_carpet_area:Int,
     sellproperty_studioapartment_carpet_areaunit:Int,
     sellproperty_studioapartment_property_floor:Int,
     sellproperty_studioapartment_total_floors:Int,
     sellproperty_studioapartment_reserved_parking_none:Int,
     sellproperty_studioapartment_noof_parking:Int,
     sellpricing_studioapartment_transaction_type:String,
     sellpricing_studioapartment_ownership:String,
     sellpricing_studioapartment_availability:Int,
     sellpricing_studioapartment_age_of_property:String,
     sellpricing_studioapartment_possessionby:Int,
     sellpricing_studioapartment_possession_month:Int,
     sellfeature_studioapartment_description:String){
        
        self.property_masterid = property_masterid
        self.sellpricing_studioapartment_expected_price = sellpricing_studioapartment_expected_price
        self.sellproperty_studioapartment_bedrooms = sellproperty_studioapartment_bedrooms
        self.sellproperty_studioapartment_bathrooms = sellproperty_studioapartment_bathrooms
        self.sellproperty_studioapartment_balconies = sellproperty_studioapartment_balconies
        self.sellproperty_studioapartment_other_rooms = sellproperty_studioapartment_other_rooms
        self.sellfeature_studioapartment_aminities = sellfeature_studioapartment_aminities
        self.sellproperty_studioapartment_superbuiltup_area = sellproperty_studioapartment_superbuiltup_area
        self.sellproperty_studioapartment_sareaunit = sellproperty_studioapartment_sareaunit
        self.sellproperty_studioapartment_builtup_area = sellproperty_studioapartment_builtup_area
        self.sellproperty_studioapartment_builtup_areaunit = sellproperty_studioapartment_builtup_areaunit
        self.sellproperty_studioapartment_carpet_area = sellproperty_studioapartment_carpet_area
        self.sellproperty_studioapartment_carpet_areaunit = sellproperty_studioapartment_carpet_areaunit
        self.sellproperty_studioapartment_property_floor = sellproperty_studioapartment_property_floor
        self.sellproperty_studioapartment_total_floors = sellproperty_studioapartment_total_floors
        self.sellproperty_studioapartment_reserved_parking_none = sellproperty_studioapartment_reserved_parking_none
        self.sellproperty_studioapartment_noof_parking = sellproperty_studioapartment_noof_parking
        self.sellpricing_studioapartment_transaction_type = sellpricing_studioapartment_transaction_type
        self.sellpricing_studioapartment_ownership = sellpricing_studioapartment_ownership
        self.sellpricing_studioapartment_availability = sellpricing_studioapartment_availability
        self.sellpricing_studioapartment_age_of_property = sellpricing_studioapartment_age_of_property
        self.sellpricing_studioapartment_possessionby = sellpricing_studioapartment_possessionby
        self.sellpricing_studioapartment_possession_month = sellpricing_studioapartment_possession_month
        self.sellfeature_studioapartment_description = sellfeature_studioapartment_description
        
    }
    
}
 //--------------------------------------------------------------------------------------------------------------------------------
       //4.Serviced Apartment

public class Residental_Sell_SRA{
    var property_masterid:Int
    var sellpricing_servicedapartment_expected_price:Int
    var sellproperty_servicedapartment_bedrooms:Int
    var sellproperty_servicedapartment_bathrooms:Int
    var sellproperty_servicedapartment_balconies:Int
    var sellproperty_servicedapartment_other_rooms:Int
    var sellfeature_servicedapartment_aminities:String
    var sellproperty_servicedapartment_superbuiltup_area:Int
    var sellproperty_servicedapartment_sareaunit:Int
    var sellproperty_servicedapartment_builtup_area:Int
    var sellproperty_servicedapartment_builtup_areaunit:Int
    var sellproperty_servicedapartment_carpet_area:Int
    var sellproperty_servicedapartment_carpet_areaunit:Int
    var sellproperty_servicedapartment_property_floor:Int
    var sellproperty_servicedapartment_total_floors:Int
    var sellproperty_servicedapartment_reserved_parking_none:Int
    var sellproperty_servicedapartment_noof_parking:Int
    var sellpricing_servicedapartment_transaction_type:String
    var sellpricing_servicedapartment_ownership:String
    var sellpricing_servicedapartment_availability:Int
    var sellpricing_servicedapartment_age_of_property:String
    var sellpricing_servicedapartment_possessionby:Int
    var sellpricing_servicedapartment_possession_month:Int
    var sellfeature_servicedapartment_description:String
    
    init(property_masterid:Int ,
     sellpricing_servicedapartment_expected_price:Int,
     sellproperty_servicedapartment_bedrooms:Int,
     sellproperty_servicedapartment_bathrooms:Int,
     sellproperty_servicedapartment_balconies:Int,
     sellproperty_servicedapartment_other_rooms:Int,
     sellfeature_servicedapartment_aminities:String,
     sellproperty_servicedapartment_superbuiltup_area:Int,
     sellproperty_servicedapartment_sareaunit:Int,
     sellproperty_servicedapartment_builtup_area:Int,
     sellproperty_servicedapartment_builtup_areaunit:Int,
     sellproperty_servicedapartment_carpet_area:Int,
     sellproperty_servicedapartment_carpet_areaunit:Int,
     sellproperty_servicedapartment_property_floor:Int,
     sellproperty_servicedapartment_total_floors:Int,
     sellproperty_servicedapartment_reserved_parking_none:Int,
     sellproperty_servicedapartment_noof_parking:Int,
     sellpricing_servicedapartment_transaction_type:String,
     sellpricing_servicedapartment_ownership:String,
     sellpricing_servicedapartment_availability:Int,
     sellpricing_servicedapartment_age_of_property:String,
     sellpricing_servicedapartment_possessionby:Int,
     sellpricing_servicedapartment_possession_month:Int,
     sellfeature_servicedapartment_description:String){
        
        self.property_masterid = property_masterid
        self.sellpricing_servicedapartment_expected_price = sellpricing_servicedapartment_expected_price
        self.sellproperty_servicedapartment_bedrooms = sellproperty_servicedapartment_bedrooms
        self.sellproperty_servicedapartment_bathrooms = sellproperty_servicedapartment_bathrooms
        self.sellproperty_servicedapartment_balconies = sellproperty_servicedapartment_balconies
        self.sellproperty_servicedapartment_other_rooms = sellproperty_servicedapartment_other_rooms
        self.sellfeature_servicedapartment_aminities = sellfeature_servicedapartment_aminities
        self.sellproperty_servicedapartment_superbuiltup_area = sellproperty_servicedapartment_superbuiltup_area
        self.sellproperty_servicedapartment_sareaunit = sellproperty_servicedapartment_sareaunit
        self.sellproperty_servicedapartment_builtup_area = sellproperty_servicedapartment_builtup_area
        self.sellproperty_servicedapartment_builtup_areaunit = sellproperty_servicedapartment_builtup_areaunit
        self.sellproperty_servicedapartment_carpet_area = sellproperty_servicedapartment_carpet_area
        self.sellproperty_servicedapartment_carpet_areaunit = sellproperty_servicedapartment_carpet_areaunit
        self.sellproperty_servicedapartment_property_floor = sellproperty_servicedapartment_property_floor
        self.sellproperty_servicedapartment_total_floors = sellproperty_servicedapartment_total_floors
        self.sellproperty_servicedapartment_reserved_parking_none = sellproperty_servicedapartment_reserved_parking_none
        self.sellproperty_servicedapartment_noof_parking = sellproperty_servicedapartment_noof_parking
        self.sellpricing_servicedapartment_transaction_type = sellpricing_servicedapartment_transaction_type
        self.sellpricing_servicedapartment_ownership = sellpricing_servicedapartment_ownership
        self.sellpricing_servicedapartment_availability = sellpricing_servicedapartment_availability
        self.sellpricing_servicedapartment_age_of_property = sellpricing_servicedapartment_age_of_property
        self.sellpricing_servicedapartment_possessionby = sellpricing_servicedapartment_possessionby
        self.sellpricing_servicedapartment_possession_month = sellpricing_servicedapartment_possession_month
        self.sellfeature_servicedapartment_description = sellfeature_servicedapartment_description
    }

}
//--------------------------------------------------------------------------------------------------------------------------------
        //5 Farmhouse
public class Residental_Sell_FH{
    var property_masterid:Int
    var sellpricing_farmhouse_expected_price:Int
    var sellproperty_farmhouse_bedrooms:Int
    var sellproperty_farmhouse_bathrooms:Int
    var sellproperty_farmhouse_balconies:Int
    var sellproperty_farmhouse_other_rooms:Int
    var sellfeature_farmhouse_aminities:String
    var sellproperty_farmhouse_plot_area:Int
    var sellproperty_farmhouse_pareaunit:Int
    var sellproperty_farmhouse_builtup_area:Int
    var sellproperty_farmhouse_builtup_areaunit:Int
    var sellproperty_farmhouse_carpet_area:Int
    var sellproperty_farmhouse_carpet_areaunit:Int
    var sellproperty_farmhouse_total_floors:Int
    var sellproperty_farmhouse_parking_none:Int
    var sellproperty_farmhouse_noof_parking:Int
    var sellpricing_farmhouse_transaction_type:String
    var sellpricing_farmhouse_ownership:String
    var sellpricing_farmhouse_availability:Int
    var sellpricing_farmhouse_age_of_property:String
    var sellpricing_farmhouse_possessionby:Int
    var sellpricing_farmhouse_possession_month:Int
    var sellfeature_farmhouse_description:String
    
    init( property_masterid:Int,
     sellpricing_farmhouse_expected_price:Int,
     sellproperty_farmhouse_bedrooms:Int,
     sellproperty_farmhouse_bathrooms:Int,
     sellproperty_farmhouse_balconies:Int,
     sellproperty_farmhouse_other_rooms:Int,
     sellfeature_farmhouse_aminities:String,
     sellproperty_farmhouse_plot_area:Int,
     sellproperty_farmhouse_pareaunit:Int,
     sellproperty_farmhouse_builtup_area:Int,
     sellproperty_farmhouse_builtup_areaunit:Int,
     sellproperty_farmhouse_carpet_area:Int,
     sellproperty_farmhouse_carpet_areaunit:Int,
     sellproperty_farmhouse_total_floors:Int,
     sellproperty_farmhouse_parking_none:Int,
     sellproperty_farmhouse_noof_parking:Int,
     sellpricing_farmhouse_transaction_type:String,
     sellpricing_farmhouse_ownership:String,
     sellpricing_farmhouse_availability:Int,
     sellpricing_farmhouse_age_of_property:String,
     sellpricing_farmhouse_possessionby:Int,
     sellpricing_farmhouse_possession_month:Int,
     sellfeature_farmhouse_description:String){
        
         self.property_masterid = property_masterid
         self.sellpricing_farmhouse_expected_price = sellpricing_farmhouse_expected_price
         self.sellproperty_farmhouse_bedrooms = sellproperty_farmhouse_bedrooms
         self.sellproperty_farmhouse_bathrooms = sellproperty_farmhouse_bathrooms
         self.sellproperty_farmhouse_balconies = sellproperty_farmhouse_balconies
         self.sellproperty_farmhouse_other_rooms = sellproperty_farmhouse_other_rooms
         self.sellfeature_farmhouse_aminities = sellfeature_farmhouse_aminities
         self.sellproperty_farmhouse_plot_area = sellproperty_farmhouse_plot_area
         self.sellproperty_farmhouse_pareaunit = sellproperty_farmhouse_pareaunit
         self.sellproperty_farmhouse_builtup_area = sellproperty_farmhouse_builtup_area
         self.sellproperty_farmhouse_builtup_areaunit = sellproperty_farmhouse_builtup_areaunit
         self.sellproperty_farmhouse_carpet_area = sellproperty_farmhouse_carpet_area
         self.sellproperty_farmhouse_carpet_areaunit = sellproperty_farmhouse_carpet_areaunit
         self.sellproperty_farmhouse_total_floors = sellproperty_farmhouse_total_floors
         self.sellproperty_farmhouse_parking_none = sellproperty_farmhouse_parking_none
         self.sellproperty_farmhouse_noof_parking = sellproperty_farmhouse_noof_parking
         self.sellpricing_farmhouse_transaction_type = sellpricing_farmhouse_transaction_type
         self.sellpricing_farmhouse_ownership = sellpricing_farmhouse_ownership
         self.sellpricing_farmhouse_availability = sellpricing_farmhouse_availability
         self.sellpricing_farmhouse_age_of_property = sellpricing_farmhouse_age_of_property
         self.sellpricing_farmhouse_possessionby = sellpricing_farmhouse_possessionby
         self.sellpricing_farmhouse_possession_month =  sellpricing_farmhouse_possession_month
         self.sellfeature_farmhouse_description = sellfeature_farmhouse_description
    }
}
//--------------------------------------------------------------------------------------------------------------------------------
     //6.Independent House

public class Residental_Sell_IH{
    var property_masterid:Int
    var sellpricing_independenthouse_expected_price:Int
    var sellproperty_independenthouse_bedrooms:Int
    var sellproperty_independenthouse_bathrooms:Int
    var sellproperty_independenthouse_balconies:Int
    var sellproperty_independenthouse_other_rooms:Int
    var sellfeature_independenthouse_aminities:String
    var sellproperty_independenthouse_plot_area:Int
    var sellproperty_independenthouse_pareaunit:Int
    var sellproperty_independenthouse_builtup_area:Int
    var sellproperty_independenthouse_builtup_areaunit:Int
    var sellproperty_independenthouse_carpet_area:Int
    var sellproperty_independenthouse_carpet_areaunit:Int
    var sellproperty_independenthouse_total_floors:Int
    var sellproperty_independenthouse_reserved_parking_none:Int
    var sellproperty_independenthouse_noof_parking:Int
    var sellpricing_independenthouse_transaction_type:String
    var sellpricing_independenthouse_ownership:String
    var sellpricing_independenthouse_availability:Int
    var sellpricing_independenthouse_age_of_property:String
    var sellpricing_independenthouse_possessionby:Int
    var sellpricing_independenthouse_possession_month:Int
    var sellfeature_independenthouse_description:String

    init(property_masterid:Int,
     sellpricing_independenthouse_expected_price:Int,
     sellproperty_independenthouse_bedrooms:Int,
     sellproperty_independenthouse_bathrooms:Int,
     sellproperty_independenthouse_balconies:Int,
     sellproperty_independenthouse_other_rooms:Int,
     sellfeature_independenthouse_aminities:String,
     sellproperty_independenthouse_plot_area:Int,
     sellproperty_independenthouse_pareaunit:Int,
     sellproperty_independenthouse_builtup_area:Int,
     sellproperty_independenthouse_builtup_areaunit:Int,
     sellproperty_independenthouse_carpet_area:Int,
     sellproperty_independenthouse_carpet_areaunit:Int,
     sellproperty_independenthouse_total_floors:Int,
     sellproperty_independenthouse_reserved_parking_none:Int,
     sellproperty_independenthouse_noof_parking:Int,
     sellpricing_independenthouse_transaction_type:String,
     sellpricing_independenthouse_ownership:String,
     sellpricing_independenthouse_availability:Int,
     sellpricing_independenthouse_age_of_property:String,
     sellpricing_independenthouse_possessionby:Int,
     sellpricing_independenthouse_possession_month:Int,
     sellfeature_independenthouse_description:String){
        self.property_masterid = property_masterid
        self.sellpricing_independenthouse_expected_price = sellpricing_independenthouse_expected_price
        self.sellproperty_independenthouse_bedrooms = sellproperty_independenthouse_bedrooms
        self.sellproperty_independenthouse_bathrooms = sellproperty_independenthouse_bathrooms
        self.sellproperty_independenthouse_balconies = sellproperty_independenthouse_balconies
        self.sellproperty_independenthouse_other_rooms = sellproperty_independenthouse_other_rooms
        self.sellfeature_independenthouse_aminities = sellfeature_independenthouse_aminities
        self.sellproperty_independenthouse_plot_area = sellproperty_independenthouse_plot_area
        self.sellproperty_independenthouse_pareaunit = sellproperty_independenthouse_pareaunit
        self.sellproperty_independenthouse_builtup_area = sellproperty_independenthouse_builtup_area
        self.sellproperty_independenthouse_builtup_areaunit = sellproperty_independenthouse_builtup_areaunit
        self.sellproperty_independenthouse_carpet_area = sellproperty_independenthouse_carpet_area
        self.sellproperty_independenthouse_carpet_areaunit = sellproperty_independenthouse_carpet_areaunit
        self.sellproperty_independenthouse_total_floors = sellproperty_independenthouse_total_floors
        self.sellproperty_independenthouse_reserved_parking_none = sellproperty_independenthouse_reserved_parking_none
        self.sellproperty_independenthouse_noof_parking = sellproperty_independenthouse_noof_parking
        self.sellpricing_independenthouse_transaction_type = sellpricing_independenthouse_transaction_type
        self.sellpricing_independenthouse_ownership = sellpricing_independenthouse_ownership
        self.sellpricing_independenthouse_availability = sellpricing_independenthouse_availability
        self.sellpricing_independenthouse_age_of_property = sellpricing_independenthouse_age_of_property
        self.sellpricing_independenthouse_possessionby = sellpricing_independenthouse_possessionby
        self.sellpricing_independenthouse_possession_month = sellpricing_independenthouse_possession_month
        self.sellfeature_independenthouse_description = sellfeature_independenthouse_description
        
    }
    
}
