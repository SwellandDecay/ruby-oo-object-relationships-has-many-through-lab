class Doctor

    attr_accessor :name
    @@all = []

    def initialize(name=nil)
        @name = name
        @@all << self
    end

    def appointments
        Appointment.all.select{|appointment| appointment.doctor == self}
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def patients
        appointments = self.appointments
        appointments.map{|appointment| appointment.patient}
    end

    def self.all
        @@all
    end

end

# Doctor
#   #name
#     has a name (FAILED - 14)
#   #new
#     initializes with a name and adds itself to an array of all doctors (FAILED - 15)
#   #appointments
#     returns all appointments associated with this Doctor (FAILED - 16)
#   #new_appointment
#     given a date and a patient, creates a new appointment (FAILED - 17)
#   #patients
#     has many patients, through appointments (FAILED - 18)