# DATA STRUCTURE
computer = {
  peripherals: [
    ['speakers', 'headphones'],
    'monitor',
    ['mouse', 'keyboard']
    ],
  components: {
    case: 'Rosewill Challenger',
    motherboard: {
      "Brand" => "Asus",
      series: "Z-series",
      model_num: "Z100-A"
      },
    cpu: {
      brand: 'Intel',
      gen: 'skylake',
      core_series: 'i7',
      speed: 3.4,
      },
    ram:{
      brand: 'Corsair',
      speed: '3000',
      },
    graphics:{
      onboard: ['Intel Graphics 4400'],
      dedicated: [
        [card_1: {
          brand: 'Nvidia',
          manufacturer: 'EVGA',
          model: 'GTX 770'
          }
          ]
        ],
      }
  }
}




# DRIVER CODE

## PRINT THE 3RD SET OF PERIPHERALS
puts "===================="
puts "===================="
puts "3rd set of peripherals"
p computer[:peripherals][2]

## PRINT THE SERIES OF THE MOTHERBOARD 
puts "===================="
puts "===================="
puts "Series of motherboard"
p computer[:components][:motherboard][:series]

## PRINT THE BRAND OF THE MOTHERBOARD
puts "===================="
puts "===================="
puts "Brand of MOBO:"
p computer[:components][:motherboard]['Brand']

## PRINT THE SPEED OF THE RAM
puts "===================="
puts "===================="
puts "RAM Speed:"
p computer[:components][:ram][:speed]

## CHANGE THE ONBOARD GRAPHICS TO 4500
puts "===================="
puts "===================="
puts "Previous onboard graphics"
p computer[:components][:graphics][:onboard][0]
computer[:components][:graphics][:onboard][0] = 'Intel Graphics 4500'
puts "Updated onboard graphics"
p computer[:components][:graphics][:onboard][0]

## ADD A SECOND DEDICATED CARD WITH THESE SPECS: NVIDIA, MSI, GTX 980, 4GB
puts "===================="
puts "===================="
puts "Dedicated Cards:"
p computer[:components][:graphics][:dedicated]
computer[:components][:graphics][:dedicated] << [card_2: {
  brand: 'NVIDIA',
  manufacturer: 'MSI',
  model: 'GTX 980',
  memory: '4GB'
  }]
puts "Updated List:"
p computer[:components][:graphics][:dedicated]