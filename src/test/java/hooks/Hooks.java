package hooks;


import io.restassured.builder.RequestSpecBuilder;
import io.restassured.specification.RequestSpecification;
import utilities.ConfigReader;


public class Hooks {


    public static RequestSpecification getSpec() {

        RequestSpecification specification = new RequestSpecBuilder().setBaseUri(ConfigReader.getProperty("apiUrl")).build();

        specification.header("Authorization", "Bearer " +"1/1205543491884173:59c403d909d21bf0455d3cffe8db0327");

        return specification;
    }


}

