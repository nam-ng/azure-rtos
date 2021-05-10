<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<smc>
    <general version="2.0.0.0">
        <configuration active="true" id="${configurationTypeReleaseID}">
            <property id="com.renesas.smc.service.project.buildArtefactType" values="com.renesas.smc.service.project.buildArtefactType.exe"/>
            <toolchain id="${toolChainID}">
                <option id="com.renesas.smc.toolchain.option.buildArtefactType" key="com.renesas.smc.toolchain.option.buildArtefactType.exe"/>
                <option id="com.renesas.smc.toolchain.option.rtos" key="com.renesas.smc.toolchain.option.rtos.azurertos">
                    <item id="com.renesas.smc.toolchain.option.rtos.azurertos" value="${packageVersion}"/>
                </option>
            </toolchain>
        </configuration>
        <platform id="${targetDevice}"/>
        <option id="board" value="RSKRX65N-2MB (1.03)"/>
    </general>
    <tool id="Summary" version="1.0.0.0">
        <option id="com.renesas.smc.code.path" value="src\smc_gen"/>
        <option id="com.renesas.smc.code.type" value="Normal Folder"/>
    </tool>
    <tool id="SWComponent" version="1.0.0.0">
        <configuration inuse="true" name="r_bsp">
            <component display="r_bsp" id="r_bsp5.64" version="5.64">
                <gridItem id="BSP_CFG_USER_CHARPUT_ENABLED" selectedIndex="1"/>
            </component>
            <source description="Components supporting Firmware Integration Technology" display="Firmware Integration Technology" id="com.renesas.smc.tools.swcomponent.fit.source"/>
        </configuration>
        <configuration inuse="true" name="r_cmt_rx">
            <component display="r_cmt_rx" id="r_cmt_rx4.30" version="4.30">
            </component>
            <source description="Components supporting Firmware Integration Technology" display="Firmware Integration Technology" id="com.renesas.smc.tools.swcomponent.fit.source"/>
        </configuration>
        <configuration enable="true" exclude="false" id="cd384950-82c6-4fff-a73f-a48b6c91c67b" inuse="true" name="threadx">
            <component display="Azure RTOS ThreadX" id="threadx${packageVersion}" version="${packageVersion}">
            </component>
            <source description="Code generator for Real-time OS" display="RTOS Configurator" id="com.renesas.smc.tools.swcomponent.rtosconfigurator.source"/>
        </configuration>
        <configuration enable="true" exclude="false" id="604b389f-6552-4a7e-afbc-3b8b7094acb6" inuse="true" name="netxduo_addons">
            <component display="Azure RTOS NetX Duo Addons" id="netxduo_addons${packageVersion}" version="${packageVersion}"/>
            <source description="Code generator for Real-time OS" display="RTOS Configurator" id="com.renesas.smc.tools.swcomponent.rtosconfigurator.source"/>
        </configuration>
        <configuration enable="true" exclude="false" id="13921f03-0f10-4a8d-be47-f3684e823c5f" inuse="true" name="netxduo">
            <component display="Azure RTOS NetX Duo" id="netxduo${packageVersion}" version="${packageVersion}">
            </component>
            <source description="Code generator for Real-time OS" display="RTOS Configurator" id="com.renesas.smc.tools.swcomponent.rtosconfigurator.source"/>
        </configuration>
        <configuration enable="true" exclude="false" id="697f3898-7332-4a4c-9ef6-ebe28c505039" inuse="true" name="filex">
            <component display="Azure RTOS FileX" id="filex${packageVersion}" version="${packageVersion}">
            </component>
            <source description="Code generator for Real-time OS" display="RTOS Configurator" id="com.renesas.smc.tools.swcomponent.rtosconfigurator.source"/>
        </configuration>
        <configuration inuse="true" name="r_ether_rx">
            <component description="Dependency : r_bsp version(s) 5.50&#10;The Ethernet fit module provides a method to send and receive Ethernet / IEEE802.3 frame using Ethernet controller (ETHERC), Ethernet DMA controller (EDMAC)." detailDescription="Ethernet Driver." display="r_ether_rx" id="r_ether_rx1.21" version="1.21">
                <gridItem id="ETHER_CFG_CH0_PHY_ADDRESS" selectedIndex="30"/>
                <gridItem id="ETHER_CFG_EMAC_RX_DESCRIPTORS" selectedIndex="8"/>
                <gridItem id="ETHER_CFG_EMAC_TX_DESCRIPTORS" selectedIndex="16"/>
                <gridItem id="ETHER_CFG_CH0_PHY_ACCESS" selectedIndex="0"/>
            </component>
            <source description="Components supporting Firmware Integration Technology" display="Firmware Integration Technology" id="com.renesas.smc.tools.swcomponent.fit.source"/>
        </configuration>
        <configuration id="6c33c04c-b7fe-4a32-b244-c26bdaafa3ec" inuse="true" name="Config_SCI8">
            <allocatable id="SCI8">
            </allocatable>
            <component display="SCI/SCIF Asynchronous Mode" id="com.renesas.smc.tools.swcomponent.codegenerator.sciasyncmode" version="1.9.2"/>
            <allocator channelLevel0="8" channelLevel1="" channelLevel2="" channelLevel3="" channelLevel4="" channelLevel5="" description="SCI channel 8" display="SCI8" id="com.renesas.smc.tools.swcomponent.codegenerator.sciasync.rx651.sci8" type="">
				<context>
                    <option enabled="true" id="Mode" selection="BothMode">
                    </option>
                </context>
			</allocator>
            <source description="Code generator components provide peripheral drivers with customized generated source geared towards small code size" display="Code Generator" id="com.renesas.smc.tools.swcomponent.codegenerator.source"/>
        </configuration>
    </tool>
</smc>
