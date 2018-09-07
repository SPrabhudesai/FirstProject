//
//  Commerical.swift
//  13hectareFinal
//
//  Created by Deeva Infotech LLP on 24/03/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

    //1.commercial office
public class Commerical_Sell_Offc{
    var property_masterid:Int
    var sellpricing_commercialoffice_expected_price:Int
    var sellpricing_commercialoffice_maintenance:Int
    var sellpricing_commercialoffice_time_period:String
    var sellproperty_commercialoffice_washrooms:Int
    var sellfeature_commercialoffice_aminities:String
    var sellproperty_commercialoffice_builtuparea:Int
    var sellproperty_commercialoffice_builtuparea_unit:Int
    var sellproperty_commercialoffice_carpetarea:Int
    var sellproperty_commercialoffice_carpetarea_unit:Int
    var sellproperty_commercialoffice_plotarea:Int
    var sellproperty_commercialoffice_plotarea_unit:Int
    var sellpricing_commercialoffice_price_persqfeet:Int
    var sellpricing_commercialoffice_transaction_type:String
    var sellpricing_commercialoffice_ownership:String
    var sellpricing_commercialoffice_availability:Int
    var sellpricing_commercialoffice_age_of_property:String
    var sellpricing_commercialoffice_possessionby:Int
    var sellpricing_commercialoffice_possession_month:Int
    var sellfeature_commercialoffice_description:String

    init( property_masterid:Int,
     sellpricing_commercialoffice_expected_price:Int,
     sellpricing_commercialoffice_maintenance:Int,
     sellpricing_commercialoffice_time_period:String,
     sellproperty_commercialoffice_washrooms:Int,
     sellfeature_commercialoffice_aminities:String,
     sellproperty_commercialoffice_builtuparea:Int,
     sellproperty_commercialoffice_builtuparea_unit:Int,
     sellproperty_commercialoffice_carpetarea:Int,
     sellproperty_commercialoffice_carpetarea_unit:Int,
     sellproperty_commercialoffice_plotarea:Int,
     sellproperty_commercialoffice_plotarea_unit:Int,
     sellpricing_commercialoffice_price_persqfeet:Int,
     sellpricing_commercialoffice_transaction_type:String,
     sellpricing_commercialoffice_ownership:String,
     sellpricing_commercialoffice_availability:Int,
     sellpricing_commercialoffice_age_of_property:String,
     sellpricing_commercialoffice_possessionby:Int,
     sellpricing_commercialoffice_possession_month:Int,
     sellfeature_commercialoffice_description:String){
        
        self.property_masterid = property_masterid
        self.sellpricing_commercialoffice_expected_price = sellpricing_commercialoffice_expected_price
        self.sellpricing_commercialoffice_maintenance = sellpricing_commercialoffice_maintenance
        self.sellpricing_commercialoffice_time_period = sellpricing_commercialoffice_time_period
        self.sellproperty_commercialoffice_washrooms = sellproperty_commercialoffice_washrooms
        self.sellfeature_commercialoffice_aminities = sellfeature_commercialoffice_aminities
        self.sellproperty_commercialoffice_builtuparea = sellproperty_commercialoffice_builtuparea
        self.sellproperty_commercialoffice_builtuparea_unit = sellproperty_commercialoffice_builtuparea_unit
        self.sellproperty_commercialoffice_carpetarea = sellproperty_commercialoffice_carpetarea
        self.sellproperty_commercialoffice_carpetarea_unit = sellproperty_commercialoffice_carpetarea_unit
        self.sellproperty_commercialoffice_plotarea = sellproperty_commercialoffice_plotarea
        self.sellproperty_commercialoffice_plotarea_unit = sellproperty_commercialoffice_plotarea_unit
        self.sellpricing_commercialoffice_price_persqfeet = sellpricing_commercialoffice_price_persqfeet
        self.sellpricing_commercialoffice_transaction_type = sellpricing_commercialoffice_transaction_type
        self.sellpricing_commercialoffice_ownership = sellpricing_commercialoffice_ownership
        self.sellpricing_commercialoffice_availability = sellpricing_commercialoffice_availability
        self.sellpricing_commercialoffice_age_of_property = sellpricing_commercialoffice_age_of_property
        self.sellpricing_commercialoffice_possessionby = sellpricing_commercialoffice_possessionby
        self.sellpricing_commercialoffice_possession_month = sellpricing_commercialoffice_possession_month
        self.sellfeature_commercialoffice_description = sellfeature_commercialoffice_description
    }
}
//--------------------------------------------------------------------------------------------------------------------------------
    //2.commercial Shops
public class Commerical_Sell_SH{
    var property_masterid:Int
    var sellpricing_commercialshops_expected_price:Int
    var sellpricing_commercialshops_maintenance:Int
    var sellpricing_commercialshops_time_period:String
    var sellproperty_commercialshops_washrooms:Int
    var sellproperty_commercialshops_balconies:Int
    var sellfeature_commercialshops_aminities:String
    var sellproperty_commercialshops_builtuparea:Int
    var sellproperty_commercialshopd_builtuparea_unit:Int
    var sellproperty_commercialshops_carpetarea:Int
    var sellproperty_commercialshops_carpetarea_unit:Int
    var sellproperty_commercialshops_plotarea:Int
    var sellproperty_commercialshops_plotarea_unit:Int
    var sellpricing_commercialshops_price_persqfeet:Int
    var sellpricing_commercialshops_transaction_type:String
    var sellpricing_commercialshops_ownership:String
    var sellpricing_commercialshops_availability:Int
    var sellpricing_commercialshops_age_of_property:String
    var sellpricing_commercialshops_possessionby:Int
    var sellpricing_commercialshops_possession_month:Int
    var sellfeature_commercialshops_description:String
    
    init(property_masterid:Int,
     sellpricing_commercialshops_expected_price:Int,
     sellpricing_commercialshops_maintenance:Int,
     sellpricing_commercialshops_time_period:String,
     sellproperty_commercialshops_washrooms:Int,
     sellproperty_commercialshops_balconies:Int,
     sellfeature_commercialshops_aminities:String,
     sellproperty_commercialshops_builtuparea:Int,
     sellproperty_commercialshopd_builtuparea_unit:Int,
     sellproperty_commercialshops_carpetarea:Int,
     sellproperty_commercialshops_carpetarea_unit:Int,
     sellproperty_commercialshops_plotarea:Int,
     sellproperty_commercialshops_plotarea_unit:Int,
     sellpricing_commercialshops_price_persqfeet:Int,
     sellpricing_commercialshops_transaction_type:String,
     sellpricing_commercialshops_ownership:String,
     sellpricing_commercialshops_availability:Int,
     sellpricing_commercialshops_age_of_property:String,
     sellpricing_commercialshops_possessionby:Int,
     sellpricing_commercialshops_possession_month:Int,
     sellfeature_commercialshops_description:String){
        
        self.property_masterid = property_masterid
        self.sellpricing_commercialshops_expected_price = sellpricing_commercialshops_expected_price
        self.sellpricing_commercialshops_maintenance = sellpricing_commercialshops_maintenance
        self.sellpricing_commercialshops_time_period = sellpricing_commercialshops_time_period
        self.sellproperty_commercialshops_washrooms = sellproperty_commercialshops_washrooms
        self.sellproperty_commercialshops_balconies = sellproperty_commercialshops_balconies
        self.sellfeature_commercialshops_aminities = sellfeature_commercialshops_aminities
        self.sellproperty_commercialshops_builtuparea = sellproperty_commercialshops_builtuparea
        self.sellproperty_commercialshopd_builtuparea_unit = sellproperty_commercialshopd_builtuparea_unit
        self.sellproperty_commercialshops_carpetarea = sellproperty_commercialshops_carpetarea
        self.sellproperty_commercialshops_carpetarea_unit = sellproperty_commercialshops_carpetarea_unit
        self.sellproperty_commercialshops_plotarea = sellproperty_commercialshops_plotarea
        self.sellproperty_commercialshops_plotarea_unit = sellproperty_commercialshops_plotarea_unit
        self.sellpricing_commercialshops_price_persqfeet = sellpricing_commercialshops_price_persqfeet
        self.sellpricing_commercialshops_transaction_type = sellpricing_commercialshops_transaction_type
        self.sellpricing_commercialshops_ownership = sellpricing_commercialshops_ownership
        self.sellpricing_commercialshops_availability = sellpricing_commercialshops_availability
        self.sellpricing_commercialshops_age_of_property = sellpricing_commercialshops_age_of_property
        self.sellpricing_commercialshops_possessionby = sellpricing_commercialshops_possessionby
        self.sellpricing_commercialshops_possession_month = sellpricing_commercialshops_possession_month
        self.sellfeature_commercialshops_description = sellfeature_commercialshops_description
    }
}
//--------------------------------------------------------------------------------------------------------------------------------
    //3.Commercial showrooms
public class Commerical_Sell_SR{
    var property_masterid:Int
    var sellpricing_commercialshowrooms_expected_price:Int
    var sellpricing_commercialshowrooms_maintenance:Int
    var sellpricing_commercialshowrooms_time_period:String
    var sellproperty_commercialshowrooms_washrooms:Int
    var sellproperty_commercialshowrooms_balconies:Int
    var sellfeature_commercialshowrooms_aminities:String
    var sellproperty_commercialshowrooms_builtuparea:Int
    var sellproperty_commercialshowrooms_builtuparea_unit:Int
    var sellproperty_commercialshowrooms_carpetarea:Int
    var sellproperty_commercialshowrooms_carpetarea_unit:Int
    var sellproperty_commercialshowrooms_plotarea:Int
    var sellproperty_commercialshowrooms_plotarea_unit:Int
    var sellpricing_commercialshowrooms_price_persqfeet:Int
    var sellpricing_commercialshowrooms_transaction_type:String
    var sellpricing_commercialshowrooms_ownership:String
    var sellpricing_commercialshowrooms_availability:Int
    var sellpricing_commercialshowrooms_age_of_property:String
    var sellpricing_commercialshowrooms_possessionby:Int
    var sellpricing_commercialshowrooms_possession_month:Int
    var sellfeature_commercialshowrooms_description:String

    init(property_masterid:Int,
     sellpricing_commercialshowrooms_expected_price:Int,
     sellpricing_commercialshowrooms_maintenance:Int,
     sellpricing_commercialshowrooms_time_period:String,
     sellproperty_commercialshowrooms_washrooms:Int,
     sellproperty_commercialshowrooms_balconies:Int,
     sellfeature_commercialshowrooms_aminities:String,
     sellproperty_commercialshowrooms_builtuparea:Int,
     sellproperty_commercialshowrooms_builtuparea_unit:Int,
     sellproperty_commercialshowrooms_carpetarea:Int,
     sellproperty_commercialshowrooms_carpetarea_unit:Int,
     sellproperty_commercialshowrooms_plotarea:Int,
     sellproperty_commercialshowrooms_plotarea_unit:Int,
     sellpricing_commercialshowrooms_price_persqfeet:Int,
     sellpricing_commercialshowrooms_transaction_type:String,
     sellpricing_commercialshowrooms_ownership:String,
     sellpricing_commercialshowrooms_availability:Int,
     sellpricing_commercialshowrooms_age_of_property:String,
     sellpricing_commercialshowrooms_possessionby:Int,
     sellpricing_commercialshowrooms_possession_month:Int,
     sellfeature_commercialshowrooms_description:String){
       
        
        self.property_masterid = property_masterid
        self.sellpricing_commercialshowrooms_expected_price = sellpricing_commercialshowrooms_expected_price
        self.sellpricing_commercialshowrooms_maintenance = sellpricing_commercialshowrooms_maintenance
        self.sellpricing_commercialshowrooms_time_period = sellpricing_commercialshowrooms_time_period
        self.sellproperty_commercialshowrooms_washrooms = sellproperty_commercialshowrooms_washrooms
        self.sellproperty_commercialshowrooms_balconies = sellproperty_commercialshowrooms_balconies
        self.sellfeature_commercialshowrooms_aminities = sellfeature_commercialshowrooms_aminities
        self.sellproperty_commercialshowrooms_builtuparea = sellproperty_commercialshowrooms_builtuparea
        self.sellproperty_commercialshowrooms_builtuparea_unit = sellproperty_commercialshowrooms_builtuparea_unit
        self.sellproperty_commercialshowrooms_carpetarea = sellproperty_commercialshowrooms_carpetarea
        self.sellproperty_commercialshowrooms_carpetarea_unit = sellproperty_commercialshowrooms_carpetarea_unit
        self.sellproperty_commercialshowrooms_plotarea = sellproperty_commercialshowrooms_plotarea
        self.sellproperty_commercialshowrooms_plotarea_unit = sellproperty_commercialshowrooms_plotarea_unit
        self.sellpricing_commercialshowrooms_price_persqfeet = sellpricing_commercialshowrooms_price_persqfeet
        self.sellpricing_commercialshowrooms_transaction_type = sellpricing_commercialshowrooms_transaction_type
        self.sellpricing_commercialshowrooms_ownership = sellpricing_commercialshowrooms_ownership
        self.sellpricing_commercialshowrooms_availability = sellpricing_commercialshowrooms_availability
        self.sellpricing_commercialshowrooms_age_of_property = sellpricing_commercialshowrooms_age_of_property
        self.sellpricing_commercialshowrooms_possessionby = sellpricing_commercialshowrooms_possessionby
        self.sellpricing_commercialshowrooms_possession_month = sellpricing_commercialshowrooms_possession_month
        self.sellfeature_commercialshowrooms_description = sellfeature_commercialshowrooms_description
    }
}
//--------------------------------------------------------------------------------------------------------------------------------
    //4.commercial factory
public class Commerical_Sell_CF{
    var property_masterid:Int
    var sellpricing_commercialfactory_expected_price:Int
    var sellpricing_commercialfactory_maintenance:Int
    var sellpricing_commercialfactory_time_period:String
    var sellproperty_commercialfactory_washrooms:Int
    var sellproperty_commercialfactory_balconies:Int
    var sellfeature_commercialfactory_aminities:String
    var sellproperty_commercialfactory_builtuparea:Int
    var sellproperty_commercialfactory_builtuparea_unit:Int
    var sellproperty_commercialfactory_carpetarea:Int
    var sellproperty_commercialfactory_carpetarea_unit:Int
    var sellproperty_commercialfactory_plotarea:Int
    var sellproperty_commercialfactory_plotarea_unit:Int
    var sellpricing_commercialfactory_price_persqfeet:Int
    var sellpricing_commercialfactory_transaction_type:String
    var sellpricing_commercialfactory_ownership:String
    var sellpricing_commercialfactory_availability:Int
    var sellpricing_commercialfactory_age_of_property:String
    var sellpricing_commercialfactory_possessionby:Int
    var sellpricing_commercialfactory_possession_month:Int
    var sellfeature_commercialfactory_description:String
    
    init(property_masterid:Int,
     sellpricing_commercialfactory_expected_price:Int,
     sellpricing_commercialfactory_maintenance:Int,
     sellpricing_commercialfactory_time_period:String,
     sellproperty_commercialfactory_washrooms:Int,
     sellproperty_commercialfactory_balconies:Int,
     sellfeature_commercialfactory_aminities:String,
     sellproperty_commercialfactory_builtuparea:Int,
     sellproperty_commercialfactory_builtuparea_unit:Int,
     sellproperty_commercialfactory_carpetarea:Int,
     sellproperty_commercialfactory_carpetarea_unit:Int,
     sellproperty_commercialfactory_plotarea:Int,
     sellproperty_commercialfactory_plotarea_unit:Int,
     sellpricing_commercialfactory_price_persqfeet:Int,
     sellpricing_commercialfactory_transaction_type:String,
     sellpricing_commercialfactory_ownership:String,
     sellpricing_commercialfactory_availability:Int,
     sellpricing_commercialfactory_age_of_property:String,
     sellpricing_commercialfactory_possessionby:Int,
     sellpricing_commercialfactory_possession_month:Int,
     sellfeature_commercialfactory_description:String){
    
        self.property_masterid = property_masterid
        self.sellpricing_commercialfactory_expected_price = sellpricing_commercialfactory_expected_price
        self.sellpricing_commercialfactory_maintenance = sellpricing_commercialfactory_maintenance
        self.sellpricing_commercialfactory_time_period = sellpricing_commercialfactory_time_period
        self.sellproperty_commercialfactory_washrooms = sellproperty_commercialfactory_washrooms
        self.sellproperty_commercialfactory_balconies = sellproperty_commercialfactory_balconies
        self.sellfeature_commercialfactory_aminities = sellfeature_commercialfactory_aminities
        self.sellproperty_commercialfactory_builtuparea = sellproperty_commercialfactory_builtuparea
        self.sellproperty_commercialfactory_builtuparea_unit = sellproperty_commercialfactory_builtuparea_unit
        self.sellproperty_commercialfactory_carpetarea = sellproperty_commercialfactory_carpetarea
        self.sellproperty_commercialfactory_carpetarea_unit = sellproperty_commercialfactory_carpetarea_unit
        self.sellproperty_commercialfactory_plotarea = sellproperty_commercialfactory_plotarea
        self.sellproperty_commercialfactory_plotarea_unit = sellproperty_commercialfactory_plotarea_unit
        self.sellpricing_commercialfactory_price_persqfeet = sellpricing_commercialfactory_price_persqfeet
        self.sellpricing_commercialfactory_transaction_type = sellpricing_commercialfactory_transaction_type
        self.sellpricing_commercialfactory_ownership = sellpricing_commercialfactory_ownership
        self.sellpricing_commercialfactory_availability = sellpricing_commercialfactory_availability
        self.sellpricing_commercialfactory_age_of_property = sellpricing_commercialfactory_age_of_property
        self.sellpricing_commercialfactory_possessionby = sellpricing_commercialfactory_possessionby
        self.sellpricing_commercialfactory_possession_month = sellpricing_commercialfactory_possession_month
        self.sellfeature_commercialfactory_description = sellfeature_commercialfactory_description
   }
}
//--------------------------------------------------------------------------------------------------------------------------------
    //5.commercial warehouse
public class Commerical_Sell_CW{
    
    var property_masterid:Int
    var sellpricing_commercialwarehouse_expected_price:Int
    var sellpricing_commercialwarehouse_maintenance:Int
    var sellpricing_commercialwarehouse_time_period:String
    var sellproperty_commercialwarehouse_washrooms:Int
    var sellproperty_commercialwarehouse_balconies:Int
    var sellfeature_commercialwarehouse_aminities:String
    var sellproperty_commercialwarehouse_builtuparea:Int
    var sellproperty_commercialwarehouse_builtuparea_unit:Int
    var sellproperty_commercialwarehouse_carpetarea:Int
    var sellproperty_commercialwarehouse_carpetarea_unit:Int
    var sellproperty_commercialwarehouse_plotarea:Int
    var sellproperty_commercialwarehouse_plotarea_unit:Int
    var sellpricing_commercialwarehouse_price_persqfeet:Int
    var sellpricing_commercialwarehouse_transaction_type:String
    var sellpricing_commercialwarehouse_ownership:String
    var sellpricing_commercialwarehouse_availability:Int
    var sellpricing_commercialwarehouse_age_of_property:String
    var sellpricing_commercialwarehouse_possessionby:Int
    var sellpricing_commercialwarehouse_possession_month:Int
    var sellfeature_commercialwarehouse_description:String

    
    init(property_masterid:Int,
     sellpricing_commercialwarehouse_expected_price:Int,
     sellpricing_commercialwarehouse_maintenance:Int,
     sellpricing_commercialwarehouse_time_period:String,
     sellproperty_commercialwarehouse_washrooms:Int,
     sellproperty_commercialwarehouse_balconies:Int,
     sellfeature_commercialwarehouse_aminities:String,
     sellproperty_commercialwarehouse_builtuparea:Int,
     sellproperty_commercialwarehouse_builtuparea_unit:Int,
     sellproperty_commercialwarehouse_carpetarea:Int,
     sellproperty_commercialwarehouse_carpetarea_unit:Int,
     sellproperty_commercialwarehouse_plotarea:Int,
     sellproperty_commercialwarehouse_plotarea_unit:Int,
     sellpricing_commercialwarehouse_price_persqfeet:Int,
     sellpricing_commercialwarehouse_transaction_type:String,
     sellpricing_commercialwarehouse_ownership:String,
     sellpricing_commercialwarehouse_availability:Int,
     sellpricing_commercialwarehouse_age_of_property:String,
     sellpricing_commercialwarehouse_possessionby:Int,
     sellpricing_commercialwarehouse_possession_month:Int,
     sellfeature_commercialwarehouse_description:String){
        
        self.property_masterid = property_masterid
        self.sellpricing_commercialwarehouse_expected_price = sellpricing_commercialwarehouse_expected_price
        self.sellpricing_commercialwarehouse_maintenance = sellpricing_commercialwarehouse_maintenance
        self.sellpricing_commercialwarehouse_time_period = sellpricing_commercialwarehouse_time_period
        self.sellproperty_commercialwarehouse_washrooms = sellproperty_commercialwarehouse_washrooms
        self.sellproperty_commercialwarehouse_balconies = sellproperty_commercialwarehouse_balconies
        self.sellfeature_commercialwarehouse_aminities = sellfeature_commercialwarehouse_aminities
        self.sellproperty_commercialwarehouse_builtuparea = sellproperty_commercialwarehouse_builtuparea
        self.sellproperty_commercialwarehouse_builtuparea_unit = sellproperty_commercialwarehouse_builtuparea_unit
        self.sellproperty_commercialwarehouse_carpetarea = sellproperty_commercialwarehouse_carpetarea
        self.sellproperty_commercialwarehouse_carpetarea_unit = sellproperty_commercialwarehouse_carpetarea_unit
        self.sellproperty_commercialwarehouse_plotarea = sellproperty_commercialwarehouse_plotarea
        self.sellproperty_commercialwarehouse_plotarea_unit = sellproperty_commercialwarehouse_plotarea_unit
        self.sellpricing_commercialwarehouse_price_persqfeet = sellpricing_commercialwarehouse_price_persqfeet
        self.sellpricing_commercialwarehouse_transaction_type = sellpricing_commercialwarehouse_transaction_type
        self.sellpricing_commercialwarehouse_ownership = sellpricing_commercialwarehouse_ownership
        self.sellpricing_commercialwarehouse_availability = sellpricing_commercialwarehouse_availability
        self.sellpricing_commercialwarehouse_age_of_property = sellpricing_commercialwarehouse_age_of_property
        self.sellpricing_commercialwarehouse_possessionby = sellpricing_commercialwarehouse_possessionby
        self.sellpricing_commercialwarehouse_possession_month = sellpricing_commercialwarehouse_possession_month
        self.sellfeature_commercialwarehouse_description = sellfeature_commercialwarehouse_description
    }

}
//--------------------------------------------------------------------------------------------------------------------------------


















