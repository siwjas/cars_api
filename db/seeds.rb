
bmw = Manufacturer.create!({
  name: 'BMW' 
})
bmw.save

bmw.cars.create([
  {
    'name': 'M6 Gran Coupé',
    'engine': '1.5',
    'cambio': 'Automatico',
    'fuel': 'Gasolina',
    'year': 2021,
    'price': 215950
  },
  {
    'name': 'X2 sDrive18i GP',
    'engine': '4.4',
    'cambio': 'Automatico',
    'fuel': 'Gasolina',
    'year': 2018,
    'price': 699950
  }
])

chevrolet = Manufacturer.create!({
  name: 'Chevrolet' 
})
chevrolet.save

chevrolet.cars.create([
  {
    'name': 'Camaro',
    'engine': '4.2',
    'cambio': 'Automatico',
    'fuel': 'Gasolina',
    'year': 2020,
    'price': 377900
  },
  {
    'name': 'Cruze LT',
    'engine': '1.4',
    'cambio': 'Automatico',
    'fuel': 'Gasolina/Alcool',
    'year': 2022,
    'price': 124590
  }
])

ford = Manufacturer.create!({
  name: 'Ford' 
})
ford.save

ford.cars.create([
  {
    'name': 'Fusion',
    'engine': '2.0',
    'cambio': 'Automatico',
    'fuel': 'Gasolina',
    'year': 2019,
    'price': 377900
  },
  {
    'name': 'Focus Hatch SE TiVCT',
    'engine': '1.6',
    'cambio': 'Manual',
    'fuel': 'Gasolina/Alcool',
    'year': 2019,
    'price': 78100
  }
])

honda = Manufacturer.create!({
  name: 'Honda' 
})
honda.save

honda.cars.create([
  {
    'name': 'Accord Touring',
    'engine': '2.0',
    'cambio': 'Automatico',
    'fuel': 'Gasolina',
    'year': 2021,
    'price': 107200
  },
  {
    'name': 'Civic LX CVT',
    'engine': '2.0',
    'cambio': 'CVT',
    'fuel': 'Gasolina',
    'year': 2019,
    'price': 204900
  }
])

hyundai = Manufacturer.create!({
  name: 'Hyundai' 
})
hyundai.save

hyundai.cars.create([
  {
    'name': 'Azera V6',
    'engine': '3.0',
    'cambio': 'Automatico',
    'fuel': 'Gasolilna',
    'year': 2020,
    'price': 269900
  },
  {
    'name': 'Elantra GLS',
    'engine': '2.0',
    'cambio': 'Automatico',
    'fuel': 'Gasolilna/Alcool',
    'year': 2018,
    'price': 90415
  }
])

mitsubishi = Manufacturer.create!({
  name: 'Mitsubishi' 
})
mitsubishi.save

mitsubishi.cars.create([
  {
    'name': 'Eclipse Cross Turbo GLS',
    'engine': '1.5',
    'cambio': 'CVT',
    'fuel': 'Gasolina',
    'year': 2022,
    'price': 151900
  },
  {
    'name': 'Pajeto Sport HPE 4WD',
    'engine': '2.4',
    'cambio': 'Automatico',
    'fuel': 'Diesel',
    'year': 2022,
    'price': 327990
  }
])

mercedes = Manufacturer.create!({
  name: 'Mercedes-Benz' 
})
mercedes.save

mercedes.cars.create([
  {
    'name': 'Classe CLA AMG DCT 4MATIC',
    'engine': '2.0',
    'cambio': 'Automatico',
    'fuel': 'Gasolina',
    'year': 2021,
    'price': 431900
  },
  {
    'name': 'Classe CLS V6 CGI',
    'engine': '3.5',
    'cambio': 'Automatico',
    'fuel': 'Gasolina',
    'year': 2017,
    'price': 408900
  }
])

nissan = Manufacturer.create!({
  name: 'Nissan' 
})
nissan.save

nissan.cars.create([
  {
    'name': 'Kicks Sense',
    'engine': '1.6',
    'cambio': 'Manual',
    'fuel': 'Gasolina/Alcool',
    'year': 2022,
    'price': 91970
  },
  {
    'name': 'LEAF 40kWh',
    'engine': '40 kWh',
    'cambio': 'Automatico',
    'fuel': 'Híbrido/Eletrico',
    'year': 2020,
    'price': 195000
  }
])

pegeot = Manufacturer.create!({
  name: 'Pegeot' 
})
pegeot.save

pegeot.cars.create([
  {
    'name': '5008 THP Griffe Pack',
    'engine': '1.6',
    'cambio': 'Automatico',
    'fuel': 'Gasolina',
    'year': 2020,
    'price': 194990
  },
  {
    'name': '408 Business THP AT',
    'engine': '1.6',
    'cambio': 'Automatico',
    'fuel': 'Gasolina/Alcool',
    'year': 2019,
    'price': 69990
  }
])

toyota = Manufacturer.create!({
  name: 'Toyota' 
})
toyota.save

toyota.cars.create([
  {
    'name': 'Camry V6 XLE',
    'engine': '3.5',
    'cambio': 'Automatico',
    'fuel': 'Gasolina',
    'year': 2020,
    'price': 276990
  },
  {
    'name': 'Etios X Plus',
    'engine': '1.5',
    'cambio': 'Manual',
    'fuel': 'Gasolina/Alcool',
    'year': 2021,
    'price': 55390
  }
])

renault = Manufacturer.create!({
  name: 'Renault' 
})
renault.save

renault.cars.create([
  {
    'name': 'Sandero Intense CVT',
    'engine': '1.6',
    'cambio': 'CVT',
    'fuel': 'Gasolina/Alcool',
    'year': 2022,
    'price': 59690
  },
  {
    'name': 'Captur TCe Zen CVT',
    'engine': '1.6',
    'cambio': 'CVT',
    'fuel': 'Gasolina/Alcool',
    'year': 2022,
    'price': 124490
  }
])

vw = Manufacturer.create!({
  name: 'Volkswagen' 
})
vw.save

vw.cars.create([
  {
    'name': 'Gol',
    'engine': '1.0',
    'cambio': 'Manual',
    'fuel': 'Gasolina/Alcool',
    'year': 2022,
    'price': 56190
  },
  {
    'name': 'Golf TSI GTE DSG',
    'engine': '1.4',
    'cambio': 'Automatico',
    'fuel': 'Eletrico/Gasolina',
    'year': 2020,
    'price': 199990
  }
])
