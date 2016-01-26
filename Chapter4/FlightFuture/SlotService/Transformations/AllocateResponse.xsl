<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction" xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:tns="saibot.airport/services/slot" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/sp/AllocateSlotsDB" xmlns:RuntimeTypeConversionFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.RuntimeTypeConversionFunctions" xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction" exclude-result-prefixes=" xsd oracle-xsl-mapper xsi xsl ns0 tns UUIDUserFunction IsUserInGroupFunction oraext IsUserInRoleFunction xp20 DVMFunctions oraxsl RuntimeTypeConversionFunctions XrefFunctions BasicCredentialsUserFunction"
                xmlns:reference="saibot.airport/data/reference" xmlns:common="saibot.airport/data/common">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="XSD">
            <oracle-xsl-mapper:schema location="../Resources/AllocateSlotsDB_sp.xsd"/>
            <oracle-xsl-mapper:rootElement name="OutputParameters" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/sp/AllocateSlotsDB"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="XSD">
            <oracle-xsl-mapper:schema location="../Schemas/SlotService.xsd"/>
            <oracle-xsl-mapper:rootElement name="allocateSlotResponseMessage" namespace="saibot.airport/services/slot"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [THU JAN 21 23:09:24 CET 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <tns:allocateSlotResponseMessage>
         <tns:SlotId>
            <xsl:value-of select="/ns0:OutputParameters/ns0:P_SLOT_ALLOCATIONS/ns0:P_SLOT_ALLOCATIONS_ITEM/ns0:SLOT_ID"/>
         </tns:SlotId>
         <tns:Result>
            <xsl:value-of select="/ns0:OutputParameters/ns0:P_SLOT_ALLOCATIONS/ns0:P_SLOT_ALLOCATIONS_ITEM/ns0:RESULT_CODE"/>
         </tns:Result>
      </tns:allocateSlotResponseMessage>
   </xsl:template>
</xsl:stylesheet>