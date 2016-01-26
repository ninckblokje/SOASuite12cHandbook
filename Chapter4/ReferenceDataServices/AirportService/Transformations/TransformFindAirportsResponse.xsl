<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction" xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/top/QueryAirportsDB" xmlns:tns="saibot.airport/services/utility/reference" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:RuntimeTypeConversionFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.RuntimeTypeConversionFunctions" xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction" exclude-result-prefixes=" xsd oracle-xsl-mapper xsi xsl ns0 tns UUIDUserFunction IsUserInGroupFunction oraext IsUserInRoleFunction xp20 DVMFunctions oraxsl RuntimeTypeConversionFunctions XrefFunctions BasicCredentialsUserFunction"
                xmlns:refData="saibot.airport/data/reference" xmlns:common="saibot.airport/data/common">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="XSD">
            <oracle-xsl-mapper:schema location="../Resources/QueryAirportsDB_table.xsd"/>
            <oracle-xsl-mapper:rootElement name="CmnAirportsCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/QueryAirportsDB"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="XSD">
            <oracle-xsl-mapper:schema location="../Schemas/AirportService.xsd"/>
            <oracle-xsl-mapper:rootElement name="findAirportsResponseMessage" namespace="saibot.airport/services/utility/reference"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [THU JAN 21 21:12:21 CET 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <tns:findAirportsResponseMessage>
         <tns:Airports>
            <xsl:for-each select="/ns0:CmnAirportsCollection/ns0:CmnAirports">
               <tns:airport>
                  <refData:IATACode>
                     <xsl:value-of select="ns0:iataCode"/>
                  </refData:IATACode>
                  <refData:ICAOCode>
                     <xsl:value-of select="ns0:icaoCode"/>
                  </refData:ICAOCode>
                  <refData:Name>
                     <xsl:value-of select="ns0:name"/>
                  </refData:Name>
                  <refData:Country>
                     <refData:code>
                        <xsl:value-of select="ns0:cmnCountries/ns0:code"/>
                     </refData:code>
                     <refData:name>
                        <xsl:value-of select="ns0:cmnCountries/ns0:name"/>
                     </refData:name>
                     <refData:tailcode>
                        <xsl:value-of select="ns0:cmnCountries/ns0:tailcode"/>
                     </refData:tailcode>
                     <refData:Flag>
                        <xsl:value-of select="ns0:cmnCountries/ns0:flag"/>
                     </refData:Flag>
                  </refData:Country>
                  <refData:City>
                     <xsl:value-of select="ns0:city"/>
                  </refData:City>
                  <refData:GeoLocation>
                     <common:latitude>
                        <xsl:value-of select="ns0:lattitude"/>
                     </common:latitude>
                     <common:longitude>
                        <xsl:value-of select="ns0:longitude"/>
                     </common:longitude>
                  </refData:GeoLocation>
                  <refData:UTCOffset>
                     <xsl:value-of select="ns0:utcOffset"/>
                  </refData:UTCOffset>
               </tns:airport>
            </xsl:for-each>
         </tns:Airports>
      </tns:findAirportsResponseMessage>
   </xsl:template>
</xsl:stylesheet>