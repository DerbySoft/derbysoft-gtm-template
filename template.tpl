___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Derbysoft Pixel Tracking",
  "brand": {
    "id": "brand_dummy",
    "displayName": ""
  },
  "description": "Derbysoft pixel tracking",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "pixel_account",
    "displayName": "10001:testv3:PIXEL_JS",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "account_id",
    "displayName": "Account ID",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "pixel_id",
    "displayName": "Pixel ID",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "event_type",
    "displayName": "Event Type",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "hotel_id",
    "displayName": "Hotel ID",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "booking_id",
    "displayName": "Booking ID",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "check_in_date",
    "displayName": "Checkin Date",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "check_out_date",
    "displayName": "Checkout Date",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "is_landing_page",
    "displayName": "Is Landing Page",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "stay_length",
    "displayName": "Stay length",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "total_guests",
    "displayName": "Total Guests",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "rooms",
    "displayName": "Rooms",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "adults",
    "displayName": "Adults",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "children",
    "displayName": "Children",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "room_type_id",
    "displayName": "Room Type ID",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "room_type_name",
    "displayName": "Room Type Name",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "rate_plan_id",
    "displayName": "Rate Plan ID",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "rate_plan_name",
    "displayName": "Rate Plan Name",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "price_base",
    "displayName": "Price base",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "price_total",
    "displayName": "Price Total",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "price_currency",
    "displayName": "Price Currency",
    "simpleValueType": true
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// Enter your template code here.
const log = require('logToConsole');
const sendPixel = require('sendPixel');

let url = 'https://linkcenterus.derbysoftca.com/dplatform-linkcenter/trackBooking?accountCode='+data.account_id+'&bookingNo='+data.booking_id+'&hotelCode='+data.hotel_id+'&roomTypeCode='+data.room_type_id+'&ratePlanCode='+data.rate_plan_id+'&checkInDate='+data.check_in_date+'&checkOutDate='+data.check_out_date+'&rooms='+data.rooms+'&netAmount='+data.price_base+'&totalAmount='+data.price_total+'&currency='+data.price_currency;

//let url = 'https://linkcenter5.derbysoftsec.com/dplatform-linkcenter/trackBooking?accountCode=langham&bookingNo=ConfirmNo&hotelCode=Synxis Hotel ID&roomTypeCode=RoomCode&ratePlanCode=RateCode&checkInDate=ArrivalDt&checkOutDate=DepartDt&rooms=RmQty&netAmount=TotalCost&totalAmount=TotalCostWithTax&currency=CurrCodes';
log('data =', url);

// Call data.gtmOnSuccess when the tag is finished.
sendPixel(url, data.gtmOnSuccess);


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "send_pixel",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://linkcenterus.derbysoftca.com/"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 2019/12/23 下午5:52:24


