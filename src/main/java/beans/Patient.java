package beans;

public class Patient {

    private int id;
    private String surname;
    private String name;
    private String second_name;
    private String gender;
    private String birthdate;
    private String polis_num;
    private String pasport_num;
    private String country;
    private String city;
    private String street;
    private int house_num;
    private String building;
    private int apartment;
    private String contact;
    private String email;
    private String routesheet;

    public Patient() {

    }

    public Patient(int id, String surname, String name, String second_name, String gender, String birthdate, String polis_num, String pasport_num, String country, String city, String street, int house_num, String building, int apartment, String contact, String email, String routesheet) {
        this.id = id;
        this.surname = surname;
        this.name = name;
        this.second_name = second_name;
        this.gender = gender;
        this.birthdate = birthdate;
        this.polis_num = polis_num;
        this.pasport_num = pasport_num;
        this.country = country;
        this.city = city;
        this.street = street;
        this.house_num = house_num;
        this.building = building;
        this.apartment = apartment;
        this.contact = contact;
        this.email = email;
        this.routesheet = routesheet;
    }

    public int getId() {
        return id;
    }

    public void setId(String code) {
        this.id = id;
    }

    public String getSecond_name(){ return second_name; }
    public void setSecond_name(){ this.second_name = second_name; }
    public String getGender(){ return gender; }
    public void setGender(){ this.gender = gender; }
    public String getBirthdate(){ return birthdate; }
    public void setBirthdate(){ this.birthdate = birthdate; }
    public String getPolis_num(){ return polis_num; }
    public void setPolis_num(){ this.polis_num = polis_num; }
    public String getPasport_num(){ return pasport_num; }
    public void setPasport_num(){ this.pasport_num = pasport_num; }
    public String getCountry(){ return country; }
    public void setCountry(){ this.country =country; }
    public String getCity(){ return city; }
    public void setgetCity(){ this.city = city; }
    public String getStreet(){ return street; }
    public void setStreet(){ this.street =street; }
    public int getHouse_num(){ return house_num; }
    public void setHouse_num(){ this.house_num = house_num; }
    public String getBuilding(){ return building; }
    public void setBuilding(){ this.building = building; }
    public int getApartment(){ return apartment; }
    public void setApartment(){ this.apartment = apartment; }
    public String getContact(){ return contact; }
    public void setContact(){ this.contact = contact; }
    public String getEmail(){ return email; }
    public void setEmail(){ this.email = email; }
    public String getRoutesheet(){ return routesheet; }
    public void setRoutesheet(){ this.routesheet = routesheet; }


}