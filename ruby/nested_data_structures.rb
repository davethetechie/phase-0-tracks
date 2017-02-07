cool_office = {
  
  Front_Desk: {
    Size: "medium",
    Sanitation_Level: "high",
    Employees: {
      Customer_Service: 6,
      Cleaners: 0
    },
 
    Snacks: {
      Water: 25,
      CliffBar: 20
    },
 
    Tools: [
      "finger scanner",
      "Code Keypad Machine",
      "Microwave"
      ]
  },
 
  Boss_Office: {
    Size: "large",
    Sanitation_Level: "high",
    Employees: {
      Customer_Service: 1,
      Cleaners: 1
    },
 
    Snacks: {
      Water: 3,
      CliffBar: 4 
    },
 
    Tools: [
      "Door Iris Scanner",
      "Door Keypad Lock"
    ]
 
  },
 
  CFO_Office: {
    Size: "small",
    Sanitation_Level: "poor",
    Employees: {
      Customer_Service: 0,
      Cleaners: 1
    },
 
    Snacks: {
      Water: 0,
      CliffBar: 10
    },
 
    Tools: [
      "Door Iris Scanner"
    ]
  },
 
  Security_Office: {
    Size: "Large",
    Sanitation_Level: "acceptable",
    Employees: {
      Customer_Service: 6,
      Cleaners: 4
    },
 
    Snacks: {
      Water: 3,
      CliffBar: 2
    },
 
    Tools: [
      "Door Iris Scanner",
      "Gun Locker",
      "Fridge",
      "Small Weights",
      "Large Gun Locker"
    ]
  }
 }

 
 
 p cool_office
 puts "**********************"
 
 puts "add population key with value to Security Office hash"
  cool_office[:Security_Office][:Population] = 20
 p cool_office
 
 
 puts "**********************"
 puts "Push string to Tools Array at Front Desk"
  cool_office[:Front_Desk][:Tools].push("Membership Database Software")
 p cool_office
 
 puts "**********************"
 puts "replace entire CFO_Office hash with Cleanliness: 'high'"
  cool_office[:CFO_Office].replace({:Cleanliness => "high"})
 p cool_office
 
 puts "**********************"
 puts "Delete key/value for Employees hash in Security_Office if not equal to Cleaners"
  cool_office[:Security_Office][:Employees].delete_if {|type,num| type != :Cleaners}
 p cool_office
 
 puts "**********************"
 puts "Select and return employee entries greater than 0 for Front_Desk"
  cool_office[:Front_Desk][:Employees].select! {|type,num| num > 0}
 p cool_office
 