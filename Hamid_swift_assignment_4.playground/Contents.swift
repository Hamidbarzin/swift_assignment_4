



protocol Trailer {
    func startEngine() -> Void
    func stopEngine() -> Void
    
    var brand: String { get set }
}


protocol WaterSystem {
    func fillWaterTank() -> Void
    func drainWaterTank() -> Void
    
    var waterCapacity: Double { get set }
}


protocol ElectricitySystem {
    func chargeBattery() -> Void
    func checkBatteryLevel() -> Void
    
    var batteryLevel: Double { get set }
}

protocol ClimateControl {
    func setTemperature(_ temperature: Double) -> Void
    func adjustFanSpeed() -> Void
    
    var temperature: Double { get set }
}

protocol EntertainmentSystem {
    func turnOnTV() -> Void
    func turnOffTV() -> Void
    
    var hasTV: Bool { get set }
}





class Camper: Trailer, WaterSystem, ElectricitySystem ,ClimateControl ,EntertainmentSystem {
    
    
    
    var brand : String
    var waterCapacity: Double
    var batteryLevel: Double
    var temperature: Double
    var hasTV: Bool
    
    init() {
        brand = "Benz"
        waterCapacity = 20.3
        batteryLevel = 8.2
        temperature = 23
        hasTV = true
        
    }
    
    func startEngine() {
        print("engine is started")
    }
    
    func stopEngine() {
        print("engine is stoped")
    }
    
    func fillWaterTank() {
        self.waterCapacity = 30
    }
    
    func drainWaterTank() {
        self.waterCapacity = 0
        print("The water tank is empty")
    }
    
    func chargeBattery() {
        self.batteryLevel = self.temperature + 1
        print("battry charjed 1 level",self.batteryLevel)
    }
    
    func checkBatteryLevel() {
        print("battry level is",self.batteryLevel)
    }
    
    func setTemperature(_ temperature: Double) {
        self.temperature = temperature
        print("temperature changed to",temperature)
    }
    
    func adjustFanSpeed() {
        self.temperature = 25
        print("Fan speed is set to",temperature)
    }
    
    func turnOnTV() {
        if hasTV {
            self.turnOnTV()
            print("tv turnOn")
        }else{
            print("dont have tv")
        }
    }
    
    func turnOffTV() {
        if hasTV {
            self.turnOffTV()
            print("tv turnOff")
        }else{
            print("dont have tv")
        }
    }
    
    
    
    
}


let campingtrailer = Camper()

campingtrailer.startEngine()
campingtrailer.stopEngine()
campingtrailer.fillWaterTank()
campingtrailer.drainWaterTank()
campingtrailer.chargeBattery()
campingtrailer.checkBatteryLevel()
campingtrailer.adjustFanSpeed()
campingtrailer.setTemperature(27.0)
campingtrailer.adjustFanSpeed()
campingtrailer.turnOnTV()
campingtrailer.turnOffTV()
