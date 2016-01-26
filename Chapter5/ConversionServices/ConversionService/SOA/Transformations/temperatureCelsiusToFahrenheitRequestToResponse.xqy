xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="saibot.airport/services/utility/conversion";
(:: import schema at "../Schemas/ConversionService.xsd" ::)

declare variable $temperatureCelsiusToFahrenheitRequest as element() (:: schema-element(ns1:temperatureCelsiusToFahrenheitRequestMessage) ::) external;

declare function local:func($temperatureCelsiusToFahrenheitRequest as element() (:: schema-element(ns1:temperatureCelsiusToFahrenheitRequestMessage) ::)) as element() (:: schema-element(ns1:temperatureCelsiusToFahrenheitResponseMessage) ::) {
    <ns1:temperatureCelsiusToFahrenheitResponseMessage>
        <ns1:temperature>{fn:data($temperatureCelsiusToFahrenheitRequest/ns1:temperature) * (9 div 5) + 32}</ns1:temperature>
    </ns1:temperatureCelsiusToFahrenheitResponseMessage>
};

local:func($temperatureCelsiusToFahrenheitRequest)
