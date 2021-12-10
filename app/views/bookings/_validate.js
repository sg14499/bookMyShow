$().ready(function () { 
    $("#new_booking").validate({
    //adding rule
      rules: {
      "booking[slot_id]":{
        required: true,
        maxlength: 2
      },
      "booking[booking_date]":{
        required: true
      },
      "booking[total_cost]":{
        required: true,
        maxlength: 3
      }
      },
      // error messages
      messages: {
        "booking[slot_id]":{
          required: "Slot_id is required.",
          maxlength: "must be upto 2 digits",
        },
        "booking[booking_date]":{
          required: "Booking date is required",
        },
        "booking[total_cost]":{
          required: "Cost is required",
          maxlength: "Price must be 200"
        }
      }
    });

  });
