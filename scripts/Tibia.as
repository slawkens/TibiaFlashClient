﻿package 
{
    import Tibia.*;
    import __AS3__.vec.*;
    import build.*;
    import flash.display.*;
    import flash.errors.*;
    import flash.events.*;
    import flash.net.*;
    import flash.utils.*;
    import loader.asset.*;
    import mx.binding.*;
    import mx.collections.*;
    import mx.containers.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;
    import mx.styles.*;
    import shared.controls.*;
    import shared.skins.*;
    import shared.utility.*;
    import tibia.actionbar.*;
    import tibia.appearances.*;
    import tibia.chat.*;
    import tibia.container.*;
    import tibia.controls.*;
    import tibia.creatures.*;
    import tibia.cursors.*;
    import tibia.game.*;
    import tibia.help.*;
    import tibia.ingameshop.*;
    import tibia.input.*;
    import tibia.input.gameaction.*;
    import tibia.magic.*;
    import tibia.minimap.*;
    import tibia.network.*;
    import tibia.options.*;
    import tibia.premium.*;
    import tibia.sessiondump.*;
    import tibia.sessiondump.controller.*;
    import tibia.sessiondump.hints.gameaction.*;
    import tibia.sidebar.*;
    import tibia.sidebar.sideBarWidgetClasses.*;
    import tibia.worldmap.*;

    public class Tibia extends Application implements IBindingClient, IGameClient
    {
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _embed_css_images_custombutton_Button_Standard_tileable_mc_idle_png_610131229:Class;
        private var _embed_css_images_BG_Bars_compact_enpiece_png_1184339178:Class;
        protected var m_CurrentOptionsAsset:OptionsAsset = null;
        private var _embed_css_images_Icons_CombatControls_DefensiveOn_idle_png_1669654951:Class;
        private var _embed_css_images_BG_Widget_Menu_png_1056150036:Class;
        private var _embed_css_images_custombutton_Button_Border_tileable_bl_idle_png_1739897418:Class;
        private var _embed_css_images_Icons_CombatControls_DefensiveOff_idle_png_1782109617:Class;
        private var _embed_css_images_BG_BarsProgress_compact_endpiece_png_1855154097:Class;
        private var _embed_css_images_Icons_WidgetMenu_BattleList_idle_over_png_665859085:Class;
        private var _embed_css_images_custombutton_Button_Standard_tileable_mc_disabled_png_1650806741:Class;
        private var _embed_css_images_Icons_WidgetMenu_Trades_active_over_png_1585907014:Class;
        private var _embed_css_images_Icons_BattleList_HideSkulled_active_png_1617013419:Class;
        private var _embed_css_images_Icons_CombatControls_ExpertModeOn_over_png_1934161151:Class;
        private var _embed_css_images_custombutton_Button_Border_tileable_ml_idle_png_633391925:Class;
        private var _embed_css_images_Slot_InventoryAmmo_png_1547247007:Class;
        private var _1314206572m_UIWorldMapWidget:WorldMapWidget;
        private var _embed_css_images_custombutton_Button_Gold_tileable_tl_pressed_png_87983224:Class;
        private var _embed_css_images_Minimap_ZoomOut_pressed_png_688977162:Class;
        private var _embed_css_images_Button_ContainerUp_pressed_png_103378762:Class;
        private var _embed_css_____assets_images_ingameshop_Icons_IngameShop_32x14_TransferCoins_png_970010606:Class;
        private var _embed_css_images_BG_Stone2_Tileable_png_1339293492:Class;
        var _bindingsByDestination:Object;
        private var _embed_css_images_custombutton_Button_IngameShopBuy_tileable_pressed_png_1564750646:Class;
        private var _embed_css____images_prey_prey_list_reroll_reactivate_disabled_png_745940684:Class;
        private var _embed_css_images_custombutton_Button_Gold_tileable_mc_idle_png_385207242:Class;
        private var _embed_css_images_Widget_Footer_tileable_png_1521000729:Class;
        protected var m_ContainerStorage:ContainerStorage = null;
        protected var m_CurrentOptionsUploadErrorDelay:int = 0;
        private var _embed_css_images_Icons_BattleList_HidePlayers_idle_png_182344541:Class;
        private var _embed_css____images_prey_prey_bonus_reroll_png_1466948457:Class;
        private var _1020379552m_UITibiaRootContainer:HBox;
        private var _embed_css_images_Icons_WidgetMenu_Trades_active_png_1327120247:Class;
        private var _embed_css_images_Slot_InventoryLegs_png_1709854540:Class;
        protected var m_IsActive:Boolean = false;
        private var _embed_css_images_Icon_Premium_png_247411897:Class;
        private var _embed_css_images_Icons_CombatControls_YellowHandOff_idle_png_900406131:Class;
        private var _embed_css_images_BG_Bars_default_enpieceOrnamented_png_1899164501:Class;
        private var _embed_css_____assets_images_imbuing_imbuing_slot_empty_png_1852734938:Class;
        private var _embed_css____images_prey_prey_unlock_temporarily_png_727600544:Class;
        private var _embed_css_images_Icons_CombatControls_PvPOn_idle_png_456051716:Class;
        private var _embed_css_images_custombutton_Button_Gold_tileable_mc_over_png_1264143562:Class;
        protected var m_Options:OptionsStorage = null;
        private var _embed_css_images_Widget_HeaderBG_png_1268436051:Class;
        protected var m_CurrentOptionsLastUpload:int = -2.14748e+009;
        private var _embed_css_images_BarsHealth_compact_Mana_png_1773406568:Class;
        private var _embed_css_images_BarsHealth_fat_Yellow_png_1862887037:Class;
        private var _embed_css_images_Icons_Conditions_PZlock_png_1286930259:Class;
        private var _embed_css_images_Button_Minimize_over_png_2130500116:Class;
        private var _embed_css_images_Icons_WidgetMenu_Minimap_idle_over_png_1782493982:Class;
        private var _embed_css_images_custombutton_Button_Standard_tileable_bl_idle_png_1931374825:Class;
        private var _embed_css_images_Icons_CombatControls_RedFistOff_over_png_1009372065:Class;
        private var _embed_css_images_custombutton_Button_Highlight_tileable_ml_idle_png_1542815105:Class;
        private var m_TutorialMode:Boolean = false;
        private var _embed_css_images_BarsProgress_compact_orange_png_546584162:Class;
        private var _embed_css_images_Button_Maximize_pressed_png_551093474:Class;
        private var _embed_css_images_Icons_CombatControls_ExpertModeOn_idle_png_664956415:Class;
        private var _embed_css_images_BarsHealth_fat_RedFull_png_1593128607:Class;
        private var _embed_css_images_Arrow_Minimap_LevelUpDown_idle_png_341572474:Class;
        private var _embed_css_images_BarsHealth_fat_GreenFull_png_1619224031:Class;
        private var _embed_css_images_Icons_CombatControls_YellowHandOn_idle_png_559733847:Class;
        private var _embed_css_____assets_images_imbuing_imbuing_icon_useprotection_active_png_131442444:Class;
        private var _embed_css_images_custombutton_Button_Border_tileable_bl_pressed_png_2020010902:Class;
        private var _embed_css_images_Scrollbar_tileable_png_1684281047:Class;
        private var _1174474338m_UIActionBarLeft:VActionBarWidget;
        private var _embed_css_images_Button_MaximizePremium_over_png_73419701:Class;
        private var m_FailedConnectionRescheduler:FailedConnectionRescheduler;
        private var _embed_css_images_Scrollbar_Arrow_up_idle_png_459269585:Class;
        private var _embed_css_images_Icons_WidgetMenu_Inventory_active_over_png_605598747:Class;
        private var _embed_css_images_Icons_BattleList_HideMonsters_over_png_1724873768:Class;
        protected var m_CurrentOptionsDirty:Boolean = false;
        private var _embed_css_images_ChatTab_tileable_EndpieceLeft_png_528087243:Class;
        private var _embed_css_images_Icons_Conditions_Burning_png_1074259001:Class;
        private var _embed_css_images_Icons_TradeLists_ContainerDisplay_pressed_png_545689075:Class;
        private var _embed_css_images_Minimap_ZoomIn_idle_png_257074697:Class;
        private var _embed_css_images_custombutton_Button_Gold_tileable_mc_pressed_png_1784525290:Class;
        private var _embed_css_images_Icons_CombatControls_OffensiveOn_idle_png_644555133:Class;
        private var _embed_css_images_Icons_Conditions_Haste_png_250099713:Class;
        private var _embed_css_images_Icons_CombatControls_StandOff_idle_png_1478662626:Class;
        private var _embed_css_images_Icons_BattleList_HideMonsters_idle_png_1309271256:Class;
        private var _embed_css_images_BG_BarsXP_default_tileable_png_940157883:Class;
        private var _embed_css_images_custombutton_Button_Gold_tileable_ml_over_png_1836575873:Class;
        private var _embed_css_images_custombutton_Button_Border_tileable_tc_pressed_png_90896863:Class;
        private var _embed_css_images_BarsHealth_compact_RedFull_png_1856496471:Class;
        private var m_GameClientReady:Boolean = false;
        private var _embed_css_images_Icons_WidgetMenu_Containers_active_png_313595792:Class;
        private var _embed_css_images_BarsHealth_compact_GreenLow_png_879908786:Class;
        private var _embed_css_images_custombutton_Button_Border_tileable_bc_disabled_png_703276661:Class;
        private var _embed_css_____assets_images_imbuing_imbuing_icon_remove_active_png_76120164:Class;
        private var _embed_css_images_Icons_WidgetHeaders_Spells_png_186815355:Class;
        private var _embed_css_images_Icons_BattleList_HideSkulled_idle_png_438934403:Class;
        private var _embed_css_images_Button_ChatTabIgnore_over_png_1029437127:Class;
        private var _embed_css_images_Icons_Conditions_Slowed_png_270576332:Class;
        private var _embed_css_images_Icons_CombatControls_AutochaseOn_idle_png_1042873467:Class;
        private var _embed_css_images_Icons_ProgressBars_Fishing_png_244935797:Class;
        private var _embed_css_images_Icons_WidgetHeaders_Inventory_png_1408226468:Class;
        private var _embed_css_images_Icons_WidgetMenu_Combat_active_png_254301134:Class;
        private var _embed_css_images_custombutton_Button_Gold_tileable_bc_idle_png_779535903:Class;
        private var _embed_css_images_Icons_CombatControls_YellowHandOff_over_png_1175362675:Class;
        private var _embed_css_images_Border02_WidgetSidebar_slim_png_477968117:Class;
        private var _embed_css_images_Widget_Footer_tileable_end02_png_770143431:Class;
        private var _embed_css_____assets_images_ingameshop_Icons_IngameShop_12x12_TibiaCoin_png_212042744:Class;
        private var _embed_css_images_Icons_IngameShop_12x12_No_png_432435573:Class;
        private var _embed_css_images_Arrow_WidgetToggle_over_png_411548443:Class;
        private var _embed_css_images_Icons_ProgressBars_AxeFighting_png_9426725:Class;
        private var _embed_css_images_custombutton_Button_Standard_tileable_bl_pressed_png_1330582347:Class;
        private var _embed_css_images_Button_Maximize_over_png_580574926:Class;
        private var _embed_css_images_Slot_InventoryBackpack_protected_png_415207230:Class;
        private var _embed_css_images_custombutton_Button_Gold_tileable_ml_idle_png_1579896193:Class;
        private var _embed_css_images_slot_Hotkey_disabled_png_463839532:Class;
        private var _embed_css_images_Slot_InventoryBoots_png_1390788408:Class;
        private var _embed_css_images_ChatWindow_Mover_png_2093646078:Class;
        private var _embed_css_images_Icons_WidgetMenu_GetPremium_idle_png_1642768429:Class;
        private var _embed_css_images_slot_Hotkey_highlighted_png_1676916579:Class;
        private var _embed_css_images_slot_Hotkey_protected_png_599761708:Class;
        private var _embed_css____images_prey_prey_confirm_monster_selection_disabled_png_1414880872:Class;
        var _bindingsBeginWithWord:Object;
        private var _embed_css_images_custombutton_Button_Highlight_tileable_tl_idle_png_1856848476:Class;
        private var _embed_css____images_prey_prey_bonus_reroll_disabled_png_390059962:Class;
        private var _embed_css_images_Icons_CombatControls_ExpertMode_disabled_png_219629266:Class;
        private var _embed_css_images_Icons_CombatControls_Unmounted_over_png_1075295914:Class;
        private var _embed_css_images_BG_Bars_compact_tileable_png_1166257409:Class;
        private var _embed_css_images_Icons_WidgetMenu_Skull_active_png_1803973467:Class;
        private var _embed_css_images_Icons_Conditions_Drowning_png_68156910:Class;
        private var _1404294856m_UIGameWindow:GridContainer;
        private var _embed_css_images_Minimap_Center_active_png_1589000392:Class;
        private var _embed_css_images_Icons_WidgetMenu_GeneralControls_active_png_1274097504:Class;
        private var _embed_css_images_custombutton_Button_Gold_tileable_bl_pressed_png_1593023754:Class;
        private var _embed_css_images_custombutton_Button_Gold_tileable_bc_pressed_png_1305691179:Class;
        protected var m_Connection:IServerConnection = null;
        private var _embed_css_images_Inventory_png_152874110:Class;
        private var _embed_css_images_Arrow_ScrollHotkeys_pressed_png_1521804567:Class;
        private var _embed_css_images_Button_ChatTabIgnore_idle_png_767593529:Class;
        private var _embed_css_images_custombutton_Button_Border_tileable_tl_disabled_png_592849536:Class;
        private var _embed_css_images_custombutton_Button_Gold_tileable_tc_over_png_152825967:Class;
        private var _64278965m_UISideBarA:SideBarWidget;
        private var _embed_css_images_Icons_WidgetMenu_Prey_active_png_1402332324:Class;
        private var _embed_css_images_Bars_ProgressMarker_png_1964646600:Class;
        private var _embed_css_images_Icons_BattleList_PartyMembers_active_png_2093200322:Class;
        private var _embed_css_images_Button_PurchaseComplete_pressed_png_231187156:Class;
        private var _embed_css_images_Arrow_ScrollHotkeys_over_png_384271747:Class;
        private var _embed_css_images_Arrow_WidgetToggle_idle_png_742472731:Class;
        private var _embed_css_images_Icons_WidgetMenu_BattleList_idle_png_1174603830:Class;
        private var _embed_css_images_Icons_BattleList_HideNPCs_active_over_png_689351800:Class;
        protected var m_ConnectionDataPending:int = -1;
        private var _embed_css_images_Arrow_ScrollTabs_pressed_png_23734072:Class;
        private var _embed_css_images_Icons_CombatControls_WhiteHandOff_over_png_619710208:Class;
        private var _embed_css_images_Icons_ProgressBars_ParallelStyle_png_233055275:Class;
        private var _embed_css_images_Icons_Conditions_Electrified_png_1640933398:Class;
        private var _embed_css_images_Icons_WidgetMenu_Trades_idle_png_856125637:Class;
        private var _embed_css_images_custombutton_Button_Border_tileable_ml_pressed_png_931026351:Class;
        private var _embed_css_images_Scrollbar_Arrow_up_pressed_png_33235269:Class;
        private var _embed_css_images_Icons_WidgetMenu_Inventory_idle_png_1926255504:Class;
        private var _embed_css_images_Arrow_WidgetToggle_BG_png_1428913496:Class;
        private var _embed_css_images_custombutton_Button_Highlight_tileable_ml_over_png_953421695:Class;
        private var _embed_css_images_custombutton_Button_Highlight_tileable_tc_pressed_png_1597831939:Class;
        private var _embed_css_images_BuySellTab_active_png_1732627654:Class;
        private var _embed_css_images_Border_Widget_corner_png_1032170261:Class;
        private var _embed_css_images_custombutton_Button_IngameShopBuy_tileable_end_idle_png_550365978:Class;
        private var _embed_css_images_custombutton_Button_Gold_tileable_tc_idle_png_105353361:Class;
        private var _embed_css____images_prey_prey_list_reroll_small_png_1530659080:Class;
        private var _embed_css_images_Icons_CombatControls_WhiteHandOn_idle_png_1762909362:Class;
        private var _embed_css_images_Slot_InventoryNecklace_png_1546753575:Class;
        private var _embed_css_images_Slot_InventoryArmor_png_1774073578:Class;
        private var _embed_css_images_BG_Bars_default_tileable_png_870405027:Class;
        private var _embed_css_images_Button_ChatTabIgnore_pressed_png_445557299:Class;
        private var _embed_css_images_Button_Combat_Stop_idle_png_2057116105:Class;
        private var _embed_css_images_Icons_TradeLists_ContainerDisplay_idle_png_856063263:Class;
        private var _embed_css_images_custombutton_Button_Gold_tileable_tl_over_png_1414190572:Class;
        private var _embed_css____images_prey_prey_confirm_monster_selection_png_1647154181:Class;
        private var _embed_css_images_Icons_WidgetMenu_GeneralControls_idle_png_1571902642:Class;
        protected var m_WorldMapStorage:WorldMapStorage = null;
        private var _embed_css_images_Icons_BattleList_HideNPCs_over_png_1176765363:Class;
        private var _embed_css_images_Slot_InventoryRing_png_332734525:Class;
        private var _embed_css_images_BarsXP_default_improved_png_1271383239:Class;
        private var _embed_css_images_Button_PurchaseComplete_over_png_1965214304:Class;
        private var _embed_css_images_Icons_BattleList_PartyMembers_idle_png_585889360:Class;
        private var _embed_css_images_Slot_InventoryArmor_protected_png_927863849:Class;
        private var _embed_css_images_Border02_corners_png_2021856475:Class;
        private var _embed_css_images_Icons_CombatControls_RedFistOn_over_png_868094187:Class;
        protected var m_SpellStorage:SpellStorage = null;
        private var _embed_css_images_Button_Close_disabled_png_985641870:Class;
        private var _embed_css_images_custombutton_Button_Standard_tileable_ml_idle_png_1920807008:Class;
        private var _1568861366m_UIOuterRootContainer:DividedBox;
        private var _embed_css_images_Icons_ProgressBars_ProgressOff_png_1974802685:Class;
        private var _embed_css_images_custombutton_Button_Standard_tileable_bc_disabled_png_1997505622:Class;
        private var _embed_css_images_Icons_BattleList_HidePlayers_over_png_696587683:Class;
        protected var m_CharacterDeath:Boolean = false;
        private var _embed_css_images_Icons_WidgetHeaders_Combat_png_589713946:Class;
        private var _embed_css_images_Icons_CombatControls_OffensiveOff_idle_png_47876985:Class;
        private var _embed_css_images_Icons_WidgetMenu_Containers_idle_over_png_1944340881:Class;
        private var _embed_css_images_Arrow_HotkeyToggle_BG_png_894663834:Class;
        private var _embed_css_images_Icons_WidgetMenu_VipList_idle_png_33682261:Class;
        private var _embed_css_images_custombutton_Button_Highlight_tileable_bc_pressed_png_827657205:Class;
        private var _embed_css_images_Button_Combat_Stop_pressed_png_1599664875:Class;
        private var _embed_css_images_custombutton_Button_Border_tileable_bc_idle_png_450765779:Class;
        private var _embed_css_images_Icons_WidgetMenu_Skull_idle_png_1287021933:Class;
        private var _embed_css_images_UnjustifiedPoints_png_1774338511:Class;
        private var _embed_css_images_Icons_Conditions_Freezing_png_1656036632:Class;
        private var _embed_css_images_Icons_WidgetMenu_Combat_idle_png_1479461364:Class;
        protected var m_SecondaryTimestamp:int = 0;
        private var _embed_css_images_Icons_BattleList_HideNPCs_active_png_1819940219:Class;
        private var _embed_css_images_Arrow_WidgetToggle_pressed_png_737576647:Class;
        private var _embed_css_images_Button_LockHotkeys_UnLocked_idle_png_6222830:Class;
        private var _embed_css_images_Icons_WidgetMenu_GetPremium_active_png_782014171:Class;
        private var _embed_css_images_custombutton_Button_Highlight_tileable_tl_pressed_png_2072464232:Class;
        private var _embed_css_images_Icons_WidgetMenu_Combat_idle_over_png_1132540975:Class;
        private var _embed_css_images_Icons_WidgetMenu_Containers_active_over_png_1891318253:Class;
        private var _embed_css_images_Icons_WidgetMenu_Combat_active_over_png_598120513:Class;
        private var _embed_css_images_Button_ChatTab_Close_pressed_png_1829708064:Class;
        private var _embed_css_images_Icons_CombatControls_DoveOn_idle_png_2145862302:Class;
        private var _embed_css_images_Button_Minimize_pressed_png_1610166640:Class;
        private var _embed_css_images_custombutton_Button_Border_tileable_tc_idle_png_1295188411:Class;
        private var _embed_css_images_Icons_CombatControls_WhiteHandOn_over_png_1557482930:Class;
        private var _embed_css_images_BG_BohemianTileable_Game_png_351109904:Class;
        private var _embed_css_images_Arrow_ScrollTabsHighlighted_idle_png_739248183:Class;
        private var _embed_css_images_custombutton_Button_Standard_tileable_bl_disabled_png_896803423:Class;
        private var _embed_css_images_BG_Bars_fat_enpieceOrnamented_png_1067104141:Class;
        protected var m_PremiumManager:PremiumManager = null;
        private var _embed_css_images_Button_Combat_Stop_over_png_622617399:Class;
        private var _embed_css_images_Icons_Inventory_StoreInbox_png_1503513115:Class;
        private var _embed_css_images_Icons_WidgetMenu_Minimap_active_over_png_512910992:Class;
        private var _embed_css_images_Icons_Conditions_Dazzled_png_1271753440:Class;
        private var _embed_css_images_custombutton_Button_Highlight_tileable_bc_idle_png_1952405807:Class;
        private var _embed_css_images_custombutton_Button_Border_tileable_bl_disabled_png_1526687986:Class;
        private var _embed_css_images_Minimap_png_743291237:Class;
        private var _64278964m_UISideBarB:SideBarWidget;
        private var _embed_css_images_BarsHealth_default_Yellow_png_861014389:Class;
        private var _embed_css_images_Icons_CombatControls_DoveOn_over_png_1260638622:Class;
        private var _embed_css____images_prey_prey_list_reroll_reactivate_png_1309895505:Class;
        private var _embed_css_images_custombutton_Button_IngameShopBuy_tileable_end_pressed_png_158904546:Class;
        private var _embed_css_images_BG_BohemianTileable_png_2136128651:Class;
        var _bindings:Array;
        private var _embed_css_images_Icons_TradeLists_ListDisplay_over_png_339097462:Class;
        private var _embed_css_images_Scrollbar_Arrow_down_pressed_png_1586024472:Class;
        private var _embed_css_images_BG_BarsProgress_compact_tileable_png_1910104912:Class;
        private var _embed_css_images_Icons_ProgressBars_ProgressOn_png_378619393:Class;
        private var _embed_css____images_prey_prey_list_reroll_small_disabled_png_546735861:Class;
        private var _embed_css_images_custombutton_Button_Standard_tileable_bc_over_png_319428930:Class;
        private var _embed_css_images_Button_ContainerUp_over_png_340384918:Class;
        private var _embed_css_images_Minimap_ZoomOut_over_png_448439766:Class;
        private var _embed_css_images_Slot_InventoryHead_protected_png_882668898:Class;
        private var _embed_css_images_Icons_ProgressBars_LargeStyle_png_1279068775:Class;
        private var _embed_css_images_custombutton_Button_Standard_tileable_tl_disabled_png_1118743245:Class;
        private var _embed_css_images_Button_PurchaseComplete_idle_png_1080771936:Class;
        private var _embed_css_images_custombutton_Button_Border_tileable_tc_disabled_png_1147826429:Class;
        private var _embed_css_images_Icons_WidgetMenu_Blessings_active_png_1548030222:Class;
        private var _embed_css_images_Icons_WidgetMenu_VipList_active_over_png_580713750:Class;
        private var _embed_css_images_BarsHealth_default_Mana_png_1278936006:Class;
        private var _embed_css_images_BarsHealth_compact_RedLow_png_228911156:Class;
        private var _embed_css_images_Icons_ProgressBars_DefaultStyle_png_2022171363:Class;
        private var _embed_css_images_Icons_ProgressBars_MagicLevel_png_1289462986:Class;
        private var _embed_css_images_Icon_NoPremium_png_877662716:Class;
        private var _embed_css_images_Icons_CombatControls_StandOff_over_png_320468254:Class;
        private var _embed_css_images_custombutton_Button_Highlight_tileable_bl_over_png_97063602:Class;
        private var _embed_css_images_Scrollbar_Handler_png_754588169:Class;
        private var _embed_css_images_Icons_WidgetHeaders_GetPremium_png_182154549:Class;
        private var _embed_css_images_slot_container_highlighted_png_1088656264:Class;
        private var _embed_css_images_custombutton_Button_Standard_tileable_mc_pressed_png_85541895:Class;
        private var _embed_css_images_Icons_Inventory_Store_png_1832608287:Class;
        private var _embed_css_images_Icons_CombatControls_ExpertMode_over_png_953121562:Class;
        private var _2056921391m_UISideBarToggleLeft:ToggleBar;
        private var _embed_css_images_Slot_InventoryShield_png_196310936:Class;
        private var _embed_css_images_Icons_CombatControls_RedFistOn_idle_png_688107:Class;
        private var _embed_css_images_Icons_BattleList_HideMonsters_active_png_1783623818:Class;
        private var _embed_css_images_ChatTab_tileable_png_877381598:Class;
        private var _embed_css_images_Arrow_ScrollHotkeys_disabled_png_733938325:Class;
        private var _embed_css_images_custombutton_Button_Border_tileable_ml_disabled_png_1336516115:Class;
        private var _embed_css_images_Button_ChatTab_Close_over_png_1810781612:Class;
        private var _embed_css_images_BG_BohemianTileable_ChatConsole_png_2057178741:Class;
        private var _embed_css_images_Icons_CombatControls_RedFistOff_idle_png_1876773025:Class;
        protected var m_AssetProvider:IAssetProvider = null;
        private var _embed_css_images_Icons_WidgetMenu_Minimap_idle_png_221878075:Class;
        private var _embed_css_images_Slot_Statusicon_highlighted_png_1342851938:Class;
        private var _embed_css_images_Icons_BattleList_HideNPCs_idle_png_2055571635:Class;
        private var _embed_css_images_custombutton_Button_Highlight_tileable_tc_over_png_407380753:Class;
        private var _embed_css_images_Button_LockHotkeys_Locked_over_png_484660859:Class;
        private var _embed_css_images_BarsXP_default__png_444460763:Class;
        private var _embed_css_images_Button_Close_pressed_png_1768279486:Class;
        private var _embed_css_images_BarsHealth_fat_Mana_png_1770288782:Class;
        private var _embed_css_images_BG_ChatTab_Tabdrop_png_137058100:Class;
        private var _embed_css_images_Slot_Statusicon_png_1614431506:Class;
        private var _embed_css_images_BuySellTab_idle_png_883931416:Class;
        private var _embed_css_images_Icons_WidgetHeaders_GeneralControls_png_451970594:Class;
        private var _embed_css_images_Scrollbar_Arrow_up_over_png_801461969:Class;
        private var _embed_css_images_BG_ChatTab_tileable_png_2085750710:Class;
        private var _embed_css_images_custombutton_Button_Gold_tileable_tl_idle_png_1601739540:Class;
        private var _embed_css_images_Icons_CombatControls_ExpertMode_idle_png_1284957210:Class;
        private var _embed_css_images_Icons_CombatControls_DefensiveOff_over_png_17933647:Class;
        private var _embed_css_images_Icons_CombatControls_MediumOn_over_png_998523367:Class;
        private var _embed_css_images_Slot_InventoryShield_protected_png_1278597573:Class;
        private var _embed_css_images_custombutton_Button_Highlight_tileable_tc_idle_png_872307695:Class;
        protected var m_DefaultOptionsAsset:OptionsAsset = null;
        private var _embed_css_images_Minimap_ZoomIn_pressed_png_1481321949:Class;
        private var _embed_css_images_Button_ChatTabNew_idle_png_1932679861:Class;
        private var _embed_css_images_Border_Widget_png_144373037:Class;
        private var _embed_css_images_Icons_BattleList_HideMonsters_active_over_png_785509171:Class;
        private var _embed_css_images_BarsHealth_default_RedLow_png_1850395094:Class;
        private var _embed_css_images_Icons_CombatControls_MediumOff_over_png_292746831:Class;
        private var _embed_css_images_custombutton_Button_Standard_tileable_ml_disabled_png_911289432:Class;
        private var _embed_css_images_ChatTab_tileable_idle_png_499418577:Class;
        private var _embed_css_images_Icons_WidgetHeaders_Skull_png_642557793:Class;
        private var _embed_css_images_custombutton_Button_Highlight_tileable_bl_idle_png_427592626:Class;
        private var _embed_css_images_Button_ChatTabNew_pressed_png_1126513111:Class;
        private var _embed_css_images_Slot_InventoryWeapon_protected_png_2014843798:Class;
        private var _embed_css_images_Icons_Conditions_Logoutblock_png_826428009:Class;
        private var _embed_css_images_Icons_CombatControls_DoveOff_over_png_897710896:Class;
        private var _embed_css_images_Icons_Conditions_Poisoned_png_2079503537:Class;
        private var _embed_css_images_Button_Close_idle_png_1484765638:Class;
        private var _embed_css_images_custombutton_Button_Border_tileable_bc_pressed_png_1654848065:Class;
        private var _embed_css_images_Slot_InventoryBoots_protected_png_665581237:Class;
        private var _embed_css_images_Icons_WidgetMenu_Skull_idle_over_png_280626998:Class;
        private var _embed_css_images_Icons_CombatControls_YellowHandOn_over_png_714949289:Class;
        private var m_ForceDisableGameWindowSizeCalc:Boolean = false;
        private var _embed_css_images_custombutton_Button_Highlight_tileable_tl_over_png_2104319140:Class;
        private var _64278963m_UISideBarC:SideBarWidget;
        private var _embed_css_images_Border02_WidgetSidebar_png_117159345:Class;
        private var _embed_css_images_Icons_TradeLists_ContainerDisplay_over_png_1203759647:Class;
        private var _embed_css_images_custombutton_Button_Standard_tileable_tl_over_png_687359365:Class;
        private var _embed_css_images_custombutton_Button_Gold_tileable_ml_pressed_png_1116473267:Class;
        private var _embed_css_images_Icons_CombatControls_DefensiveOn_active_png_2039564231:Class;
        private var _embed_css_images_Icons_CombatControls_Mounted_idle_png_325891217:Class;
        private var _embed_css_images_Icons_WidgetMenu_GeneralControls_active_over_png_442101789:Class;
        private var _embed_css____images_prey_prey_unlock_permanently_png_2008737555:Class;
        protected var m_CreatureStorage:CreatureStorage = null;
        private var _embed_css_images_Icons_ProgressBars_DistanceFighting_png_374752538:Class;
        private var _embed_css_images_custombutton_Button_Standard_tileable_bl_over_png_1063444457:Class;
        private var _embed_css_images_Icons_Conditions_Drunk_png_357443974:Class;
        private var _embed_css_____assets_images_imbuing_imbuing_icon_imbue_active_png_525826544:Class;
        private var _embed_css_images_Button_ChatTab_Close_idle_png_1596905812:Class;
        private var _embed_css_images_custombutton_Button_IngameShopBuy_tileable_over_png_2131882518:Class;
        private var _embed_css_images_Icons_ProgressBars_CompactStyle_png_2029575967:Class;
        private var _embed_css_images_Arrow_ScrollTabsHighlighted_over_png_1141670601:Class;
        private var _embed_css____images_prey_prey_list_reroll_disabled_png_1540923221:Class;
        private var _1356021457m_UICenterColumn:CustomDividedBox;
        private var _embed_css_images_Icons_WidgetMenu_VipList_active_png_979145257:Class;
        private var _embed_css_images_BarsXP_default_zero_png_1312716141:Class;
        private var _embed_css_images_Icons_ProgressBars_FistFighting_png_881076039:Class;
        private var _embed_css_images_slot_container_disabled_png_1808112001:Class;
        protected var m_UIEffectsManager:UIEffectsManager = null;
        private var _embed_css____images_prey_prey_list_reroll_small_reactivate_png_1305981915:Class;
        private var _embed_css_images_Icons_Conditions_Bleeding_png_21085300:Class;
        protected var m_ConnectionDataList:Vector.<IConnectionData> = null;
        private var _embed_css_images_Icons_Conditions_Strenghtened_png_686800249:Class;
        private var _embed_css_images_custombutton_Button_Standard_tileable_ml_over_png_120760672:Class;
        private var _embed_css_images_Button_Minimize_idle_png_1252485396:Class;
        private var _embed_css_images_Slot_InventoryBackpack_png_1273847565:Class;
        private var _embed_css_images_Minimap_Center_idle_png_1673985770:Class;
        private var _embed_css_images_custombutton_Button_IngameShopBuy_tileable_idle_png_868578070:Class;
        private var _embed_css_images_Icons_BattleList_HidePlayers_active_over_png_1091185778:Class;
        private var _embed_css_images_BG_Combat_ExpertOn_png_1524627954:Class;
        private var _embed_css_images_custombutton_Button_Highlight_tileable_bl_pressed_png_500120182:Class;
        private var _embed_css_images_Icons_BattleList_PartyMembers_active_over_png_677365957:Class;
        private var _228925540m_UIStatusWidget:StatusWidget;
        private var _embed_css_images_Slot_Hotkey_Cooldown_png_744290239:Class;
        private var _embed_css_images_slot_container_png_2040378388:Class;
        private var _embed_css_images_Icons_TradeLists_ListDisplay_idle_png_545437302:Class;
        private var _967396880m_UIBottomContainer:HBox;
        private var _embed_css_images_custombutton_Button_Border_tileable_tl_pressed_png_1775314060:Class;
        private var _embed_css_images_Button_ContainerUp_idle_png_673929622:Class;
        private var _2043305115m_UIActionBarRight:VActionBarWidget;
        private var _embed_css_images_Icons_WidgetMenu_Trades_idle_over_png_631890120:Class;
        private var _embed_css_images_Arrow_ScrollTabs_idle_png_1270948868:Class;
        private var _embed_css_images_Icons_WidgetMenu_Prey_idle_png_1118562058:Class;
        private var _embed_css_images_Icons_ProgressBars_Shielding_png_1014131488:Class;
        private var _embed_css_images_Icons_ProgressBars_SwordFighting_png_1072103270:Class;
        private var _embed_css_images_Button_MaximizePremium_idle_png_1811598005:Class;
        private var _embed_css_images_custombutton_Button_Border_tileable_tl_over_png_1999907720:Class;
        private var _embed_css_____assets_images_imbuing_imbuing_icon_useprotection_disabled_png_1323387736:Class;
        private var _embed_css_images_ChatTab_tileable_EndpieceRound_idle_png_1365852499:Class;
        private var _embed_css_images_custombutton_Button_Standard_tileable_tl_pressed_png_1972797785:Class;
        private var _embed_css_images_Icons_WidgetMenu_Blessings_active_over_png_132026795:Class;
        protected var m_AppearanceStorage:AppearanceStorage = null;
        private var _embed_css_images_Icons_CombatControls_WhiteHandOff_idle_png_809012736:Class;
        private var _embed_css_images_Icons_TradeLists_ListDisplay_pressed_png_1980153550:Class;
        private var _embed_css_images_BG_Bars_compact_enpieceOrnamented_png_986676493:Class;
        private var _embed_css_images_Icons_BattleList_HideSkulled_active_over_png_270646104:Class;
        private var _embed_css_images_BarsHealth_default_GreenLow_png_1611717052:Class;
        private var _embed_css_images_custombutton_Button_Standard_tileable_tc_disabled_png_312133720:Class;
        private var _embed_css_images_Icons_WidgetMenu_VipList_idle_over_png_552437416:Class;
        private var _embed_css_images_BarsHealth_fat_GreenLow_png_500916356:Class;
        private var _629924354m_UIActionBarBottom:HActionBarWidget;
        private var _embed_css_images_Slot_InventoryWeapon_png_1449088927:Class;
        public var _Tibia_Array1:Array;
        public var _Tibia_Array2:Array;
        private var _embed_css_images_Icons_WidgetMenu_Minimap_active_png_741211379:Class;
        private var _embed_css_images_Icons_CombatControls_PvPOff_active_png_71344612:Class;
        protected var m_ConnectionDataCurrent:int = -1;
        private var _embed_css_images_Button_Maximize_idle_png_1216450610:Class;
        private var _embed_css_images_Scrollbar_Arrow_down_idle_png_626586228:Class;
        private var _embed_css_images_custombutton_Button_Border_tileable_bl_over_png_545925962:Class;
        private var _embed_css_images_BarsHealth_default_RedLow2_png_1715771650:Class;
        private var _embed_css_____assets_images_imbuing_imbuing_icon_remove_disabled_png_1945969384:Class;
        private var _embed_css_images_custombutton_Button_Standard_tileable_bc_pressed_png_576805294:Class;
        private var _embed_css_images_Icons_CombatControls_MediumOff_idle_png_1524218033:Class;
        private var _embed_css_images_custombutton_Button_Gold_tileable_bl_over_png_1410168626:Class;
        private var _embed_css_____assets_images_imbuing_imbuing_icon_imbue_disabled_png_2033153132:Class;
        private var _embed_css_images_custombutton_Button_Standard_tileable_tc_pressed_png_1069038580:Class;
        private var _embed_css_images_BarsXP_default_malus_png_951462521:Class;
        private var _embed_css_images_Icons_WidgetMenu_Skull_active_over_png_831158504:Class;
        private var _embed_css_images_BG_BarsXP_default_endpiece_png_928913106:Class;
        private var _embed_css_images_Icons_WidgetMenu_BattleList_active_png_1125073948:Class;
        private var _embed_css_images_custombutton_Button_Standard_tileable_bc_idle_png_1580636226:Class;
        private var _embed_css_images_BarsHealth_fat_RedLow2_png_1786454646:Class;
        private var _embed_css_images_custombutton_Button_Standard_tileable_tl_idle_png_1966392453:Class;
        private var _embed_css_images_Arrow_ScrollHotkeys_idle_png_1125517443:Class;
        private var _embed_css_images_Icons_CombatControls_OffensiveOn_over_png_1980211325:Class;
        private var _embed_css_images_Icons_BattleList_HideSkulled_over_png_627187331:Class;
        private var _748017946m_UIInputHandler:InputHandler;
        private var _embed_css_images_Border02_png_325729410:Class;
        private var _embed_css_images_BG_Combat_ExpertOff_png_1529722330:Class;
        private var _embed_css_images_custombutton_Button_Highlight_tileable_bc_over_png_1065621457:Class;
        private var _embed_css_images_BG_Bars_default_enpiece_png_521656500:Class;
        private var _embed_css_images_BarsHealth_default_GreenFull_png_678064153:Class;
        private var _embed_css_images_Slot_InventoryRing_protected_png_804627022:Class;
        private var _embed_css_images_Icons_CombatControls_PvPOff_idle_png_1847341842:Class;
        private var _embed_css_images_BarsHealth_fat_RedLow_png_494783314:Class;
        private var _1423351586m_UIActionBarTop:HActionBarWidget;
        private var _embed_css_images_custombutton_Button_Border_tileable_ml_over_png_167463477:Class;
        private var _embed_css_images_Widget_Footer_tileable_end01_png_777083970:Class;
        private var _64278962m_UISideBarD:SideBarWidget;
        private var _embed_css_images_Icons_Conditions_MagicShield_png_143270392:Class;
        private var _embed_css_images_Icons_WidgetMenu_Prey_active_over_png_25492737:Class;
        private var _embed_css_images_Button_LockHotkeys_Locked_idle_png_289855355:Class;
        private var _embed_css_images_BarsHealth_compact_GreenFull_png_283383045:Class;
        private var _embed_css_images_Icons_WidgetMenu_Containers_idle_png_1823298914:Class;
        private var _embed_css_images_Icons_CombatControls_OffensiveOff_over_png_1125321337:Class;
        private var _embed_css_images_Button_Close_over_png_1835217606:Class;
        private var _embed_css_images_Arrow_ScrollTabsHighlighted_pressed_png_1078060789:Class;
        protected var m_TutorialData:Object;
        private var _embed_css_images_Scrollbar_Arrow_down_over_png_2055900812:Class;
        private var _embed_css_images_Icons_WidgetHeaders_Prey_png_2031287908:Class;
        protected var m_EnableFocusNotifier:Boolean = true;
        protected var m_CurrentOptionsUploading:Boolean = false;
        private var _embed_css_images_Icons_BattleList_HidePlayers_active_png_959473823:Class;
        private var _embed_css____images_prey_prey_list_reroll_small_reactivate_disabled_png_1736827266:Class;
        private var _embed_css_images_Icons_WidgetMenu_GetPremium_active_over_png_215310808:Class;
        private var _embed_css_images_slot_Hotkey_png_605729015:Class;
        private var _embed_css_images_custombutton_Button_Standard_tileable_tc_over_png_1706736752:Class;
        private var _embed_css_images_Icons_WidgetHeaders_Trades_png_893907303:Class;
        private var _embed_css_images_Icons_IngameShop_12x12_Yes_png_277089403:Class;
        private var _embed_css_images_custombutton_Button_Border_tileable_bc_over_png_103072467:Class;
        private var _embed_css_images_ChatTab_tileable_EndpieceRound_png_1194792086:Class;
        private var _embed_css_images_ChatTab_tileable_EndpieceLeft_idle_png_1373822136:Class;
        private var _embed_css_images_custombutton_Button_Gold_tileable_bc_over_png_1052722463:Class;
        private var _embed_css_images_Minimap_ZoomIn_over_png_2079840503:Class;
        protected var m_ChatStorage:ChatStorage = null;
        private var _embed_css_images_Icons_CombatControls_Mounted_over_png_530926481:Class;
        protected var m_Player:Player = null;
        private var _embed_css_images_Arrow_ScrollTabs_over_png_923510532:Class;
        private var _embed_css_images_Icons_WidgetMenu_Prey_idle_over_png_261378227:Class;
        protected var m_SessionKey:String = null;
        private var _embed_css_images_BG_Bars_fat_tileable_png_1989862757:Class;
        private var _embed_css_images_custombutton_Button_Standard_tileable_ml_pressed_png_228321892:Class;
        private var _embed_css_images_Icons_WidgetHeaders_SafeTrades_png_1432960306:Class;
        private var _1313911232m_UIWorldMapWindow:GameWindowContainer;
        private var _embed_css_images_custombutton_Button_Border_tileable_tl_idle_png_201169032:Class;
        private var _665607314m_UISideBarToggleRight:ToggleBar;
        protected var m_SeconaryTimer:Timer = null;
        private var _embed_css_images_Icons_BattleList_PartyMembers_over_png_276790960:Class;
        private var _embed_css_images_custombutton_Button_Gold_tileable_tc_pressed_png_808138077:Class;
        private var _embed_css_images_Arrow_Minimap_LevelUpDown_pressed_png_1806600070:Class;
        private var _embed_css_images_custombutton_Button_IngameShopBuy_tileable_end_over_png_1827437082:Class;
        private var _embed_css_images_Icons_CombatControls_MediumOn_idle_png_1346355943:Class;
        private var _embed_css_images_Icons_WidgetHeaders_VipList_png_497777823:Class;
        private var _embed_css_images_Arrow_ScrollTabs_disabled_png_1404963900:Class;
        private var _embed_css_images_Icons_WidgetHeaders_BattleList_png_1322398180:Class;
        private var _embed_css_images_Icons_CombatControls_PvPOn_active_png_804631442:Class;
        private var _embed_css_images_Icons_WidgetMenu_Inventory_idle_over_png_889585267:Class;
        private var _embed_css_images_Icons_Conditions_PZ_png_1757050258:Class;
        private var _embed_css_images_Icons_Conditions_Cursed_png_168758022:Class;
        private var _embed_css_images_Icons_WidgetMenu_GeneralControls_idle_over_png_1592718225:Class;
        protected var m_Communication:Communication = null;
        protected var m_MiniMapStorage:MiniMapStorage = null;
        private var _embed_css_images_Slot_InventoryNecklace_protected_png_1185619916:Class;
        private var _embed_css_images_Icons_CombatControls_DoveOff_idle_png_382376912:Class;
        private var _embed_css_images_custombutton_Button_Highlight_tileable_ml_pressed_png_1774737491:Class;
        private var _embed_css_images_custombutton_Button_Border_tileable_tc_over_png_2113343813:Class;
        private var _embed_css_images_custombutton_Button_Standard_tileable_tc_idle_png_429853040:Class;
        private var _embed_css_images_Icons_CombatControls_AutochaseOn_over_png_693464955:Class;
        private var _embed_css_images_Icons_Conditions_Hungry_png_950956587:Class;
        private var _embed_css_images_custombutton_Button_Gold_tileable_bl_idle_png_339290062:Class;
        private var _883427326m_UIChatWidget:ChatWidget;
        private var _embed_css_images_Minimap_ZoomOut_idle_png_1351608618:Class;
        var _watchers:Array;
        private var _embed_css_images_custombutton_Button_Standard_tileable_mc_over_png_796679197:Class;
        private var _embed_css____images_prey_prey_list_reroll_png_1445322350:Class;
        private var m_GameActionFactory:GameActionFactory = null;
        protected var m_ChannelsPending:Vector.<int> = null;
        private var m_ConnectionLostDialog:ConnectionLostWidget;
        private var _embed_css_images_Icons_WidgetMenu_Blessings_idle_png_1896392160:Class;
        private var _embed_css_images_Icons_WidgetMenu_BattleList_active_over_png_223263679:Class;
        private var _embed_css_images_Icons_WidgetMenu_Inventory_active_png_511365826:Class;
        private var _embed_css_images_Slot_InventoryAmmo_protected_png_240306684:Class;
        private var _embed_css_images_BG_Bars_fat_enpiece_png_182118724:Class;
        private var _embed_css_images_Arrow_Minimap_LevelUpDown_over_png_672496762:Class;
        private var _embed_css_images_Slot_InventoryHead_png_1097118931:Class;
        private var _embed_css_images_Slot_InventoryLegs_protected_png_656055687:Class;
        private var _embed_css_images_BarsHealth_compact_RedLow2_png_794387612:Class;
        private var _embed_css_images_BarsHealth_default_RedFull_png_333902423:Class;
        private var _embed_css_images_Icons_WidgetHeaders_Minimap_png_1702247865:Class;
        private var _embed_css_images_Button_ChatTabNew_over_png_132889525:Class;
        private var _embed_css_images_Icons_CombatControls_Unmounted_idle_png_1280851370:Class;
        private var _embed_css_images_Icons_ProgressBars_ClubFighting_png_1327306059:Class;
        private var _embed_css_images_BarsHealth_compact_Yellow_png_1279276727:Class;
        private var _embed_css_images_Minimap_Center_over_png_55780374:Class;
        private var _embed_css_images_Button_LockHotkeys_UnLocked_over_png_855936274:Class;
        static const CONNECTION_STATE_GAME:int = 4;
        private static const SHAREDOBJECT_NAME:String = "options";
        static const CONNECTION_STATE_PENDING:int = 3;
        public static const BUGGY_FLASH_PLAYER_VERSION:String = "21,0,0,182";
        public static const PROTOCOL_VERSION:int = 10990;
        public static var s_FrameTibiaTimestamp:Number = 0;
        public static var s_FrameRealTimestamp:Number = 0;
        static const ERR_INVALID_SIZE:int = 1;
        static const ERR_COULD_NOT_CONNECT:int = 5;
        public static const MAX_SESSION_KEY_LENGTH:int = 30;
        public static const CLIENT_TYPE:uint = 3;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        static const PACKETLENGTH_SIZE:int = 2;
        private static var s_LastTibiaFactorChangeRealTimestamp:int = 0;
        static const CHECKSUM_POS:int = 2;
        public static const CLIENT_VERSION:uint = 2370;
        public static const PREVIEW_STATE_PREVIEW_NO_ACTIVE_CHANGE:uint = 1;
        static const PAYLOADLENGTH_POS:int = 6;
        static const CONNECTION_STATE_DISCONNECTED:int = 0;
        private static const OPTIONS_SAVE_INTERVAL:int = 1.8e+006;
        public static const PREVIEW_STATE_REGULAR:uint = 0;
        static const ERR_INVALID_CHECKSUM:int = 2;
        static const HEADER_SIZE:int = 6;
        static const ERR_INTERNAL:int = 0;
        static const CHECKSUM_SIZE:int = 4;
        static const PAYLOADDATA_POSITION:int = 8;
        static const HEADER_POS:int = 0;
        static const ERR_INVALID_MESSAGE:int = 3;
        public static var s_TibiaLoginTimestamp:Number = 0;
        private static const BUNDLE:String = "Tibia";
        public static const PREVIEW_STATE_PREVIEW_WITH_ACTIVE_CHANGE:uint = 2;
        static const ERR_INVALID_STATE:int = 4;
        static const PAYLOADLENGTH_SIZE:int = 2;
        private static var s_InternalTibiaTimerFactor:Number = 1;
        public static const CLIENT_PREVIEW_STATE:uint = 0;
        static var _Tibia_StylesInit_done:Boolean = false;
        static const CONNECTION_STATE_CONNECTING_STAGE1:int = 1;
        static const CONNECTION_STATE_CONNECTING_STAGE2:int = 2;
        private static var s_LastTibiaFactorChangeTibiaTimestamp:uint = 0;
        private static var s_LastTibiaTimestamp:int = 0;
        static const PACKETLENGTH_POS:int = 0;
        static const PAYLOAD_POS:int = 6;
        static const ERR_CONNECTION_LOST:int = 6;

        public function Tibia()
        {
            this._documentDescriptor_ = new UIComponentDescriptor({type:Application, propertiesFactory:function () : Object
            {
                return {childDescriptors:[new UIComponentDescriptor({type:DividedBox, id:"m_UIOuterRootContainer", propertiesFactory:function () : Object
                {
                    return {percentWidth:100, percentHeight:100, doubleClickEnabled:true, liveDragging:true, resizeToContent:true, styleName:"invisibleDivider", childDescriptors:[new UIComponentDescriptor({type:HBox, id:"m_UITibiaRootContainer", propertiesFactory:function () : Object
                    {
                        return {percentWidth:100, percentHeight:100, minHeight:450, styleName:"rootContainer", childDescriptors:[new UIComponentDescriptor({type:SideBarWidget, id:"m_UISideBarA", propertiesFactory:function () : Object
                        {
                            return {percentHeight:100, styleWithBorder:"sideBarLeftWithBorder"};
                        }// end function
                        }), new UIComponentDescriptor({type:SideBarWidget, id:"m_UISideBarB", propertiesFactory:function () : Object
                        {
                            return {percentHeight:100};
                        }// end function
                        }), new UIComponentDescriptor({type:ToggleBar, id:"m_UISideBarToggleLeft", propertiesFactory:function () : Object
                        {
                            return {percentHeight:100, styleName:"sideBarToggleLeft", location:_Tibia_Array1_i()};
                        }// end function
                        }), new UIComponentDescriptor({type:CustomDividedBox, id:"m_UICenterColumn", events:{dividerRelease:"__m_UICenterColumn_dividerRelease"}, propertiesFactory:function () : Object
                        {
                            return {percentWidth:100, percentHeight:100, doubleClickEnabled:true, liveDragging:true, resizeToContent:true, styleName:"rootContainer", childDescriptors:[new UIComponentDescriptor({type:GridContainer, id:"m_UIGameWindow", events:{resize:"__m_UIGameWindow_resize"}, propertiesFactory:function () : Object
                            {
                                return {percentWidth:100, percentHeight:100, center:_Tibia_GameWindowContainer1_i(), top:_Tibia_StatusWidget1_i()};
                            }// end function
                            }), new UIComponentDescriptor({type:ChatWidget, id:"m_UIChatWidget", propertiesFactory:function () : Object
                            {
                                return {percentWidth:100, percentHeight:0};
                            }// end function
                            })]};
                        }// end function
                        }), new UIComponentDescriptor({type:ToggleBar, id:"m_UISideBarToggleRight", propertiesFactory:function () : Object
                        {
                            return {percentHeight:100, styleName:"sideBarToggleRight", location:_Tibia_Array2_i()};
                        }// end function
                        }), new UIComponentDescriptor({type:SideBarWidget, id:"m_UISideBarC", propertiesFactory:function () : Object
                        {
                            return {percentHeight:100};
                        }// end function
                        }), new UIComponentDescriptor({type:SideBarWidget, id:"m_UISideBarD", propertiesFactory:function () : Object
                        {
                            return {percentHeight:100, styleWithBorder:"sideBarRightWithBorder"};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:HBox, id:"m_UIBottomContainer", propertiesFactory:function () : Object
                    {
                        return {percentWidth:100, height:0};
                    }// end function
                    })]};
                }// end function
                }), new UIComponentDescriptor({type:InputHandler, id:"m_UIInputHandler", propertiesFactory:function () : Object
                {
                    return {width:0, height:0, x:-10, y:-10};
                }// end function
                })]};
            }// end function
            });
            this.m_ConnectionLostDialog = new ConnectionLostWidget();
            this.m_TutorialData = new Object();
            this.m_FailedConnectionRescheduler = new FailedConnectionRescheduler();
            this._embed_css_____assets_images_imbuing_imbuing_icon_imbue_active_png_525826544 = Tibia__embed_css_____assets_images_imbuing_imbuing_icon_imbue_active_png_525826544;
            this._embed_css_____assets_images_imbuing_imbuing_icon_imbue_disabled_png_2033153132 = Tibia__embed_css_____assets_images_imbuing_imbuing_icon_imbue_disabled_png_2033153132;
            this._embed_css_____assets_images_imbuing_imbuing_icon_remove_active_png_76120164 = Tibia__embed_css_____assets_images_imbuing_imbuing_icon_remove_active_png_76120164;
            this._embed_css_____assets_images_imbuing_imbuing_icon_remove_disabled_png_1945969384 = Tibia__embed_css_____assets_images_imbuing_imbuing_icon_remove_disabled_png_1945969384;
            this._embed_css_____assets_images_imbuing_imbuing_icon_useprotection_active_png_131442444 = Tibia__embed_css_____assets_images_imbuing_imbuing_icon_useprotection_active_png_131442444;
            this._embed_css_____assets_images_imbuing_imbuing_icon_useprotection_disabled_png_1323387736 = Tibia__embed_css_____assets_images_imbuing_imbuing_icon_useprotection_disabled_png_1323387736;
            this._embed_css_____assets_images_imbuing_imbuing_slot_empty_png_1852734938 = Tibia__embed_css_____assets_images_imbuing_imbuing_slot_empty_png_1852734938;
            this._embed_css_____assets_images_ingameshop_Icons_IngameShop_12x12_TibiaCoin_png_212042744 = Tibia__embed_css_____assets_images_ingameshop_Icons_IngameShop_12x12_TibiaCoin_png_212042744;
            this._embed_css_____assets_images_ingameshop_Icons_IngameShop_32x14_TransferCoins_png_970010606 = Tibia__embed_css_____assets_images_ingameshop_Icons_IngameShop_32x14_TransferCoins_png_970010606;
            this._embed_css____images_prey_prey_bonus_reroll_disabled_png_390059962 = Tibia__embed_css____images_prey_prey_bonus_reroll_disabled_png_390059962;
            this._embed_css____images_prey_prey_bonus_reroll_png_1466948457 = Tibia__embed_css____images_prey_prey_bonus_reroll_png_1466948457;
            this._embed_css____images_prey_prey_confirm_monster_selection_disabled_png_1414880872 = Tibia__embed_css____images_prey_prey_confirm_monster_selection_disabled_png_1414880872;
            this._embed_css____images_prey_prey_confirm_monster_selection_png_1647154181 = Tibia__embed_css____images_prey_prey_confirm_monster_selection_png_1647154181;
            this._embed_css____images_prey_prey_list_reroll_disabled_png_1540923221 = Tibia__embed_css____images_prey_prey_list_reroll_disabled_png_1540923221;
            this._embed_css____images_prey_prey_list_reroll_png_1445322350 = Tibia__embed_css____images_prey_prey_list_reroll_png_1445322350;
            this._embed_css____images_prey_prey_list_reroll_reactivate_disabled_png_745940684 = Tibia__embed_css____images_prey_prey_list_reroll_reactivate_disabled_png_745940684;
            this._embed_css____images_prey_prey_list_reroll_reactivate_png_1309895505 = Tibia__embed_css____images_prey_prey_list_reroll_reactivate_png_1309895505;
            this._embed_css____images_prey_prey_list_reroll_small_disabled_png_546735861 = Tibia__embed_css____images_prey_prey_list_reroll_small_disabled_png_546735861;
            this._embed_css____images_prey_prey_list_reroll_small_png_1530659080 = Tibia__embed_css____images_prey_prey_list_reroll_small_png_1530659080;
            this._embed_css____images_prey_prey_list_reroll_small_reactivate_disabled_png_1736827266 = Tibia__embed_css____images_prey_prey_list_reroll_small_reactivate_disabled_png_1736827266;
            this._embed_css____images_prey_prey_list_reroll_small_reactivate_png_1305981915 = Tibia__embed_css____images_prey_prey_list_reroll_small_reactivate_png_1305981915;
            this._embed_css____images_prey_prey_unlock_permanently_png_2008737555 = Tibia__embed_css____images_prey_prey_unlock_permanently_png_2008737555;
            this._embed_css____images_prey_prey_unlock_temporarily_png_727600544 = Tibia__embed_css____images_prey_prey_unlock_temporarily_png_727600544;
            this._embed_css_images_Arrow_HotkeyToggle_BG_png_894663834 = Tibia__embed_css_images_Arrow_HotkeyToggle_BG_png_894663834;
            this._embed_css_images_Arrow_Minimap_LevelUpDown_idle_png_341572474 = Tibia__embed_css_images_Arrow_Minimap_LevelUpDown_idle_png_341572474;
            this._embed_css_images_Arrow_Minimap_LevelUpDown_over_png_672496762 = Tibia__embed_css_images_Arrow_Minimap_LevelUpDown_over_png_672496762;
            this._embed_css_images_Arrow_Minimap_LevelUpDown_pressed_png_1806600070 = Tibia__embed_css_images_Arrow_Minimap_LevelUpDown_pressed_png_1806600070;
            this._embed_css_images_Arrow_ScrollHotkeys_disabled_png_733938325 = Tibia__embed_css_images_Arrow_ScrollHotkeys_disabled_png_733938325;
            this._embed_css_images_Arrow_ScrollHotkeys_idle_png_1125517443 = Tibia__embed_css_images_Arrow_ScrollHotkeys_idle_png_1125517443;
            this._embed_css_images_Arrow_ScrollHotkeys_over_png_384271747 = Tibia__embed_css_images_Arrow_ScrollHotkeys_over_png_384271747;
            this._embed_css_images_Arrow_ScrollHotkeys_pressed_png_1521804567 = Tibia__embed_css_images_Arrow_ScrollHotkeys_pressed_png_1521804567;
            this._embed_css_images_Arrow_ScrollTabsHighlighted_idle_png_739248183 = Tibia__embed_css_images_Arrow_ScrollTabsHighlighted_idle_png_739248183;
            this._embed_css_images_Arrow_ScrollTabsHighlighted_over_png_1141670601 = Tibia__embed_css_images_Arrow_ScrollTabsHighlighted_over_png_1141670601;
            this._embed_css_images_Arrow_ScrollTabsHighlighted_pressed_png_1078060789 = Tibia__embed_css_images_Arrow_ScrollTabsHighlighted_pressed_png_1078060789;
            this._embed_css_images_Arrow_ScrollTabs_disabled_png_1404963900 = Tibia__embed_css_images_Arrow_ScrollTabs_disabled_png_1404963900;
            this._embed_css_images_Arrow_ScrollTabs_idle_png_1270948868 = Tibia__embed_css_images_Arrow_ScrollTabs_idle_png_1270948868;
            this._embed_css_images_Arrow_ScrollTabs_over_png_923510532 = Tibia__embed_css_images_Arrow_ScrollTabs_over_png_923510532;
            this._embed_css_images_Arrow_ScrollTabs_pressed_png_23734072 = Tibia__embed_css_images_Arrow_ScrollTabs_pressed_png_23734072;
            this._embed_css_images_Arrow_WidgetToggle_BG_png_1428913496 = Tibia__embed_css_images_Arrow_WidgetToggle_BG_png_1428913496;
            this._embed_css_images_Arrow_WidgetToggle_idle_png_742472731 = Tibia__embed_css_images_Arrow_WidgetToggle_idle_png_742472731;
            this._embed_css_images_Arrow_WidgetToggle_over_png_411548443 = Tibia__embed_css_images_Arrow_WidgetToggle_over_png_411548443;
            this._embed_css_images_Arrow_WidgetToggle_pressed_png_737576647 = Tibia__embed_css_images_Arrow_WidgetToggle_pressed_png_737576647;
            this._embed_css_images_BG_BarsProgress_compact_endpiece_png_1855154097 = Tibia__embed_css_images_BG_BarsProgress_compact_endpiece_png_1855154097;
            this._embed_css_images_BG_BarsProgress_compact_tileable_png_1910104912 = Tibia__embed_css_images_BG_BarsProgress_compact_tileable_png_1910104912;
            this._embed_css_images_BG_BarsXP_default_endpiece_png_928913106 = Tibia__embed_css_images_BG_BarsXP_default_endpiece_png_928913106;
            this._embed_css_images_BG_BarsXP_default_tileable_png_940157883 = Tibia__embed_css_images_BG_BarsXP_default_tileable_png_940157883;
            this._embed_css_images_BG_Bars_compact_enpieceOrnamented_png_986676493 = Tibia__embed_css_images_BG_Bars_compact_enpieceOrnamented_png_986676493;
            this._embed_css_images_BG_Bars_compact_enpiece_png_1184339178 = Tibia__embed_css_images_BG_Bars_compact_enpiece_png_1184339178;
            this._embed_css_images_BG_Bars_compact_tileable_png_1166257409 = Tibia__embed_css_images_BG_Bars_compact_tileable_png_1166257409;
            this._embed_css_images_BG_Bars_default_enpieceOrnamented_png_1899164501 = Tibia__embed_css_images_BG_Bars_default_enpieceOrnamented_png_1899164501;
            this._embed_css_images_BG_Bars_default_enpiece_png_521656500 = Tibia__embed_css_images_BG_Bars_default_enpiece_png_521656500;
            this._embed_css_images_BG_Bars_default_tileable_png_870405027 = Tibia__embed_css_images_BG_Bars_default_tileable_png_870405027;
            this._embed_css_images_BG_Bars_fat_enpieceOrnamented_png_1067104141 = Tibia__embed_css_images_BG_Bars_fat_enpieceOrnamented_png_1067104141;
            this._embed_css_images_BG_Bars_fat_enpiece_png_182118724 = Tibia__embed_css_images_BG_Bars_fat_enpiece_png_182118724;
            this._embed_css_images_BG_Bars_fat_tileable_png_1989862757 = Tibia__embed_css_images_BG_Bars_fat_tileable_png_1989862757;
            this._embed_css_images_BG_BohemianTileable_ChatConsole_png_2057178741 = Tibia__embed_css_images_BG_BohemianTileable_ChatConsole_png_2057178741;
            this._embed_css_images_BG_BohemianTileable_Game_png_351109904 = Tibia__embed_css_images_BG_BohemianTileable_Game_png_351109904;
            this._embed_css_images_BG_BohemianTileable_png_2136128651 = Tibia__embed_css_images_BG_BohemianTileable_png_2136128651;
            this._embed_css_images_BG_ChatTab_Tabdrop_png_137058100 = Tibia__embed_css_images_BG_ChatTab_Tabdrop_png_137058100;
            this._embed_css_images_BG_ChatTab_tileable_png_2085750710 = Tibia__embed_css_images_BG_ChatTab_tileable_png_2085750710;
            this._embed_css_images_BG_Combat_ExpertOff_png_1529722330 = Tibia__embed_css_images_BG_Combat_ExpertOff_png_1529722330;
            this._embed_css_images_BG_Combat_ExpertOn_png_1524627954 = Tibia__embed_css_images_BG_Combat_ExpertOn_png_1524627954;
            this._embed_css_images_BG_Stone2_Tileable_png_1339293492 = Tibia__embed_css_images_BG_Stone2_Tileable_png_1339293492;
            this._embed_css_images_BG_Widget_Menu_png_1056150036 = Tibia__embed_css_images_BG_Widget_Menu_png_1056150036;
            this._embed_css_images_BarsHealth_compact_GreenFull_png_283383045 = Tibia__embed_css_images_BarsHealth_compact_GreenFull_png_283383045;
            this._embed_css_images_BarsHealth_compact_GreenLow_png_879908786 = Tibia__embed_css_images_BarsHealth_compact_GreenLow_png_879908786;
            this._embed_css_images_BarsHealth_compact_Mana_png_1773406568 = Tibia__embed_css_images_BarsHealth_compact_Mana_png_1773406568;
            this._embed_css_images_BarsHealth_compact_RedFull_png_1856496471 = Tibia__embed_css_images_BarsHealth_compact_RedFull_png_1856496471;
            this._embed_css_images_BarsHealth_compact_RedLow2_png_794387612 = Tibia__embed_css_images_BarsHealth_compact_RedLow2_png_794387612;
            this._embed_css_images_BarsHealth_compact_RedLow_png_228911156 = Tibia__embed_css_images_BarsHealth_compact_RedLow_png_228911156;
            this._embed_css_images_BarsHealth_compact_Yellow_png_1279276727 = Tibia__embed_css_images_BarsHealth_compact_Yellow_png_1279276727;
            this._embed_css_images_BarsHealth_default_GreenFull_png_678064153 = Tibia__embed_css_images_BarsHealth_default_GreenFull_png_678064153;
            this._embed_css_images_BarsHealth_default_GreenLow_png_1611717052 = Tibia__embed_css_images_BarsHealth_default_GreenLow_png_1611717052;
            this._embed_css_images_BarsHealth_default_Mana_png_1278936006 = Tibia__embed_css_images_BarsHealth_default_Mana_png_1278936006;
            this._embed_css_images_BarsHealth_default_RedFull_png_333902423 = Tibia__embed_css_images_BarsHealth_default_RedFull_png_333902423;
            this._embed_css_images_BarsHealth_default_RedLow2_png_1715771650 = Tibia__embed_css_images_BarsHealth_default_RedLow2_png_1715771650;
            this._embed_css_images_BarsHealth_default_RedLow_png_1850395094 = Tibia__embed_css_images_BarsHealth_default_RedLow_png_1850395094;
            this._embed_css_images_BarsHealth_default_Yellow_png_861014389 = Tibia__embed_css_images_BarsHealth_default_Yellow_png_861014389;
            this._embed_css_images_BarsHealth_fat_GreenFull_png_1619224031 = Tibia__embed_css_images_BarsHealth_fat_GreenFull_png_1619224031;
            this._embed_css_images_BarsHealth_fat_GreenLow_png_500916356 = Tibia__embed_css_images_BarsHealth_fat_GreenLow_png_500916356;
            this._embed_css_images_BarsHealth_fat_Mana_png_1770288782 = Tibia__embed_css_images_BarsHealth_fat_Mana_png_1770288782;
            this._embed_css_images_BarsHealth_fat_RedFull_png_1593128607 = Tibia__embed_css_images_BarsHealth_fat_RedFull_png_1593128607;
            this._embed_css_images_BarsHealth_fat_RedLow2_png_1786454646 = Tibia__embed_css_images_BarsHealth_fat_RedLow2_png_1786454646;
            this._embed_css_images_BarsHealth_fat_RedLow_png_494783314 = Tibia__embed_css_images_BarsHealth_fat_RedLow_png_494783314;
            this._embed_css_images_BarsHealth_fat_Yellow_png_1862887037 = Tibia__embed_css_images_BarsHealth_fat_Yellow_png_1862887037;
            this._embed_css_images_BarsProgress_compact_orange_png_546584162 = Tibia__embed_css_images_BarsProgress_compact_orange_png_546584162;
            this._embed_css_images_BarsXP_default__png_444460763 = Tibia__embed_css_images_BarsXP_default__png_444460763;
            this._embed_css_images_BarsXP_default_improved_png_1271383239 = Tibia__embed_css_images_BarsXP_default_improved_png_1271383239;
            this._embed_css_images_BarsXP_default_malus_png_951462521 = Tibia__embed_css_images_BarsXP_default_malus_png_951462521;
            this._embed_css_images_BarsXP_default_zero_png_1312716141 = Tibia__embed_css_images_BarsXP_default_zero_png_1312716141;
            this._embed_css_images_Bars_ProgressMarker_png_1964646600 = Tibia__embed_css_images_Bars_ProgressMarker_png_1964646600;
            this._embed_css_images_Border02_WidgetSidebar_png_117159345 = Tibia__embed_css_images_Border02_WidgetSidebar_png_117159345;
            this._embed_css_images_Border02_WidgetSidebar_slim_png_477968117 = Tibia__embed_css_images_Border02_WidgetSidebar_slim_png_477968117;
            this._embed_css_images_Border02_corners_png_2021856475 = Tibia__embed_css_images_Border02_corners_png_2021856475;
            this._embed_css_images_Border02_png_325729410 = Tibia__embed_css_images_Border02_png_325729410;
            this._embed_css_images_Border_Widget_corner_png_1032170261 = Tibia__embed_css_images_Border_Widget_corner_png_1032170261;
            this._embed_css_images_Border_Widget_png_144373037 = Tibia__embed_css_images_Border_Widget_png_144373037;
            this._embed_css_images_Button_ChatTabIgnore_idle_png_767593529 = Tibia__embed_css_images_Button_ChatTabIgnore_idle_png_767593529;
            this._embed_css_images_Button_ChatTabIgnore_over_png_1029437127 = Tibia__embed_css_images_Button_ChatTabIgnore_over_png_1029437127;
            this._embed_css_images_Button_ChatTabIgnore_pressed_png_445557299 = Tibia__embed_css_images_Button_ChatTabIgnore_pressed_png_445557299;
            this._embed_css_images_Button_ChatTabNew_idle_png_1932679861 = Tibia__embed_css_images_Button_ChatTabNew_idle_png_1932679861;
            this._embed_css_images_Button_ChatTabNew_over_png_132889525 = Tibia__embed_css_images_Button_ChatTabNew_over_png_132889525;
            this._embed_css_images_Button_ChatTabNew_pressed_png_1126513111 = Tibia__embed_css_images_Button_ChatTabNew_pressed_png_1126513111;
            this._embed_css_images_Button_ChatTab_Close_idle_png_1596905812 = Tibia__embed_css_images_Button_ChatTab_Close_idle_png_1596905812;
            this._embed_css_images_Button_ChatTab_Close_over_png_1810781612 = Tibia__embed_css_images_Button_ChatTab_Close_over_png_1810781612;
            this._embed_css_images_Button_ChatTab_Close_pressed_png_1829708064 = Tibia__embed_css_images_Button_ChatTab_Close_pressed_png_1829708064;
            this._embed_css_images_Button_Close_disabled_png_985641870 = Tibia__embed_css_images_Button_Close_disabled_png_985641870;
            this._embed_css_images_Button_Close_idle_png_1484765638 = Tibia__embed_css_images_Button_Close_idle_png_1484765638;
            this._embed_css_images_Button_Close_over_png_1835217606 = Tibia__embed_css_images_Button_Close_over_png_1835217606;
            this._embed_css_images_Button_Close_pressed_png_1768279486 = Tibia__embed_css_images_Button_Close_pressed_png_1768279486;
            this._embed_css_images_Button_Combat_Stop_idle_png_2057116105 = Tibia__embed_css_images_Button_Combat_Stop_idle_png_2057116105;
            this._embed_css_images_Button_Combat_Stop_over_png_622617399 = Tibia__embed_css_images_Button_Combat_Stop_over_png_622617399;
            this._embed_css_images_Button_Combat_Stop_pressed_png_1599664875 = Tibia__embed_css_images_Button_Combat_Stop_pressed_png_1599664875;
            this._embed_css_images_Button_ContainerUp_idle_png_673929622 = Tibia__embed_css_images_Button_ContainerUp_idle_png_673929622;
            this._embed_css_images_Button_ContainerUp_over_png_340384918 = Tibia__embed_css_images_Button_ContainerUp_over_png_340384918;
            this._embed_css_images_Button_ContainerUp_pressed_png_103378762 = Tibia__embed_css_images_Button_ContainerUp_pressed_png_103378762;
            this._embed_css_images_Button_LockHotkeys_Locked_idle_png_289855355 = Tibia__embed_css_images_Button_LockHotkeys_Locked_idle_png_289855355;
            this._embed_css_images_Button_LockHotkeys_Locked_over_png_484660859 = Tibia__embed_css_images_Button_LockHotkeys_Locked_over_png_484660859;
            this._embed_css_images_Button_LockHotkeys_UnLocked_idle_png_6222830 = Tibia__embed_css_images_Button_LockHotkeys_UnLocked_idle_png_6222830;
            this._embed_css_images_Button_LockHotkeys_UnLocked_over_png_855936274 = Tibia__embed_css_images_Button_LockHotkeys_UnLocked_over_png_855936274;
            this._embed_css_images_Button_MaximizePremium_idle_png_1811598005 = Tibia__embed_css_images_Button_MaximizePremium_idle_png_1811598005;
            this._embed_css_images_Button_MaximizePremium_over_png_73419701 = Tibia__embed_css_images_Button_MaximizePremium_over_png_73419701;
            this._embed_css_images_Button_Maximize_idle_png_1216450610 = Tibia__embed_css_images_Button_Maximize_idle_png_1216450610;
            this._embed_css_images_Button_Maximize_over_png_580574926 = Tibia__embed_css_images_Button_Maximize_over_png_580574926;
            this._embed_css_images_Button_Maximize_pressed_png_551093474 = Tibia__embed_css_images_Button_Maximize_pressed_png_551093474;
            this._embed_css_images_Button_Minimize_idle_png_1252485396 = Tibia__embed_css_images_Button_Minimize_idle_png_1252485396;
            this._embed_css_images_Button_Minimize_over_png_2130500116 = Tibia__embed_css_images_Button_Minimize_over_png_2130500116;
            this._embed_css_images_Button_Minimize_pressed_png_1610166640 = Tibia__embed_css_images_Button_Minimize_pressed_png_1610166640;
            this._embed_css_images_Button_PurchaseComplete_idle_png_1080771936 = Tibia__embed_css_images_Button_PurchaseComplete_idle_png_1080771936;
            this._embed_css_images_Button_PurchaseComplete_over_png_1965214304 = Tibia__embed_css_images_Button_PurchaseComplete_over_png_1965214304;
            this._embed_css_images_Button_PurchaseComplete_pressed_png_231187156 = Tibia__embed_css_images_Button_PurchaseComplete_pressed_png_231187156;
            this._embed_css_images_BuySellTab_active_png_1732627654 = Tibia__embed_css_images_BuySellTab_active_png_1732627654;
            this._embed_css_images_BuySellTab_idle_png_883931416 = Tibia__embed_css_images_BuySellTab_idle_png_883931416;
            this._embed_css_images_ChatTab_tileable_EndpieceLeft_idle_png_1373822136 = Tibia__embed_css_images_ChatTab_tileable_EndpieceLeft_idle_png_1373822136;
            this._embed_css_images_ChatTab_tileable_EndpieceLeft_png_528087243 = Tibia__embed_css_images_ChatTab_tileable_EndpieceLeft_png_528087243;
            this._embed_css_images_ChatTab_tileable_EndpieceRound_idle_png_1365852499 = Tibia__embed_css_images_ChatTab_tileable_EndpieceRound_idle_png_1365852499;
            this._embed_css_images_ChatTab_tileable_EndpieceRound_png_1194792086 = Tibia__embed_css_images_ChatTab_tileable_EndpieceRound_png_1194792086;
            this._embed_css_images_ChatTab_tileable_idle_png_499418577 = Tibia__embed_css_images_ChatTab_tileable_idle_png_499418577;
            this._embed_css_images_ChatTab_tileable_png_877381598 = Tibia__embed_css_images_ChatTab_tileable_png_877381598;
            this._embed_css_images_ChatWindow_Mover_png_2093646078 = Tibia__embed_css_images_ChatWindow_Mover_png_2093646078;
            this._embed_css_images_Icon_NoPremium_png_877662716 = Tibia__embed_css_images_Icon_NoPremium_png_877662716;
            this._embed_css_images_Icon_Premium_png_247411897 = Tibia__embed_css_images_Icon_Premium_png_247411897;
            this._embed_css_images_Icons_BattleList_HideMonsters_active_over_png_785509171 = Tibia__embed_css_images_Icons_BattleList_HideMonsters_active_over_png_785509171;
            this._embed_css_images_Icons_BattleList_HideMonsters_active_png_1783623818 = Tibia__embed_css_images_Icons_BattleList_HideMonsters_active_png_1783623818;
            this._embed_css_images_Icons_BattleList_HideMonsters_idle_png_1309271256 = Tibia__embed_css_images_Icons_BattleList_HideMonsters_idle_png_1309271256;
            this._embed_css_images_Icons_BattleList_HideMonsters_over_png_1724873768 = Tibia__embed_css_images_Icons_BattleList_HideMonsters_over_png_1724873768;
            this._embed_css_images_Icons_BattleList_HideNPCs_active_over_png_689351800 = Tibia__embed_css_images_Icons_BattleList_HideNPCs_active_over_png_689351800;
            this._embed_css_images_Icons_BattleList_HideNPCs_active_png_1819940219 = Tibia__embed_css_images_Icons_BattleList_HideNPCs_active_png_1819940219;
            this._embed_css_images_Icons_BattleList_HideNPCs_idle_png_2055571635 = Tibia__embed_css_images_Icons_BattleList_HideNPCs_idle_png_2055571635;
            this._embed_css_images_Icons_BattleList_HideNPCs_over_png_1176765363 = Tibia__embed_css_images_Icons_BattleList_HideNPCs_over_png_1176765363;
            this._embed_css_images_Icons_BattleList_HidePlayers_active_over_png_1091185778 = Tibia__embed_css_images_Icons_BattleList_HidePlayers_active_over_png_1091185778;
            this._embed_css_images_Icons_BattleList_HidePlayers_active_png_959473823 = Tibia__embed_css_images_Icons_BattleList_HidePlayers_active_png_959473823;
            this._embed_css_images_Icons_BattleList_HidePlayers_idle_png_182344541 = Tibia__embed_css_images_Icons_BattleList_HidePlayers_idle_png_182344541;
            this._embed_css_images_Icons_BattleList_HidePlayers_over_png_696587683 = Tibia__embed_css_images_Icons_BattleList_HidePlayers_over_png_696587683;
            this._embed_css_images_Icons_BattleList_HideSkulled_active_over_png_270646104 = Tibia__embed_css_images_Icons_BattleList_HideSkulled_active_over_png_270646104;
            this._embed_css_images_Icons_BattleList_HideSkulled_active_png_1617013419 = Tibia__embed_css_images_Icons_BattleList_HideSkulled_active_png_1617013419;
            this._embed_css_images_Icons_BattleList_HideSkulled_idle_png_438934403 = Tibia__embed_css_images_Icons_BattleList_HideSkulled_idle_png_438934403;
            this._embed_css_images_Icons_BattleList_HideSkulled_over_png_627187331 = Tibia__embed_css_images_Icons_BattleList_HideSkulled_over_png_627187331;
            this._embed_css_images_Icons_BattleList_PartyMembers_active_over_png_677365957 = Tibia__embed_css_images_Icons_BattleList_PartyMembers_active_over_png_677365957;
            this._embed_css_images_Icons_BattleList_PartyMembers_active_png_2093200322 = Tibia__embed_css_images_Icons_BattleList_PartyMembers_active_png_2093200322;
            this._embed_css_images_Icons_BattleList_PartyMembers_idle_png_585889360 = Tibia__embed_css_images_Icons_BattleList_PartyMembers_idle_png_585889360;
            this._embed_css_images_Icons_BattleList_PartyMembers_over_png_276790960 = Tibia__embed_css_images_Icons_BattleList_PartyMembers_over_png_276790960;
            this._embed_css_images_Icons_CombatControls_AutochaseOn_idle_png_1042873467 = Tibia__embed_css_images_Icons_CombatControls_AutochaseOn_idle_png_1042873467;
            this._embed_css_images_Icons_CombatControls_AutochaseOn_over_png_693464955 = Tibia__embed_css_images_Icons_CombatControls_AutochaseOn_over_png_693464955;
            this._embed_css_images_Icons_CombatControls_DefensiveOff_idle_png_1782109617 = Tibia__embed_css_images_Icons_CombatControls_DefensiveOff_idle_png_1782109617;
            this._embed_css_images_Icons_CombatControls_DefensiveOff_over_png_17933647 = Tibia__embed_css_images_Icons_CombatControls_DefensiveOff_over_png_17933647;
            this._embed_css_images_Icons_CombatControls_DefensiveOn_active_png_2039564231 = Tibia__embed_css_images_Icons_CombatControls_DefensiveOn_active_png_2039564231;
            this._embed_css_images_Icons_CombatControls_DefensiveOn_idle_png_1669654951 = Tibia__embed_css_images_Icons_CombatControls_DefensiveOn_idle_png_1669654951;
            this._embed_css_images_Icons_CombatControls_DoveOff_idle_png_382376912 = Tibia__embed_css_images_Icons_CombatControls_DoveOff_idle_png_382376912;
            this._embed_css_images_Icons_CombatControls_DoveOff_over_png_897710896 = Tibia__embed_css_images_Icons_CombatControls_DoveOff_over_png_897710896;
            this._embed_css_images_Icons_CombatControls_DoveOn_idle_png_2145862302 = Tibia__embed_css_images_Icons_CombatControls_DoveOn_idle_png_2145862302;
            this._embed_css_images_Icons_CombatControls_DoveOn_over_png_1260638622 = Tibia__embed_css_images_Icons_CombatControls_DoveOn_over_png_1260638622;
            this._embed_css_images_Icons_CombatControls_ExpertModeOn_idle_png_664956415 = Tibia__embed_css_images_Icons_CombatControls_ExpertModeOn_idle_png_664956415;
            this._embed_css_images_Icons_CombatControls_ExpertModeOn_over_png_1934161151 = Tibia__embed_css_images_Icons_CombatControls_ExpertModeOn_over_png_1934161151;
            this._embed_css_images_Icons_CombatControls_ExpertMode_disabled_png_219629266 = Tibia__embed_css_images_Icons_CombatControls_ExpertMode_disabled_png_219629266;
            this._embed_css_images_Icons_CombatControls_ExpertMode_idle_png_1284957210 = Tibia__embed_css_images_Icons_CombatControls_ExpertMode_idle_png_1284957210;
            this._embed_css_images_Icons_CombatControls_ExpertMode_over_png_953121562 = Tibia__embed_css_images_Icons_CombatControls_ExpertMode_over_png_953121562;
            this._embed_css_images_Icons_CombatControls_MediumOff_idle_png_1524218033 = Tibia__embed_css_images_Icons_CombatControls_MediumOff_idle_png_1524218033;
            this._embed_css_images_Icons_CombatControls_MediumOff_over_png_292746831 = Tibia__embed_css_images_Icons_CombatControls_MediumOff_over_png_292746831;
            this._embed_css_images_Icons_CombatControls_MediumOn_idle_png_1346355943 = Tibia__embed_css_images_Icons_CombatControls_MediumOn_idle_png_1346355943;
            this._embed_css_images_Icons_CombatControls_MediumOn_over_png_998523367 = Tibia__embed_css_images_Icons_CombatControls_MediumOn_over_png_998523367;
            this._embed_css_images_Icons_CombatControls_Mounted_idle_png_325891217 = Tibia__embed_css_images_Icons_CombatControls_Mounted_idle_png_325891217;
            this._embed_css_images_Icons_CombatControls_Mounted_over_png_530926481 = Tibia__embed_css_images_Icons_CombatControls_Mounted_over_png_530926481;
            this._embed_css_images_Icons_CombatControls_OffensiveOff_idle_png_47876985 = Tibia__embed_css_images_Icons_CombatControls_OffensiveOff_idle_png_47876985;
            this._embed_css_images_Icons_CombatControls_OffensiveOff_over_png_1125321337 = Tibia__embed_css_images_Icons_CombatControls_OffensiveOff_over_png_1125321337;
            this._embed_css_images_Icons_CombatControls_OffensiveOn_idle_png_644555133 = Tibia__embed_css_images_Icons_CombatControls_OffensiveOn_idle_png_644555133;
            this._embed_css_images_Icons_CombatControls_OffensiveOn_over_png_1980211325 = Tibia__embed_css_images_Icons_CombatControls_OffensiveOn_over_png_1980211325;
            this._embed_css_images_Icons_CombatControls_PvPOff_active_png_71344612 = Tibia__embed_css_images_Icons_CombatControls_PvPOff_active_png_71344612;
            this._embed_css_images_Icons_CombatControls_PvPOff_idle_png_1847341842 = Tibia__embed_css_images_Icons_CombatControls_PvPOff_idle_png_1847341842;
            this._embed_css_images_Icons_CombatControls_PvPOn_active_png_804631442 = Tibia__embed_css_images_Icons_CombatControls_PvPOn_active_png_804631442;
            this._embed_css_images_Icons_CombatControls_PvPOn_idle_png_456051716 = Tibia__embed_css_images_Icons_CombatControls_PvPOn_idle_png_456051716;
            this._embed_css_images_Icons_CombatControls_RedFistOff_idle_png_1876773025 = Tibia__embed_css_images_Icons_CombatControls_RedFistOff_idle_png_1876773025;
            this._embed_css_images_Icons_CombatControls_RedFistOff_over_png_1009372065 = Tibia__embed_css_images_Icons_CombatControls_RedFistOff_over_png_1009372065;
            this._embed_css_images_Icons_CombatControls_RedFistOn_idle_png_688107 = Tibia__embed_css_images_Icons_CombatControls_RedFistOn_idle_png_688107;
            this._embed_css_images_Icons_CombatControls_RedFistOn_over_png_868094187 = Tibia__embed_css_images_Icons_CombatControls_RedFistOn_over_png_868094187;
            this._embed_css_images_Icons_CombatControls_StandOff_idle_png_1478662626 = Tibia__embed_css_images_Icons_CombatControls_StandOff_idle_png_1478662626;
            this._embed_css_images_Icons_CombatControls_StandOff_over_png_320468254 = Tibia__embed_css_images_Icons_CombatControls_StandOff_over_png_320468254;
            this._embed_css_images_Icons_CombatControls_Unmounted_idle_png_1280851370 = Tibia__embed_css_images_Icons_CombatControls_Unmounted_idle_png_1280851370;
            this._embed_css_images_Icons_CombatControls_Unmounted_over_png_1075295914 = Tibia__embed_css_images_Icons_CombatControls_Unmounted_over_png_1075295914;
            this._embed_css_images_Icons_CombatControls_WhiteHandOff_idle_png_809012736 = Tibia__embed_css_images_Icons_CombatControls_WhiteHandOff_idle_png_809012736;
            this._embed_css_images_Icons_CombatControls_WhiteHandOff_over_png_619710208 = Tibia__embed_css_images_Icons_CombatControls_WhiteHandOff_over_png_619710208;
            this._embed_css_images_Icons_CombatControls_WhiteHandOn_idle_png_1762909362 = Tibia__embed_css_images_Icons_CombatControls_WhiteHandOn_idle_png_1762909362;
            this._embed_css_images_Icons_CombatControls_WhiteHandOn_over_png_1557482930 = Tibia__embed_css_images_Icons_CombatControls_WhiteHandOn_over_png_1557482930;
            this._embed_css_images_Icons_CombatControls_YellowHandOff_idle_png_900406131 = Tibia__embed_css_images_Icons_CombatControls_YellowHandOff_idle_png_900406131;
            this._embed_css_images_Icons_CombatControls_YellowHandOff_over_png_1175362675 = Tibia__embed_css_images_Icons_CombatControls_YellowHandOff_over_png_1175362675;
            this._embed_css_images_Icons_CombatControls_YellowHandOn_idle_png_559733847 = Tibia__embed_css_images_Icons_CombatControls_YellowHandOn_idle_png_559733847;
            this._embed_css_images_Icons_CombatControls_YellowHandOn_over_png_714949289 = Tibia__embed_css_images_Icons_CombatControls_YellowHandOn_over_png_714949289;
            this._embed_css_images_Icons_Conditions_Bleeding_png_21085300 = Tibia__embed_css_images_Icons_Conditions_Bleeding_png_21085300;
            this._embed_css_images_Icons_Conditions_Burning_png_1074259001 = Tibia__embed_css_images_Icons_Conditions_Burning_png_1074259001;
            this._embed_css_images_Icons_Conditions_Cursed_png_168758022 = Tibia__embed_css_images_Icons_Conditions_Cursed_png_168758022;
            this._embed_css_images_Icons_Conditions_Dazzled_png_1271753440 = Tibia__embed_css_images_Icons_Conditions_Dazzled_png_1271753440;
            this._embed_css_images_Icons_Conditions_Drowning_png_68156910 = Tibia__embed_css_images_Icons_Conditions_Drowning_png_68156910;
            this._embed_css_images_Icons_Conditions_Drunk_png_357443974 = Tibia__embed_css_images_Icons_Conditions_Drunk_png_357443974;
            this._embed_css_images_Icons_Conditions_Electrified_png_1640933398 = Tibia__embed_css_images_Icons_Conditions_Electrified_png_1640933398;
            this._embed_css_images_Icons_Conditions_Freezing_png_1656036632 = Tibia__embed_css_images_Icons_Conditions_Freezing_png_1656036632;
            this._embed_css_images_Icons_Conditions_Haste_png_250099713 = Tibia__embed_css_images_Icons_Conditions_Haste_png_250099713;
            this._embed_css_images_Icons_Conditions_Hungry_png_950956587 = Tibia__embed_css_images_Icons_Conditions_Hungry_png_950956587;
            this._embed_css_images_Icons_Conditions_Logoutblock_png_826428009 = Tibia__embed_css_images_Icons_Conditions_Logoutblock_png_826428009;
            this._embed_css_images_Icons_Conditions_MagicShield_png_143270392 = Tibia__embed_css_images_Icons_Conditions_MagicShield_png_143270392;
            this._embed_css_images_Icons_Conditions_PZ_png_1757050258 = Tibia__embed_css_images_Icons_Conditions_PZ_png_1757050258;
            this._embed_css_images_Icons_Conditions_PZlock_png_1286930259 = Tibia__embed_css_images_Icons_Conditions_PZlock_png_1286930259;
            this._embed_css_images_Icons_Conditions_Poisoned_png_2079503537 = Tibia__embed_css_images_Icons_Conditions_Poisoned_png_2079503537;
            this._embed_css_images_Icons_Conditions_Slowed_png_270576332 = Tibia__embed_css_images_Icons_Conditions_Slowed_png_270576332;
            this._embed_css_images_Icons_Conditions_Strenghtened_png_686800249 = Tibia__embed_css_images_Icons_Conditions_Strenghtened_png_686800249;
            this._embed_css_images_Icons_IngameShop_12x12_No_png_432435573 = Tibia__embed_css_images_Icons_IngameShop_12x12_No_png_432435573;
            this._embed_css_images_Icons_IngameShop_12x12_Yes_png_277089403 = Tibia__embed_css_images_Icons_IngameShop_12x12_Yes_png_277089403;
            this._embed_css_images_Icons_Inventory_StoreInbox_png_1503513115 = Tibia__embed_css_images_Icons_Inventory_StoreInbox_png_1503513115;
            this._embed_css_images_Icons_Inventory_Store_png_1832608287 = Tibia__embed_css_images_Icons_Inventory_Store_png_1832608287;
            this._embed_css_images_Icons_ProgressBars_AxeFighting_png_9426725 = Tibia__embed_css_images_Icons_ProgressBars_AxeFighting_png_9426725;
            this._embed_css_images_Icons_ProgressBars_ClubFighting_png_1327306059 = Tibia__embed_css_images_Icons_ProgressBars_ClubFighting_png_1327306059;
            this._embed_css_images_Icons_ProgressBars_CompactStyle_png_2029575967 = Tibia__embed_css_images_Icons_ProgressBars_CompactStyle_png_2029575967;
            this._embed_css_images_Icons_ProgressBars_DefaultStyle_png_2022171363 = Tibia__embed_css_images_Icons_ProgressBars_DefaultStyle_png_2022171363;
            this._embed_css_images_Icons_ProgressBars_DistanceFighting_png_374752538 = Tibia__embed_css_images_Icons_ProgressBars_DistanceFighting_png_374752538;
            this._embed_css_images_Icons_ProgressBars_Fishing_png_244935797 = Tibia__embed_css_images_Icons_ProgressBars_Fishing_png_244935797;
            this._embed_css_images_Icons_ProgressBars_FistFighting_png_881076039 = Tibia__embed_css_images_Icons_ProgressBars_FistFighting_png_881076039;
            this._embed_css_images_Icons_ProgressBars_LargeStyle_png_1279068775 = Tibia__embed_css_images_Icons_ProgressBars_LargeStyle_png_1279068775;
            this._embed_css_images_Icons_ProgressBars_MagicLevel_png_1289462986 = Tibia__embed_css_images_Icons_ProgressBars_MagicLevel_png_1289462986;
            this._embed_css_images_Icons_ProgressBars_ParallelStyle_png_233055275 = Tibia__embed_css_images_Icons_ProgressBars_ParallelStyle_png_233055275;
            this._embed_css_images_Icons_ProgressBars_ProgressOff_png_1974802685 = Tibia__embed_css_images_Icons_ProgressBars_ProgressOff_png_1974802685;
            this._embed_css_images_Icons_ProgressBars_ProgressOn_png_378619393 = Tibia__embed_css_images_Icons_ProgressBars_ProgressOn_png_378619393;
            this._embed_css_images_Icons_ProgressBars_Shielding_png_1014131488 = Tibia__embed_css_images_Icons_ProgressBars_Shielding_png_1014131488;
            this._embed_css_images_Icons_ProgressBars_SwordFighting_png_1072103270 = Tibia__embed_css_images_Icons_ProgressBars_SwordFighting_png_1072103270;
            this._embed_css_images_Icons_TradeLists_ContainerDisplay_idle_png_856063263 = Tibia__embed_css_images_Icons_TradeLists_ContainerDisplay_idle_png_856063263;
            this._embed_css_images_Icons_TradeLists_ContainerDisplay_over_png_1203759647 = Tibia__embed_css_images_Icons_TradeLists_ContainerDisplay_over_png_1203759647;
            this._embed_css_images_Icons_TradeLists_ContainerDisplay_pressed_png_545689075 = Tibia__embed_css_images_Icons_TradeLists_ContainerDisplay_pressed_png_545689075;
            this._embed_css_images_Icons_TradeLists_ListDisplay_idle_png_545437302 = Tibia__embed_css_images_Icons_TradeLists_ListDisplay_idle_png_545437302;
            this._embed_css_images_Icons_TradeLists_ListDisplay_over_png_339097462 = Tibia__embed_css_images_Icons_TradeLists_ListDisplay_over_png_339097462;
            this._embed_css_images_Icons_TradeLists_ListDisplay_pressed_png_1980153550 = Tibia__embed_css_images_Icons_TradeLists_ListDisplay_pressed_png_1980153550;
            this._embed_css_images_Icons_WidgetHeaders_BattleList_png_1322398180 = Tibia__embed_css_images_Icons_WidgetHeaders_BattleList_png_1322398180;
            this._embed_css_images_Icons_WidgetHeaders_Combat_png_589713946 = Tibia__embed_css_images_Icons_WidgetHeaders_Combat_png_589713946;
            this._embed_css_images_Icons_WidgetHeaders_GeneralControls_png_451970594 = Tibia__embed_css_images_Icons_WidgetHeaders_GeneralControls_png_451970594;
            this._embed_css_images_Icons_WidgetHeaders_GetPremium_png_182154549 = Tibia__embed_css_images_Icons_WidgetHeaders_GetPremium_png_182154549;
            this._embed_css_images_Icons_WidgetHeaders_Inventory_png_1408226468 = Tibia__embed_css_images_Icons_WidgetHeaders_Inventory_png_1408226468;
            this._embed_css_images_Icons_WidgetHeaders_Minimap_png_1702247865 = Tibia__embed_css_images_Icons_WidgetHeaders_Minimap_png_1702247865;
            this._embed_css_images_Icons_WidgetHeaders_Prey_png_2031287908 = Tibia__embed_css_images_Icons_WidgetHeaders_Prey_png_2031287908;
            this._embed_css_images_Icons_WidgetHeaders_SafeTrades_png_1432960306 = Tibia__embed_css_images_Icons_WidgetHeaders_SafeTrades_png_1432960306;
            this._embed_css_images_Icons_WidgetHeaders_Skull_png_642557793 = Tibia__embed_css_images_Icons_WidgetHeaders_Skull_png_642557793;
            this._embed_css_images_Icons_WidgetHeaders_Spells_png_186815355 = Tibia__embed_css_images_Icons_WidgetHeaders_Spells_png_186815355;
            this._embed_css_images_Icons_WidgetHeaders_Trades_png_893907303 = Tibia__embed_css_images_Icons_WidgetHeaders_Trades_png_893907303;
            this._embed_css_images_Icons_WidgetHeaders_VipList_png_497777823 = Tibia__embed_css_images_Icons_WidgetHeaders_VipList_png_497777823;
            this._embed_css_images_Icons_WidgetMenu_BattleList_active_over_png_223263679 = Tibia__embed_css_images_Icons_WidgetMenu_BattleList_active_over_png_223263679;
            this._embed_css_images_Icons_WidgetMenu_BattleList_active_png_1125073948 = Tibia__embed_css_images_Icons_WidgetMenu_BattleList_active_png_1125073948;
            this._embed_css_images_Icons_WidgetMenu_BattleList_idle_over_png_665859085 = Tibia__embed_css_images_Icons_WidgetMenu_BattleList_idle_over_png_665859085;
            this._embed_css_images_Icons_WidgetMenu_BattleList_idle_png_1174603830 = Tibia__embed_css_images_Icons_WidgetMenu_BattleList_idle_png_1174603830;
            this._embed_css_images_Icons_WidgetMenu_Blessings_active_over_png_132026795 = Tibia__embed_css_images_Icons_WidgetMenu_Blessings_active_over_png_132026795;
            this._embed_css_images_Icons_WidgetMenu_Blessings_active_png_1548030222 = Tibia__embed_css_images_Icons_WidgetMenu_Blessings_active_png_1548030222;
            this._embed_css_images_Icons_WidgetMenu_Blessings_idle_png_1896392160 = Tibia__embed_css_images_Icons_WidgetMenu_Blessings_idle_png_1896392160;
            this._embed_css_images_Icons_WidgetMenu_Combat_active_over_png_598120513 = Tibia__embed_css_images_Icons_WidgetMenu_Combat_active_over_png_598120513;
            this._embed_css_images_Icons_WidgetMenu_Combat_active_png_254301134 = Tibia__embed_css_images_Icons_WidgetMenu_Combat_active_png_254301134;
            this._embed_css_images_Icons_WidgetMenu_Combat_idle_over_png_1132540975 = Tibia__embed_css_images_Icons_WidgetMenu_Combat_idle_over_png_1132540975;
            this._embed_css_images_Icons_WidgetMenu_Combat_idle_png_1479461364 = Tibia__embed_css_images_Icons_WidgetMenu_Combat_idle_png_1479461364;
            this._embed_css_images_Icons_WidgetMenu_Containers_active_over_png_1891318253 = Tibia__embed_css_images_Icons_WidgetMenu_Containers_active_over_png_1891318253;
            this._embed_css_images_Icons_WidgetMenu_Containers_active_png_313595792 = Tibia__embed_css_images_Icons_WidgetMenu_Containers_active_png_313595792;
            this._embed_css_images_Icons_WidgetMenu_Containers_idle_over_png_1944340881 = Tibia__embed_css_images_Icons_WidgetMenu_Containers_idle_over_png_1944340881;
            this._embed_css_images_Icons_WidgetMenu_Containers_idle_png_1823298914 = Tibia__embed_css_images_Icons_WidgetMenu_Containers_idle_png_1823298914;
            this._embed_css_images_Icons_WidgetMenu_GeneralControls_active_over_png_442101789 = Tibia__embed_css_images_Icons_WidgetMenu_GeneralControls_active_over_png_442101789;
            this._embed_css_images_Icons_WidgetMenu_GeneralControls_active_png_1274097504 = Tibia__embed_css_images_Icons_WidgetMenu_GeneralControls_active_png_1274097504;
            this._embed_css_images_Icons_WidgetMenu_GeneralControls_idle_over_png_1592718225 = Tibia__embed_css_images_Icons_WidgetMenu_GeneralControls_idle_over_png_1592718225;
            this._embed_css_images_Icons_WidgetMenu_GeneralControls_idle_png_1571902642 = Tibia__embed_css_images_Icons_WidgetMenu_GeneralControls_idle_png_1571902642;
            this._embed_css_images_Icons_WidgetMenu_GetPremium_active_over_png_215310808 = Tibia__embed_css_images_Icons_WidgetMenu_GetPremium_active_over_png_215310808;
            this._embed_css_images_Icons_WidgetMenu_GetPremium_active_png_782014171 = Tibia__embed_css_images_Icons_WidgetMenu_GetPremium_active_png_782014171;
            this._embed_css_images_Icons_WidgetMenu_GetPremium_idle_png_1642768429 = Tibia__embed_css_images_Icons_WidgetMenu_GetPremium_idle_png_1642768429;
            this._embed_css_images_Icons_WidgetMenu_Inventory_active_over_png_605598747 = Tibia__embed_css_images_Icons_WidgetMenu_Inventory_active_over_png_605598747;
            this._embed_css_images_Icons_WidgetMenu_Inventory_active_png_511365826 = Tibia__embed_css_images_Icons_WidgetMenu_Inventory_active_png_511365826;
            this._embed_css_images_Icons_WidgetMenu_Inventory_idle_over_png_889585267 = Tibia__embed_css_images_Icons_WidgetMenu_Inventory_idle_over_png_889585267;
            this._embed_css_images_Icons_WidgetMenu_Inventory_idle_png_1926255504 = Tibia__embed_css_images_Icons_WidgetMenu_Inventory_idle_png_1926255504;
            this._embed_css_images_Icons_WidgetMenu_Minimap_active_over_png_512910992 = Tibia__embed_css_images_Icons_WidgetMenu_Minimap_active_over_png_512910992;
            this._embed_css_images_Icons_WidgetMenu_Minimap_active_png_741211379 = Tibia__embed_css_images_Icons_WidgetMenu_Minimap_active_png_741211379;
            this._embed_css_images_Icons_WidgetMenu_Minimap_idle_over_png_1782493982 = Tibia__embed_css_images_Icons_WidgetMenu_Minimap_idle_over_png_1782493982;
            this._embed_css_images_Icons_WidgetMenu_Minimap_idle_png_221878075 = Tibia__embed_css_images_Icons_WidgetMenu_Minimap_idle_png_221878075;
            this._embed_css_images_Icons_WidgetMenu_Prey_active_over_png_25492737 = Tibia__embed_css_images_Icons_WidgetMenu_Prey_active_over_png_25492737;
            this._embed_css_images_Icons_WidgetMenu_Prey_active_png_1402332324 = Tibia__embed_css_images_Icons_WidgetMenu_Prey_active_png_1402332324;
            this._embed_css_images_Icons_WidgetMenu_Prey_idle_over_png_261378227 = Tibia__embed_css_images_Icons_WidgetMenu_Prey_idle_over_png_261378227;
            this._embed_css_images_Icons_WidgetMenu_Prey_idle_png_1118562058 = Tibia__embed_css_images_Icons_WidgetMenu_Prey_idle_png_1118562058;
            this._embed_css_images_Icons_WidgetMenu_Skull_active_over_png_831158504 = Tibia__embed_css_images_Icons_WidgetMenu_Skull_active_over_png_831158504;
            this._embed_css_images_Icons_WidgetMenu_Skull_active_png_1803973467 = Tibia__embed_css_images_Icons_WidgetMenu_Skull_active_png_1803973467;
            this._embed_css_images_Icons_WidgetMenu_Skull_idle_over_png_280626998 = Tibia__embed_css_images_Icons_WidgetMenu_Skull_idle_over_png_280626998;
            this._embed_css_images_Icons_WidgetMenu_Skull_idle_png_1287021933 = Tibia__embed_css_images_Icons_WidgetMenu_Skull_idle_png_1287021933;
            this._embed_css_images_Icons_WidgetMenu_Trades_active_over_png_1585907014 = Tibia__embed_css_images_Icons_WidgetMenu_Trades_active_over_png_1585907014;
            this._embed_css_images_Icons_WidgetMenu_Trades_active_png_1327120247 = Tibia__embed_css_images_Icons_WidgetMenu_Trades_active_png_1327120247;
            this._embed_css_images_Icons_WidgetMenu_Trades_idle_over_png_631890120 = Tibia__embed_css_images_Icons_WidgetMenu_Trades_idle_over_png_631890120;
            this._embed_css_images_Icons_WidgetMenu_Trades_idle_png_856125637 = Tibia__embed_css_images_Icons_WidgetMenu_Trades_idle_png_856125637;
            this._embed_css_images_Icons_WidgetMenu_VipList_active_over_png_580713750 = Tibia__embed_css_images_Icons_WidgetMenu_VipList_active_over_png_580713750;
            this._embed_css_images_Icons_WidgetMenu_VipList_active_png_979145257 = Tibia__embed_css_images_Icons_WidgetMenu_VipList_active_png_979145257;
            this._embed_css_images_Icons_WidgetMenu_VipList_idle_over_png_552437416 = Tibia__embed_css_images_Icons_WidgetMenu_VipList_idle_over_png_552437416;
            this._embed_css_images_Icons_WidgetMenu_VipList_idle_png_33682261 = Tibia__embed_css_images_Icons_WidgetMenu_VipList_idle_png_33682261;
            this._embed_css_images_Inventory_png_152874110 = Tibia__embed_css_images_Inventory_png_152874110;
            this._embed_css_images_Minimap_Center_active_png_1589000392 = Tibia__embed_css_images_Minimap_Center_active_png_1589000392;
            this._embed_css_images_Minimap_Center_idle_png_1673985770 = Tibia__embed_css_images_Minimap_Center_idle_png_1673985770;
            this._embed_css_images_Minimap_Center_over_png_55780374 = Tibia__embed_css_images_Minimap_Center_over_png_55780374;
            this._embed_css_images_Minimap_ZoomIn_idle_png_257074697 = Tibia__embed_css_images_Minimap_ZoomIn_idle_png_257074697;
            this._embed_css_images_Minimap_ZoomIn_over_png_2079840503 = Tibia__embed_css_images_Minimap_ZoomIn_over_png_2079840503;
            this._embed_css_images_Minimap_ZoomIn_pressed_png_1481321949 = Tibia__embed_css_images_Minimap_ZoomIn_pressed_png_1481321949;
            this._embed_css_images_Minimap_ZoomOut_idle_png_1351608618 = Tibia__embed_css_images_Minimap_ZoomOut_idle_png_1351608618;
            this._embed_css_images_Minimap_ZoomOut_over_png_448439766 = Tibia__embed_css_images_Minimap_ZoomOut_over_png_448439766;
            this._embed_css_images_Minimap_ZoomOut_pressed_png_688977162 = Tibia__embed_css_images_Minimap_ZoomOut_pressed_png_688977162;
            this._embed_css_images_Minimap_png_743291237 = Tibia__embed_css_images_Minimap_png_743291237;
            this._embed_css_images_Scrollbar_Arrow_down_idle_png_626586228 = Tibia__embed_css_images_Scrollbar_Arrow_down_idle_png_626586228;
            this._embed_css_images_Scrollbar_Arrow_down_over_png_2055900812 = Tibia__embed_css_images_Scrollbar_Arrow_down_over_png_2055900812;
            this._embed_css_images_Scrollbar_Arrow_down_pressed_png_1586024472 = Tibia__embed_css_images_Scrollbar_Arrow_down_pressed_png_1586024472;
            this._embed_css_images_Scrollbar_Arrow_up_idle_png_459269585 = Tibia__embed_css_images_Scrollbar_Arrow_up_idle_png_459269585;
            this._embed_css_images_Scrollbar_Arrow_up_over_png_801461969 = Tibia__embed_css_images_Scrollbar_Arrow_up_over_png_801461969;
            this._embed_css_images_Scrollbar_Arrow_up_pressed_png_33235269 = Tibia__embed_css_images_Scrollbar_Arrow_up_pressed_png_33235269;
            this._embed_css_images_Scrollbar_Handler_png_754588169 = Tibia__embed_css_images_Scrollbar_Handler_png_754588169;
            this._embed_css_images_Scrollbar_tileable_png_1684281047 = Tibia__embed_css_images_Scrollbar_tileable_png_1684281047;
            this._embed_css_images_Slot_Hotkey_Cooldown_png_744290239 = Tibia__embed_css_images_Slot_Hotkey_Cooldown_png_744290239;
            this._embed_css_images_Slot_InventoryAmmo_png_1547247007 = Tibia__embed_css_images_Slot_InventoryAmmo_png_1547247007;
            this._embed_css_images_Slot_InventoryAmmo_protected_png_240306684 = Tibia__embed_css_images_Slot_InventoryAmmo_protected_png_240306684;
            this._embed_css_images_Slot_InventoryArmor_png_1774073578 = Tibia__embed_css_images_Slot_InventoryArmor_png_1774073578;
            this._embed_css_images_Slot_InventoryArmor_protected_png_927863849 = Tibia__embed_css_images_Slot_InventoryArmor_protected_png_927863849;
            this._embed_css_images_Slot_InventoryBackpack_png_1273847565 = Tibia__embed_css_images_Slot_InventoryBackpack_png_1273847565;
            this._embed_css_images_Slot_InventoryBackpack_protected_png_415207230 = Tibia__embed_css_images_Slot_InventoryBackpack_protected_png_415207230;
            this._embed_css_images_Slot_InventoryBoots_png_1390788408 = Tibia__embed_css_images_Slot_InventoryBoots_png_1390788408;
            this._embed_css_images_Slot_InventoryBoots_protected_png_665581237 = Tibia__embed_css_images_Slot_InventoryBoots_protected_png_665581237;
            this._embed_css_images_Slot_InventoryHead_png_1097118931 = Tibia__embed_css_images_Slot_InventoryHead_png_1097118931;
            this._embed_css_images_Slot_InventoryHead_protected_png_882668898 = Tibia__embed_css_images_Slot_InventoryHead_protected_png_882668898;
            this._embed_css_images_Slot_InventoryLegs_png_1709854540 = Tibia__embed_css_images_Slot_InventoryLegs_png_1709854540;
            this._embed_css_images_Slot_InventoryLegs_protected_png_656055687 = Tibia__embed_css_images_Slot_InventoryLegs_protected_png_656055687;
            this._embed_css_images_Slot_InventoryNecklace_png_1546753575 = Tibia__embed_css_images_Slot_InventoryNecklace_png_1546753575;
            this._embed_css_images_Slot_InventoryNecklace_protected_png_1185619916 = Tibia__embed_css_images_Slot_InventoryNecklace_protected_png_1185619916;
            this._embed_css_images_Slot_InventoryRing_png_332734525 = Tibia__embed_css_images_Slot_InventoryRing_png_332734525;
            this._embed_css_images_Slot_InventoryRing_protected_png_804627022 = Tibia__embed_css_images_Slot_InventoryRing_protected_png_804627022;
            this._embed_css_images_Slot_InventoryShield_png_196310936 = Tibia__embed_css_images_Slot_InventoryShield_png_196310936;
            this._embed_css_images_Slot_InventoryShield_protected_png_1278597573 = Tibia__embed_css_images_Slot_InventoryShield_protected_png_1278597573;
            this._embed_css_images_Slot_InventoryWeapon_png_1449088927 = Tibia__embed_css_images_Slot_InventoryWeapon_png_1449088927;
            this._embed_css_images_Slot_InventoryWeapon_protected_png_2014843798 = Tibia__embed_css_images_Slot_InventoryWeapon_protected_png_2014843798;
            this._embed_css_images_Slot_Statusicon_highlighted_png_1342851938 = Tibia__embed_css_images_Slot_Statusicon_highlighted_png_1342851938;
            this._embed_css_images_Slot_Statusicon_png_1614431506 = Tibia__embed_css_images_Slot_Statusicon_png_1614431506;
            this._embed_css_images_UnjustifiedPoints_png_1774338511 = Tibia__embed_css_images_UnjustifiedPoints_png_1774338511;
            this._embed_css_images_Widget_Footer_tileable_end01_png_777083970 = Tibia__embed_css_images_Widget_Footer_tileable_end01_png_777083970;
            this._embed_css_images_Widget_Footer_tileable_end02_png_770143431 = Tibia__embed_css_images_Widget_Footer_tileable_end02_png_770143431;
            this._embed_css_images_Widget_Footer_tileable_png_1521000729 = Tibia__embed_css_images_Widget_Footer_tileable_png_1521000729;
            this._embed_css_images_Widget_HeaderBG_png_1268436051 = Tibia__embed_css_images_Widget_HeaderBG_png_1268436051;
            this._embed_css_images_custombutton_Button_Border_tileable_bc_disabled_png_703276661 = Tibia__embed_css_images_custombutton_Button_Border_tileable_bc_disabled_png_703276661;
            this._embed_css_images_custombutton_Button_Border_tileable_bc_idle_png_450765779 = Tibia__embed_css_images_custombutton_Button_Border_tileable_bc_idle_png_450765779;
            this._embed_css_images_custombutton_Button_Border_tileable_bc_over_png_103072467 = Tibia__embed_css_images_custombutton_Button_Border_tileable_bc_over_png_103072467;
            this._embed_css_images_custombutton_Button_Border_tileable_bc_pressed_png_1654848065 = Tibia__embed_css_images_custombutton_Button_Border_tileable_bc_pressed_png_1654848065;
            this._embed_css_images_custombutton_Button_Border_tileable_bl_disabled_png_1526687986 = Tibia__embed_css_images_custombutton_Button_Border_tileable_bl_disabled_png_1526687986;
            this._embed_css_images_custombutton_Button_Border_tileable_bl_idle_png_1739897418 = Tibia__embed_css_images_custombutton_Button_Border_tileable_bl_idle_png_1739897418;
            this._embed_css_images_custombutton_Button_Border_tileable_bl_over_png_545925962 = Tibia__embed_css_images_custombutton_Button_Border_tileable_bl_over_png_545925962;
            this._embed_css_images_custombutton_Button_Border_tileable_bl_pressed_png_2020010902 = Tibia__embed_css_images_custombutton_Button_Border_tileable_bl_pressed_png_2020010902;
            this._embed_css_images_custombutton_Button_Border_tileable_ml_disabled_png_1336516115 = Tibia__embed_css_images_custombutton_Button_Border_tileable_ml_disabled_png_1336516115;
            this._embed_css_images_custombutton_Button_Border_tileable_ml_idle_png_633391925 = Tibia__embed_css_images_custombutton_Button_Border_tileable_ml_idle_png_633391925;
            this._embed_css_images_custombutton_Button_Border_tileable_ml_over_png_167463477 = Tibia__embed_css_images_custombutton_Button_Border_tileable_ml_over_png_167463477;
            this._embed_css_images_custombutton_Button_Border_tileable_ml_pressed_png_931026351 = Tibia__embed_css_images_custombutton_Button_Border_tileable_ml_pressed_png_931026351;
            this._embed_css_images_custombutton_Button_Border_tileable_tc_disabled_png_1147826429 = Tibia__embed_css_images_custombutton_Button_Border_tileable_tc_disabled_png_1147826429;
            this._embed_css_images_custombutton_Button_Border_tileable_tc_idle_png_1295188411 = Tibia__embed_css_images_custombutton_Button_Border_tileable_tc_idle_png_1295188411;
            this._embed_css_images_custombutton_Button_Border_tileable_tc_over_png_2113343813 = Tibia__embed_css_images_custombutton_Button_Border_tileable_tc_over_png_2113343813;
            this._embed_css_images_custombutton_Button_Border_tileable_tc_pressed_png_90896863 = Tibia__embed_css_images_custombutton_Button_Border_tileable_tc_pressed_png_90896863;
            this._embed_css_images_custombutton_Button_Border_tileable_tl_disabled_png_592849536 = Tibia__embed_css_images_custombutton_Button_Border_tileable_tl_disabled_png_592849536;
            this._embed_css_images_custombutton_Button_Border_tileable_tl_idle_png_201169032 = Tibia__embed_css_images_custombutton_Button_Border_tileable_tl_idle_png_201169032;
            this._embed_css_images_custombutton_Button_Border_tileable_tl_over_png_1999907720 = Tibia__embed_css_images_custombutton_Button_Border_tileable_tl_over_png_1999907720;
            this._embed_css_images_custombutton_Button_Border_tileable_tl_pressed_png_1775314060 = Tibia__embed_css_images_custombutton_Button_Border_tileable_tl_pressed_png_1775314060;
            this._embed_css_images_custombutton_Button_Gold_tileable_bc_idle_png_779535903 = Tibia__embed_css_images_custombutton_Button_Gold_tileable_bc_idle_png_779535903;
            this._embed_css_images_custombutton_Button_Gold_tileable_bc_over_png_1052722463 = Tibia__embed_css_images_custombutton_Button_Gold_tileable_bc_over_png_1052722463;
            this._embed_css_images_custombutton_Button_Gold_tileable_bc_pressed_png_1305691179 = Tibia__embed_css_images_custombutton_Button_Gold_tileable_bc_pressed_png_1305691179;
            this._embed_css_images_custombutton_Button_Gold_tileable_bl_idle_png_339290062 = Tibia__embed_css_images_custombutton_Button_Gold_tileable_bl_idle_png_339290062;
            this._embed_css_images_custombutton_Button_Gold_tileable_bl_over_png_1410168626 = Tibia__embed_css_images_custombutton_Button_Gold_tileable_bl_over_png_1410168626;
            this._embed_css_images_custombutton_Button_Gold_tileable_bl_pressed_png_1593023754 = Tibia__embed_css_images_custombutton_Button_Gold_tileable_bl_pressed_png_1593023754;
            this._embed_css_images_custombutton_Button_Gold_tileable_mc_idle_png_385207242 = Tibia__embed_css_images_custombutton_Button_Gold_tileable_mc_idle_png_385207242;
            this._embed_css_images_custombutton_Button_Gold_tileable_mc_over_png_1264143562 = Tibia__embed_css_images_custombutton_Button_Gold_tileable_mc_over_png_1264143562;
            this._embed_css_images_custombutton_Button_Gold_tileable_mc_pressed_png_1784525290 = Tibia__embed_css_images_custombutton_Button_Gold_tileable_mc_pressed_png_1784525290;
            this._embed_css_images_custombutton_Button_Gold_tileable_ml_idle_png_1579896193 = Tibia__embed_css_images_custombutton_Button_Gold_tileable_ml_idle_png_1579896193;
            this._embed_css_images_custombutton_Button_Gold_tileable_ml_over_png_1836575873 = Tibia__embed_css_images_custombutton_Button_Gold_tileable_ml_over_png_1836575873;
            this._embed_css_images_custombutton_Button_Gold_tileable_ml_pressed_png_1116473267 = Tibia__embed_css_images_custombutton_Button_Gold_tileable_ml_pressed_png_1116473267;
            this._embed_css_images_custombutton_Button_Gold_tileable_tc_idle_png_105353361 = Tibia__embed_css_images_custombutton_Button_Gold_tileable_tc_idle_png_105353361;
            this._embed_css_images_custombutton_Button_Gold_tileable_tc_over_png_152825967 = Tibia__embed_css_images_custombutton_Button_Gold_tileable_tc_over_png_152825967;
            this._embed_css_images_custombutton_Button_Gold_tileable_tc_pressed_png_808138077 = Tibia__embed_css_images_custombutton_Button_Gold_tileable_tc_pressed_png_808138077;
            this._embed_css_images_custombutton_Button_Gold_tileable_tl_idle_png_1601739540 = Tibia__embed_css_images_custombutton_Button_Gold_tileable_tl_idle_png_1601739540;
            this._embed_css_images_custombutton_Button_Gold_tileable_tl_over_png_1414190572 = Tibia__embed_css_images_custombutton_Button_Gold_tileable_tl_over_png_1414190572;
            this._embed_css_images_custombutton_Button_Gold_tileable_tl_pressed_png_87983224 = Tibia__embed_css_images_custombutton_Button_Gold_tileable_tl_pressed_png_87983224;
            this._embed_css_images_custombutton_Button_Highlight_tileable_bc_idle_png_1952405807 = Tibia__embed_css_images_custombutton_Button_Highlight_tileable_bc_idle_png_1952405807;
            this._embed_css_images_custombutton_Button_Highlight_tileable_bc_over_png_1065621457 = Tibia__embed_css_images_custombutton_Button_Highlight_tileable_bc_over_png_1065621457;
            this._embed_css_images_custombutton_Button_Highlight_tileable_bc_pressed_png_827657205 = Tibia__embed_css_images_custombutton_Button_Highlight_tileable_bc_pressed_png_827657205;
            this._embed_css_images_custombutton_Button_Highlight_tileable_bl_idle_png_427592626 = Tibia__embed_css_images_custombutton_Button_Highlight_tileable_bl_idle_png_427592626;
            this._embed_css_images_custombutton_Button_Highlight_tileable_bl_over_png_97063602 = Tibia__embed_css_images_custombutton_Button_Highlight_tileable_bl_over_png_97063602;
            this._embed_css_images_custombutton_Button_Highlight_tileable_bl_pressed_png_500120182 = Tibia__embed_css_images_custombutton_Button_Highlight_tileable_bl_pressed_png_500120182;
            this._embed_css_images_custombutton_Button_Highlight_tileable_ml_idle_png_1542815105 = Tibia__embed_css_images_custombutton_Button_Highlight_tileable_ml_idle_png_1542815105;
            this._embed_css_images_custombutton_Button_Highlight_tileable_ml_over_png_953421695 = Tibia__embed_css_images_custombutton_Button_Highlight_tileable_ml_over_png_953421695;
            this._embed_css_images_custombutton_Button_Highlight_tileable_ml_pressed_png_1774737491 = Tibia__embed_css_images_custombutton_Button_Highlight_tileable_ml_pressed_png_1774737491;
            this._embed_css_images_custombutton_Button_Highlight_tileable_tc_idle_png_872307695 = Tibia__embed_css_images_custombutton_Button_Highlight_tileable_tc_idle_png_872307695;
            this._embed_css_images_custombutton_Button_Highlight_tileable_tc_over_png_407380753 = Tibia__embed_css_images_custombutton_Button_Highlight_tileable_tc_over_png_407380753;
            this._embed_css_images_custombutton_Button_Highlight_tileable_tc_pressed_png_1597831939 = Tibia__embed_css_images_custombutton_Button_Highlight_tileable_tc_pressed_png_1597831939;
            this._embed_css_images_custombutton_Button_Highlight_tileable_tl_idle_png_1856848476 = Tibia__embed_css_images_custombutton_Button_Highlight_tileable_tl_idle_png_1856848476;
            this._embed_css_images_custombutton_Button_Highlight_tileable_tl_over_png_2104319140 = Tibia__embed_css_images_custombutton_Button_Highlight_tileable_tl_over_png_2104319140;
            this._embed_css_images_custombutton_Button_Highlight_tileable_tl_pressed_png_2072464232 = Tibia__embed_css_images_custombutton_Button_Highlight_tileable_tl_pressed_png_2072464232;
            this._embed_css_images_custombutton_Button_IngameShopBuy_tileable_end_idle_png_550365978 = Tibia__embed_css_images_custombutton_Button_IngameShopBuy_tileable_end_idle_png_550365978;
            this._embed_css_images_custombutton_Button_IngameShopBuy_tileable_end_over_png_1827437082 = Tibia__embed_css_images_custombutton_Button_IngameShopBuy_tileable_end_over_png_1827437082;
            this._embed_css_images_custombutton_Button_IngameShopBuy_tileable_end_pressed_png_158904546 = Tibia__embed_css_images_custombutton_Button_IngameShopBuy_tileable_end_pressed_png_158904546;
            this._embed_css_images_custombutton_Button_IngameShopBuy_tileable_idle_png_868578070 = Tibia__embed_css_images_custombutton_Button_IngameShopBuy_tileable_idle_png_868578070;
            this._embed_css_images_custombutton_Button_IngameShopBuy_tileable_over_png_2131882518 = Tibia__embed_css_images_custombutton_Button_IngameShopBuy_tileable_over_png_2131882518;
            this._embed_css_images_custombutton_Button_IngameShopBuy_tileable_pressed_png_1564750646 = Tibia__embed_css_images_custombutton_Button_IngameShopBuy_tileable_pressed_png_1564750646;
            this._embed_css_images_custombutton_Button_Standard_tileable_bc_disabled_png_1997505622 = Tibia__embed_css_images_custombutton_Button_Standard_tileable_bc_disabled_png_1997505622;
            this._embed_css_images_custombutton_Button_Standard_tileable_bc_idle_png_1580636226 = Tibia__embed_css_images_custombutton_Button_Standard_tileable_bc_idle_png_1580636226;
            this._embed_css_images_custombutton_Button_Standard_tileable_bc_over_png_319428930 = Tibia__embed_css_images_custombutton_Button_Standard_tileable_bc_over_png_319428930;
            this._embed_css_images_custombutton_Button_Standard_tileable_bc_pressed_png_576805294 = Tibia__embed_css_images_custombutton_Button_Standard_tileable_bc_pressed_png_576805294;
            this._embed_css_images_custombutton_Button_Standard_tileable_bl_disabled_png_896803423 = Tibia__embed_css_images_custombutton_Button_Standard_tileable_bl_disabled_png_896803423;
            this._embed_css_images_custombutton_Button_Standard_tileable_bl_idle_png_1931374825 = Tibia__embed_css_images_custombutton_Button_Standard_tileable_bl_idle_png_1931374825;
            this._embed_css_images_custombutton_Button_Standard_tileable_bl_over_png_1063444457 = Tibia__embed_css_images_custombutton_Button_Standard_tileable_bl_over_png_1063444457;
            this._embed_css_images_custombutton_Button_Standard_tileable_bl_pressed_png_1330582347 = Tibia__embed_css_images_custombutton_Button_Standard_tileable_bl_pressed_png_1330582347;
            this._embed_css_images_custombutton_Button_Standard_tileable_mc_disabled_png_1650806741 = Tibia__embed_css_images_custombutton_Button_Standard_tileable_mc_disabled_png_1650806741;
            this._embed_css_images_custombutton_Button_Standard_tileable_mc_idle_png_610131229 = Tibia__embed_css_images_custombutton_Button_Standard_tileable_mc_idle_png_610131229;
            this._embed_css_images_custombutton_Button_Standard_tileable_mc_over_png_796679197 = Tibia__embed_css_images_custombutton_Button_Standard_tileable_mc_over_png_796679197;
            this._embed_css_images_custombutton_Button_Standard_tileable_mc_pressed_png_85541895 = Tibia__embed_css_images_custombutton_Button_Standard_tileable_mc_pressed_png_85541895;
            this._embed_css_images_custombutton_Button_Standard_tileable_ml_disabled_png_911289432 = Tibia__embed_css_images_custombutton_Button_Standard_tileable_ml_disabled_png_911289432;
            this._embed_css_images_custombutton_Button_Standard_tileable_ml_idle_png_1920807008 = Tibia__embed_css_images_custombutton_Button_Standard_tileable_ml_idle_png_1920807008;
            this._embed_css_images_custombutton_Button_Standard_tileable_ml_over_png_120760672 = Tibia__embed_css_images_custombutton_Button_Standard_tileable_ml_over_png_120760672;
            this._embed_css_images_custombutton_Button_Standard_tileable_ml_pressed_png_228321892 = Tibia__embed_css_images_custombutton_Button_Standard_tileable_ml_pressed_png_228321892;
            this._embed_css_images_custombutton_Button_Standard_tileable_tc_disabled_png_312133720 = Tibia__embed_css_images_custombutton_Button_Standard_tileable_tc_disabled_png_312133720;
            this._embed_css_images_custombutton_Button_Standard_tileable_tc_idle_png_429853040 = Tibia__embed_css_images_custombutton_Button_Standard_tileable_tc_idle_png_429853040;
            this._embed_css_images_custombutton_Button_Standard_tileable_tc_over_png_1706736752 = Tibia__embed_css_images_custombutton_Button_Standard_tileable_tc_over_png_1706736752;
            this._embed_css_images_custombutton_Button_Standard_tileable_tc_pressed_png_1069038580 = Tibia__embed_css_images_custombutton_Button_Standard_tileable_tc_pressed_png_1069038580;
            this._embed_css_images_custombutton_Button_Standard_tileable_tl_disabled_png_1118743245 = Tibia__embed_css_images_custombutton_Button_Standard_tileable_tl_disabled_png_1118743245;
            this._embed_css_images_custombutton_Button_Standard_tileable_tl_idle_png_1966392453 = Tibia__embed_css_images_custombutton_Button_Standard_tileable_tl_idle_png_1966392453;
            this._embed_css_images_custombutton_Button_Standard_tileable_tl_over_png_687359365 = Tibia__embed_css_images_custombutton_Button_Standard_tileable_tl_over_png_687359365;
            this._embed_css_images_custombutton_Button_Standard_tileable_tl_pressed_png_1972797785 = Tibia__embed_css_images_custombutton_Button_Standard_tileable_tl_pressed_png_1972797785;
            this._embed_css_images_slot_Hotkey_disabled_png_463839532 = Tibia__embed_css_images_slot_Hotkey_disabled_png_463839532;
            this._embed_css_images_slot_Hotkey_highlighted_png_1676916579 = Tibia__embed_css_images_slot_Hotkey_highlighted_png_1676916579;
            this._embed_css_images_slot_Hotkey_png_605729015 = Tibia__embed_css_images_slot_Hotkey_png_605729015;
            this._embed_css_images_slot_Hotkey_protected_png_599761708 = Tibia__embed_css_images_slot_Hotkey_protected_png_599761708;
            this._embed_css_images_slot_container_disabled_png_1808112001 = Tibia__embed_css_images_slot_container_disabled_png_1808112001;
            this._embed_css_images_slot_container_highlighted_png_1088656264 = Tibia__embed_css_images_slot_container_highlighted_png_1088656264;
            this._embed_css_images_slot_container_png_2040378388 = Tibia__embed_css_images_slot_container_png_2040378388;
            this._bindings = [];
            this._watchers = [];
            this._bindingsByDestination = {};
            this._bindingsBeginWithWord = {};
            mx_internal::_document = this;
            .mx_internal::_Tibia_StylesInit();
            this.layout = "absolute";
            this.addEventListener("activate", this.___Tibia_Application1_activate);
            this.addEventListener("applicationComplete", this.___Tibia_Application1_applicationComplete);
            this.addEventListener("deactivate", this.___Tibia_Application1_deactivate);
            this.addEventListener("preinitialize", this.___Tibia_Application1_preinitialize);
            return;
        }// end function

        public function get m_UIChatWidget() : ChatWidget
        {
            return this._883427326m_UIChatWidget;
        }// end function

        public function set m_UIChatWidget(param1:ChatWidget) : void
        {
            var _loc_2:* = null;
            _loc_2 = this._883427326m_UIChatWidget;
            if (_loc_2 !== param1)
            {
                this._883427326m_UIChatWidget = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "m_UIChatWidget", _loc_2, param1));
            }
            return;
        }// end function

        private function _Tibia_VActionBarWidget1_i() : VActionBarWidget
        {
            var _loc_1:* = new VActionBarWidget();
            this.m_UIActionBarLeft = _loc_1;
            _loc_1.styleName = "actionBarLeft";
            _loc_1.id = "m_UIActionBarLeft";
            BindingManager.executeBindings(this, "m_UIActionBarLeft", this.m_UIActionBarLeft);
            if (!_loc_1.document)
            {
                _loc_1.document = this;
            }
            return _loc_1;
        }// end function

        private function onCloseLogoutCharacter(event:CloseEvent) : void
        {
            if (event.detail == PopUpBase.BUTTON_YES)
            {
                this.m_ConnectionDataPending = -1;
                if (this.m_Communication != null)
                {
                    this.m_Communication.disconnect(false);
                }
            }
            return;
        }// end function

        protected function onActivation(event:Event) : void
        {
            if (event.type == Event.ACTIVATE)
            {
                this.isActive = true;
            }
            else
            {
                this.isActive = false;
                if (this.m_UIInputHandler != null)
                {
                    this.m_UIInputHandler.clearPressedKeys();
                }
            }
            return;
        }// end function

        public function setConnectionDataList(param1:Vector.<IConnectionData>, param2:uint) : void
        {
            if (param1 == null || param1.length < 1)
            {
                throw new ArgumentError("Tibia.setConnectionDataList: Invalid connection data list.");
            }
            if (param2 < 0 || param2 >= param1.length)
            {
                throw new ArgumentError("Tibia.setConnectionDataList: Invalid pending connection data.");
            }
            var _loc_3:* = this.m_ConnectionDataList;
            this.m_ConnectionDataList = param1;
            this.m_ConnectionDataCurrent = -1;
            this.m_ConnectionDataPending = param2;
            var _loc_4:* = s_GetConnection();
            if (s_GetConnection() != null && _loc_4.isConnected)
            {
                _loc_4.disconnect();
            }
            else if (IServerConnection is Sessiondump && this.m_GameClientReady)
            {
                this.loginCharacter();
            }
            return;
        }// end function

        public function setClientSize(param1:uint, param2:uint) : void
        {
            var _loc_3:* = Application.application.systemManager;
            if (_loc_3.hasOwnProperty("setActualSize"))
            {
                var _loc_4:* = _loc_3;
                _loc_4["setActualSize"](param1, param2);
            }
            return;
        }// end function

        private function isValidPreviewStateForClient(param1:uint) : Boolean
        {
            switch(param1)
            {
                case PREVIEW_STATE_REGULAR:
                {
                    return CLIENT_PREVIEW_STATE == PREVIEW_STATE_REGULAR || CLIENT_PREVIEW_STATE == PREVIEW_STATE_PREVIEW_NO_ACTIVE_CHANGE;
                }
                case PREVIEW_STATE_PREVIEW_NO_ACTIVE_CHANGE:
                {
                    return CLIENT_PREVIEW_STATE == PREVIEW_STATE_REGULAR || CLIENT_PREVIEW_STATE == PREVIEW_STATE_PREVIEW_NO_ACTIVE_CHANGE;
                }
                case PREVIEW_STATE_PREVIEW_WITH_ACTIVE_CHANGE:
                {
                    return CLIENT_PREVIEW_STATE == PREVIEW_STATE_PREVIEW_WITH_ACTIVE_CHANGE;
                }
                default:
                {
                    return false;
                    break;
                }
            }
        }// end function

        private function onConnectionConnecting(event:ConnectionEvent) : void
        {
            visible = false;
            if (event.data != null && this.m_Player.name == null)
            {
                this.m_Player.name = event.data as String;
            }
            this.m_ChannelsPending = this.m_ChatStorage.loadChannels();
            var _loc_2:* = new MessageWidget();
            _loc_2.buttonFlags = PopUpBase.BUTTON_CANCEL;
            _loc_2.keyboardFlags = PopUpBase.KEY_ESCAPE;
            _loc_2.message = resourceManager.getString(BUNDLE, "DLG_CONNECTING_TEXT", [event.message]);
            _loc_2.title = resourceManager.getString(BUNDLE, "DLG_CONNECTING_TITLE");
            _loc_2.addEventListener(CloseEvent.CLOSE, this.onCloseLoginCharacter);
            _loc_2.show();
            return;
        }// end function

        public function saveLocalData() : void
        {
            if (!(this.m_Connection is Sessiondump))
            {
                this.m_MiniMapStorage.saveSectors(true);
            }
            return;
        }// end function

        private function onConnectionPending(event:ConnectionEvent) : void
        {
            var _loc_2:* = 0;
            if (this.m_ChannelsPending != null)
            {
                for each (_loc_2 in this.m_ChannelsPending)
                {
                    
                    if (_loc_2 == ChatStorage.PRIVATE_CHANNEL_ID)
                    {
                        this.m_Communication.sendCOPENCHANNEL();
                        continue;
                    }
                    this.m_Communication.sendCJOINCHANNEL(_loc_2);
                }
                this.m_ChannelsPending = null;
            }
            if (this.m_CharacterDeath)
            {
            }
            else
            {
                if (this.m_UIWorldMapWidget != null)
                {
                    this.m_UIWorldMapWidget.player = this.m_Player;
                }
                if (this.m_UIStatusWidget != null)
                {
                    this.m_UIStatusWidget.player = this.m_Player;
                }
                this.m_Communication.sendCENTERWORLD();
            }
            return;
        }// end function

        public function logoutCharacter() : void
        {
            if (this.m_Connection == null || !this.m_Connection.isConnected)
            {
                throw new Error("Tibia.logoutCharacter: Not connected.");
            }
            this.m_FailedConnectionRescheduler.reset();
            var _loc_1:* = new MessageWidget();
            _loc_1.buttonFlags = PopUpBase.BUTTON_YES | PopUpBase.BUTTON_NO;
            _loc_1.message = resourceManager.getString(BUNDLE, "DLG_LOGOUT_TEXT");
            _loc_1.title = resourceManager.getString(BUNDLE, "DLG_LOGOUT_TITLE");
            _loc_1.addEventListener(CloseEvent.CLOSE, this.onCloseLogoutCharacter);
            _loc_1.show();
            return;
        }// end function

        public function get isActive() : Boolean
        {
            return this.m_IsActive;
        }// end function

        public function get m_UIActionBarTop() : HActionBarWidget
        {
            return this._1423351586m_UIActionBarTop;
        }// end function

        protected function connect(param1:IConnectionData) : void
        {
            var _loc_3:* = null;
            if (param1 is AccountCharacter)
            {
                if (!(this.m_Connection is Connection))
                {
                    this.reset(true);
                    this.releaseConnection();
                }
                this.m_Connection = new Connection();
            }
            else if (param1 is SessiondumpConnectionData)
            {
                if (!(this.m_Connection is Sessiondump))
                {
                    this.reset(true);
                    this.releaseConnection();
                }
                _loc_3 = null;
                if (this.m_TutorialMode)
                {
                    _loc_3 = new SessiondumpControllerHints();
                }
                else
                {
                    _loc_3 = new SessiondumpControllerBase();
                }
                this.m_Connection = new Sessiondump(_loc_3);
            }
            this.m_Connection.addEventListener(ConnectionEvent.PENDING, this.onConnectionPending);
            this.m_Connection.addEventListener(ConnectionEvent.GAME, this.onConnectionGame);
            this.m_Connection.addEventListener(ConnectionEvent.CONNECTING, this.onConnectionConnecting);
            this.m_Connection.addEventListener(ConnectionEvent.CONNECTION_LOST, this.onConnectionLost);
            this.m_Connection.addEventListener(ConnectionEvent.CONNECTION_RECOVERED, this.onConnectionRecovered);
            this.m_Connection.addEventListener(ConnectionEvent.DEAD, this.onConnectionDeath);
            this.m_Connection.addEventListener(ConnectionEvent.DISCONNECTED, this.onConnectionDisconnected);
            this.m_Connection.addEventListener(ConnectionEvent.ERROR, this.onConnectionError);
            this.m_Connection.addEventListener(ConnectionEvent.LOGINADVICE, this.onConnectionLoginAdvice);
            this.m_Connection.addEventListener(ConnectionEvent.LOGINERROR, this.onConnectionLoginError);
            this.m_Connection.addEventListener(ConnectionEvent.LOGINWAIT, this.onConnectionLoginWait);
            var _loc_2:* = new ConnectionEvent(ConnectionEvent.CREATED);
            dispatchEvent(_loc_2);
            this.m_Connection.connect(param1);
            return;
        }// end function

        private function onUploadOptionsComplete(event:Event) : void
        {
            this.m_CurrentOptionsDirty = false;
            this.m_CurrentOptionsLastUpload = getTimer();
            this.m_CurrentOptionsUploading = false;
            this.m_CurrentOptionsUploadErrorDelay = 0;
            return;
        }// end function

        public function set m_UISideBarToggleRight(param1:ToggleBar) : void
        {
            var _loc_2:* = null;
            _loc_2 = this._665607314m_UISideBarToggleRight;
            if (_loc_2 !== param1)
            {
                this._665607314m_UISideBarToggleRight = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "m_UISideBarToggleRight", _loc_2, param1));
            }
            return;
        }// end function

        private function onCloseLoginWait(event:CloseEvent) : void
        {
            if (event.detail == TimeoutWaitWidget.TIMOUT_EXPIRED)
            {
                this.m_ConnectionDataPending = this.m_ConnectionDataCurrent;
            }
            else
            {
                this.m_ConnectionDataPending = -1;
                this.m_FailedConnectionRescheduler.reset();
            }
            if (this.m_Communication != null)
            {
                this.m_Communication.disconnect(false);
            }
            return;
        }// end function

        public function set m_UIWorldMapWidget(param1:WorldMapWidget) : void
        {
            var _loc_2:* = null;
            _loc_2 = this._1314206572m_UIWorldMapWidget;
            if (_loc_2 !== param1)
            {
                this._1314206572m_UIWorldMapWidget = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "m_UIWorldMapWidget", _loc_2, param1));
            }
            return;
        }// end function

        private function _Tibia_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = BoxDirection.VERTICAL;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                m_UIOuterRootContainer.direction = param1;
                return;
            }// end function
            , "m_UIOuterRootContainer.direction");
            result[0] = binding;
            binding = new Binding(this, function () : int
            {
                return SideBarSet.LOCATION_A;
            }// end function
            , function (param1:int) : void
            {
                m_UISideBarA.location = param1;
                return;
            }// end function
            , "m_UISideBarA.location");
            result[1] = binding;
            binding = new Binding(this, function () : int
            {
                return SideBarSet.LOCATION_B;
            }// end function
            , function (param1:int) : void
            {
                m_UISideBarB.location = param1;
                return;
            }// end function
            , "m_UISideBarB.location");
            result[2] = binding;
            binding = new Binding(this, function ()
            {
                return SideBarSet.LOCATION_B;
            }// end function
            , function (param1) : void
            {
                _Tibia_Array1[0] = param1;
                return;
            }// end function
            , "_Tibia_Array1[0]");
            result[3] = binding;
            binding = new Binding(this, function ()
            {
                return SideBarSet.LOCATION_A;
            }// end function
            , function (param1) : void
            {
                _Tibia_Array1[1] = param1;
                return;
            }// end function
            , "_Tibia_Array1[1]");
            result[4] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = BoxDirection.VERTICAL;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                m_UICenterColumn.direction = param1;
                return;
            }// end function
            , "m_UICenterColumn.direction");
            result[5] = binding;
            binding = new Binding(this, function () : int
            {
                return ActionBarSet.LOCATION_TOP;
            }// end function
            , function (param1:int) : void
            {
                m_UIActionBarTop.location = param1;
                return;
            }// end function
            , "m_UIActionBarTop.location");
            result[6] = binding;
            binding = new Binding(this, function () : int
            {
                return ActionBarSet.LOCATION_BOTTOM;
            }// end function
            , function (param1:int) : void
            {
                m_UIActionBarBottom.location = param1;
                return;
            }// end function
            , "m_UIActionBarBottom.location");
            result[7] = binding;
            binding = new Binding(this, function () : int
            {
                return ActionBarSet.LOCATION_LEFT;
            }// end function
            , function (param1:int) : void
            {
                m_UIActionBarLeft.location = param1;
                return;
            }// end function
            , "m_UIActionBarLeft.location");
            result[8] = binding;
            binding = new Binding(this, function () : int
            {
                return ActionBarSet.LOCATION_RIGHT;
            }// end function
            , function (param1:int) : void
            {
                m_UIActionBarRight.location = param1;
                return;
            }// end function
            , "m_UIActionBarRight.location");
            result[9] = binding;
            binding = new Binding(this, function ()
            {
                return SideBarSet.LOCATION_C;
            }// end function
            , function (param1) : void
            {
                _Tibia_Array2[0] = param1;
                return;
            }// end function
            , "_Tibia_Array2[0]");
            result[10] = binding;
            binding = new Binding(this, function ()
            {
                return SideBarSet.LOCATION_D;
            }// end function
            , function (param1) : void
            {
                _Tibia_Array2[1] = param1;
                return;
            }// end function
            , "_Tibia_Array2[1]");
            result[11] = binding;
            binding = new Binding(this, function () : int
            {
                return SideBarSet.LOCATION_C;
            }// end function
            , function (param1:int) : void
            {
                m_UISideBarC.location = param1;
                return;
            }// end function
            , "m_UISideBarC.location");
            result[12] = binding;
            binding = new Binding(this, function () : int
            {
                return SideBarSet.LOCATION_D;
            }// end function
            , function (param1:int) : void
            {
                m_UISideBarD.location = param1;
                return;
            }// end function
            , "m_UISideBarD.location");
            result[13] = binding;
            return result;
        }// end function

        protected function onAppearancesLoadError(event:ErrorEvent) : void
        {
            var _loc_2:* = null;
            if (event != null)
            {
                if (this.m_AppearanceStorage != null)
                {
                    this.m_AppearanceStorage.removeEventListener(ErrorEvent.ERROR, this.onAppearancesLoadError);
                    this.m_AppearanceStorage.removeEventListener(Event.COMPLETE, this.onAppearancesLoadComplete);
                }
                _loc_2 = new GameEvent(GameEvent.ERROR, true, false);
                _loc_2.message = event.text;
                dispatchEvent(_loc_2);
            }
            return;
        }// end function

        private function onCloseLoginCharacter(event:CloseEvent) : void
        {
            if (event.detail == PopUpBase.BUTTON_CANCEL)
            {
                this.m_ConnectionDataPending = -1;
                if (this.m_Communication != null)
                {
                    this.m_Communication.disconnect(false);
                }
            }
            return;
        }// end function

        protected function onAppearancesLoadComplete(event:Event) : void
        {
            var _loc_2:* = null;
            if (event != null)
            {
                if (this.m_AppearanceStorage != null)
                {
                    this.m_AppearanceStorage.removeEventListener(ErrorEvent.ERROR, this.onAppearancesLoadError);
                    this.m_AppearanceStorage.removeEventListener(Event.COMPLETE, this.onAppearancesLoadComplete);
                }
                this.loadOptions();
                this.loginCharacter();
                this.m_GameClientReady = true;
                _loc_2 = new GameEvent(GameEvent.READY, true, false);
                dispatchEvent(_loc_2);
            }
            return;
        }// end function

        public function set isActive(param1:Boolean) : void
        {
            if (this.m_IsActive != param1)
            {
                this.m_IsActive = param1;
                if (this.m_EnableFocusNotifier)
                {
                    if (this.m_IsActive == true)
                    {
                        FocusNotifier.getInstance().hide();
                    }
                    else
                    {
                        FocusNotifier.getInstance().show();
                    }
                }
            }
            return;
        }// end function

        public function get m_UIActionBarLeft() : VActionBarWidget
        {
            return this._1174474338m_UIActionBarLeft;
        }// end function

        public function set m_UIActionBarTop(param1:HActionBarWidget) : void
        {
            var _loc_2:* = null;
            _loc_2 = this._1423351586m_UIActionBarTop;
            if (_loc_2 !== param1)
            {
                this._1423351586m_UIActionBarTop = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "m_UIActionBarTop", _loc_2, param1));
            }
            return;
        }// end function

        public function loginCharacter() : void
        {
            var _loc_2:* = null;
            var _loc_3:* = false;
            if (this.m_ConnectionDataList == null || this.m_ConnectionDataList.length < 1)
            {
                throw new ArgumentError("Tibia.loginCharacter: Invalid connection data list.");
            }
            if (this.m_ConnectionDataPending < 0 || this.m_ConnectionDataPending >= this.m_ConnectionDataList.length)
            {
                throw new ArgumentError("Tibia.loginCharacter: Invalid pending connection data.");
            }
            this.reset();
            this.m_ConnectionDataCurrent = this.m_ConnectionDataPending;
            this.m_ConnectionDataPending = -1;
            this.m_CharacterDeath = false;
            var _loc_1:* = null;
            _loc_1 = this.m_ConnectionDataList[this.m_ConnectionDataCurrent];
            if (_loc_1 is AccountCharacter)
            {
                _loc_2 = _loc_1 as AccountCharacter;
                if (_loc_2 == null)
                {
                    throw new Error("Tibia.loginCharacter: connection data must be account character.");
                }
                _loc_3 = !this.isValidPreviewStateForClient(_loc_2.worldPreviewState);
                if (_loc_3)
                {
                    this.reloadClient(_loc_2);
                    _loc_1 = null;
                }
                else
                {
                    _loc_1 = _loc_2;
                }
            }
            if (_loc_1 != null)
            {
                this.connect(_loc_1);
            }
            return;
        }// end function

        function _Tibia_StylesInit() : void
        {
            var style:CSSStyleDeclaration;
            var effects:Array;
            if (mx_internal::_Tibia_StylesInit_done)
            {
                return;
            }
            mx_internal::_Tibia_StylesInit_done = true;
            style = StyleManager.getStyleDeclaration("OfferDisplayBlock");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("OfferDisplayBlock", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderThickness = 1;
                this.borderColor = 13415802;
                this.borderAlpha = 1;
                this.borderStyle = "solid";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("TextItem");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("TextItem", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.horizontalGap = 0;
                this.rollOverColor = 2768716;
                this.paddingBottom = 0;
                this.paddingRight = 0;
                this.rollOverAlpha = 0.5;
                this.textRollOverColor = 13221291;
                this.paddingTop = 0;
                this.textColor = 13221291;
                this.paddingLeft = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".messageOptionsMessageModeList");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".messageOptionsMessageModeList", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.horizontalGridLineColor = 8089164;
                this.backgroundColor = "";
                this.borderColor = 8089164;
                this.selectionDuration = 0;
                this.alternatingItemColors = [1977654, 16711680];
                this.color = 13221291;
                this.selectionColor = 658961;
                this.backgroundAlpha = 0.8;
                this.borderAlpha = 1;
                this.selectionEasingFunction = "";
                this.headerSeparatorSkin = VectorDataGridHeaderSeparatorSkin;
                this.headerBackgroundSkin = VectorDataGridHeaderBackgroundSkin;
                this.borderThickness = 1;
                this.alternatingItemAlphas = [0.8, 0];
                this.rollOverColor = 2768716;
                this.verticalGridLines = true;
                this.verticalGridLineColor = 8089164;
                this.iconColor = 13221291;
                this.textSelectedColor = 13221291;
                this.textRollOverColor = 13221291;
                this.horizontalGridLines = false;
                this.borderStyle = "solid";
                this.disabledIconColor = 13221291;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".ingameShopOfferBox");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".ingameShopOfferBox", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderThickness = 1;
                this.borderColor = 13415802;
                this.backgroundColor = 1842980;
                this.paddingBottom = 0;
                this.paddingRight = 0;
                this.borderAlpha = 1;
                this.paddingTop = 0;
                this.borderStyle = "solid";
                this.paddingLeft = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".spellListWidgetTab");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".spellListWidgetTab", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "center";
                this.selectedDownMask = "center";
                this.textAlign = "center";
                this.paddingRight = 2;
                this.skin = BitmapButtonSkin;
                this.defaultDownMask = "center";
                this.selectedUpMask = "center";
                this.defaultUpCenterImage = _embed_css_images_BuySellTab_idle_png_883931416;
                this.paddingBottom = 0;
                this.selectedTextColor = 15904590;
                this.selectedOverCenterImage = _embed_css_images_BuySellTab_active_png_1732627654;
                this.defaultOverCenterImage = _embed_css_images_BuySellTab_idle_png_883931416;
                this.selectedOverMask = "center";
                this.defaultTextColor = 15904590;
                this.defaultDownCenterImage = _embed_css_images_BuySellTab_idle_png_883931416;
                this.selectedDownCenterImage = _embed_css_images_BuySellTab_active_png_1732627654;
                this.paddingTop = 0;
                this.paddingLeft = 2;
                this.defaultOverMask = "center";
                this.selectedUpCenterImage = _embed_css_images_BuySellTab_active_png_1732627654;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".miniMapButtonNorth");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".miniMapButtonNorth", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "top";
                this.skin = BitmapButtonSkin;
                this.defaultOverBottomImage = "right";
                this.defaultOverLeftImage = "right";
                this.defaultDownMask = "top";
                this.defaultDownBottomImage = "right";
                this.defaultUpRightImage = _embed_css_images_Arrow_ScrollTabs_idle_png_1270948868;
                this.defaultDownTopImage = "right";
                this.defaultDownRightImage = _embed_css_images_Arrow_ScrollTabs_pressed_png_23734072;
                this.defaultUpBottomImage = "right";
                this.defaultUpTopImage = "right";
                this.defaultDownLeftImage = "right";
                this.defaultOverRightImage = _embed_css_images_Arrow_ScrollTabs_over_png_923510532;
                this.defaultOverTopImage = "right";
                this.defaultUpLeftImage = "right";
                this.defaultOverMask = "top";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".bodySlotFinger");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".bodySlotFinger", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.emptyBackgroundImage = _embed_css_images_Slot_InventoryRing_png_332734525;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".customSliderIncreaseButton");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".customSliderIncreaseButton", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultDisabledRightImage = _embed_css_images_Arrow_WidgetToggle_idle_png_742472731;
                this.defaultUpMask = "right";
                this.skin = BitmapButtonSkin;
                this.defaultOverLeftImage = "right";
                this.defaultDisabledMask = "right";
                this.defaultDisabledLeftImage = "right";
                this.defaultDownMask = "right";
                this.defaultUpRightImage = _embed_css_images_Arrow_WidgetToggle_idle_png_742472731;
                this.defaultDownRightImage = _embed_css_images_Arrow_WidgetToggle_pressed_png_737576647;
                this.defaultDownLeftImage = "right";
                this.defaultOverRightImage = _embed_css_images_Arrow_WidgetToggle_over_png_411548443;
                this.defaultUpLeftImage = "right";
                this.defaultOverMask = "right";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("PreyView");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("PreyView", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderThickness = 1;
                this.borderColor = 13415802;
                this.backgroundColor = 658961;
                this.borderAlpha = 1;
                this.backgroundAlpha = 0.5;
                this.borderStyle = "solid";
                this.verticalGap = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("Button");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("Button", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultDisabledRightImage = "left";
                this.defaultDisabledBottomRightImage = "bottomLeft";
                this.paddingRight = 4;
                this.selectedOverTopImage = _embed_css_images_custombutton_Button_Border_tileable_tc_over_png_2113343813;
                this.selectedDisabledBottomImage = _embed_css_images_custombutton_Button_Border_tileable_bc_disabled_png_703276661;
                this.selectedDownLeftImage = _embed_css_images_custombutton_Button_Border_tileable_ml_pressed_png_931026351;
                this.selectedOverLeftImage = _embed_css_images_custombutton_Button_Border_tileable_ml_over_png_167463477;
                this.defaultOverBottomLeftImage = _embed_css_images_custombutton_Button_Standard_tileable_bl_over_png_1063444457;
                this.defaultDisabledTopImage = _embed_css_images_custombutton_Button_Standard_tileable_tc_disabled_png_312133720;
                this.defaultDownTopImage = _embed_css_images_custombutton_Button_Standard_tileable_tc_pressed_png_1069038580;
                this.selectedOverBottomRightImage = "bottomLeft";
                this.defaultUpCenterImage = _embed_css_images_custombutton_Button_Standard_tileable_mc_idle_png_610131229;
                this.paddingBottom = 0;
                this.selectedDownTopLeftImage = _embed_css_images_custombutton_Button_Border_tileable_tl_pressed_png_1775314060;
                this.textSelectedColor = 13221291;
                this.defaultDownCenterImage = _embed_css_images_custombutton_Button_Standard_tileable_mc_pressed_png_85541895;
                this.selectedDownCenterImage = _embed_css_images_custombutton_Button_Standard_tileable_mc_pressed_png_85541895;
                this.defaultDisabledTopLeftImage = _embed_css_images_custombutton_Button_Standard_tileable_tl_disabled_png_1118743245;
                this.selectedUpBottomRightImage = "bottomLeft";
                this.height = 22;
                this.defaultUpTopRightImage = "topLeft";
                this.selectedUpTopRightImage = "topLeft";
                this.selectedUpCenterImage = _embed_css_images_custombutton_Button_Standard_tileable_mc_idle_png_610131229;
                this.selectedDisabledTopImage = _embed_css_images_custombutton_Button_Border_tileable_tc_disabled_png_1147826429;
                this.selectedDownMask = "topLeft top topRight left center right bottomLeft bottom bottomRight";
                this.selectedDisabledTopLeftImage = _embed_css_images_custombutton_Button_Border_tileable_tl_disabled_png_592849536;
                this.selectedOverTopRightImage = "topLeft";
                this.defaultOverLeftImage = _embed_css_images_custombutton_Button_Standard_tileable_ml_over_png_120760672;
                this.defaultDownMask = "topLeft top topRight left center right bottomLeft bottom bottomRight";
                this.selectedUpTopImage = _embed_css_images_custombutton_Button_Border_tileable_tc_idle_png_1295188411;
                this.selectedUpMask = "topLeft top topRight left center right bottomLeft bottom bottomRight";
                this.selectedDownBottomImage = _embed_css_images_custombutton_Button_Border_tileable_bc_pressed_png_1654848065;
                this.selectedDisabledBottomLeftImage = _embed_css_images_custombutton_Button_Border_tileable_bl_disabled_png_1526687986;
                this.selectedOverTopLeftImage = _embed_css_images_custombutton_Button_Border_tileable_tl_over_png_1999907720;
                this.focusThickness = 0;
                this.defaultDownBottomLeftImage = _embed_css_images_custombutton_Button_Standard_tileable_bl_pressed_png_1330582347;
                this.selectedDownBottomLeftImage = _embed_css_images_custombutton_Button_Border_tileable_bl_pressed_png_2020010902;
                this.defaultDownLeftImage = _embed_css_images_custombutton_Button_Standard_tileable_ml_pressed_png_228321892;
                this.defaultOverRightImage = "left";
                this.defaultOverCenterImage = _embed_css_images_custombutton_Button_Standard_tileable_mc_over_png_796679197;
                this.defaultDisabledTopRightImage = "topLeft";
                this.selectedDownTopRightImage = "topLeft";
                this.selectedOverRightImage = "left";
                this.selectedUpRightImage = "left";
                this.textRollOverColor = 15904590;
                this.defaultUpLeftImage = _embed_css_images_custombutton_Button_Standard_tileable_ml_idle_png_1920807008;
                this.paddingLeft = 4;
                this.selectedOverBottomLeftImage = _embed_css_images_custombutton_Button_Border_tileable_bl_over_png_545925962;
                this.color = 15904590;
                this.defaultDisabledBottomLeftImage = _embed_css_images_custombutton_Button_Standard_tileable_bl_disabled_png_896803423;
                this.selectedUpLeftImage = _embed_css_images_custombutton_Button_Border_tileable_ml_idle_png_633391925;
                this.skin = StyleSizedBitmapButtonSkin;
                this.defaultOverBottomRightImage = "bottomLeft";
                this.defaultOverBottomImage = _embed_css_images_custombutton_Button_Standard_tileable_bc_over_png_319428930;
                this.defaultDisabledLeftImage = _embed_css_images_custombutton_Button_Standard_tileable_ml_disabled_png_911289432;
                this.selectedUpBottomLeftImage = _embed_css_images_custombutton_Button_Border_tileable_bl_idle_png_1739897418;
                this.defaultDownBottomImage = _embed_css_images_custombutton_Button_Standard_tileable_bc_pressed_png_576805294;
                this.defaultUpRightImage = "left";
                this.defaultOverTopRightImage = "topLeft";
                this.defaultDownTopLeftImage = _embed_css_images_custombutton_Button_Standard_tileable_tl_pressed_png_1972797785;
                this.defaultDownRightImage = "left";
                this.defaultUpBottomImage = _embed_css_images_custombutton_Button_Standard_tileable_bc_idle_png_1580636226;
                this.selectedDisabledLeftImage = _embed_css_images_custombutton_Button_Border_tileable_ml_disabled_png_1336516115;
                this.defaultUpTopImage = _embed_css_images_custombutton_Button_Standard_tileable_tc_idle_png_429853040;
                this.selectedDisabledTopRightImage = "topLeft";
                this.defaultOverTopImage = _embed_css_images_custombutton_Button_Standard_tileable_tc_over_png_1706736752;
                this.selectedDownRightImage = "left";
                this.selectedOverMask = "topLeft top topRight left center right bottomLeft bottom bottomRight";
                this.paddingTop = 0;
                this.selectedUpTopLeftImage = _embed_css_images_custombutton_Button_Border_tileable_tl_idle_png_201169032;
                this.defaultDisabledBottomImage = _embed_css_images_custombutton_Button_Standard_tileable_bc_disabled_png_1997505622;
                this.defaultOverMask = "topLeft top topRight left center right bottomLeft bottom bottomRight";
                this.selectedDisabledRightImage = "left";
                this.selectedUpBottomImage = _embed_css_images_custombutton_Button_Border_tileable_bc_idle_png_450765779;
                this.selectedDownBottomRightImage = "bottomLeft";
                this.defaultUpMask = "topLeft top topRight left center right bottomLeft bottom bottomRight";
                this.selectedDisabledCenterImage = _embed_css_images_custombutton_Button_Standard_tileable_mc_disabled_png_1650806741;
                this.defaultUpBottomLeftImage = _embed_css_images_custombutton_Button_Standard_tileable_bl_idle_png_1931374825;
                this.defaultDisabledCenterImage = _embed_css_images_custombutton_Button_Standard_tileable_mc_disabled_png_1650806741;
                this.defaultDisabledMask = "topLeft top topRight left center right bottomLeft bottom bottomRight";
                this.selectedOverBottomImage = _embed_css_images_custombutton_Button_Border_tileable_bc_over_png_103072467;
                this.disabledColor = 15904590;
                this.defaultDownTopRightImage = "topLeft";
                this.defaultUpTopLeftImage = _embed_css_images_custombutton_Button_Standard_tileable_tl_idle_png_1966392453;
                this.defaultUpBottomRightImage = "bottomLeft";
                this.selectedDownTopImage = _embed_css_images_custombutton_Button_Border_tileable_tc_pressed_png_90896863;
                this.selectedOverCenterImage = _embed_css_images_custombutton_Button_Standard_tileable_mc_over_png_796679197;
                this.width = 1;
                this.defaultDownBottomRightImage = "bottomLeft";
                this.selectedDisabledBottomRightImage = "bottomLeft";
                this.defaultOverTopLeftImage = _embed_css_images_custombutton_Button_Standard_tileable_tl_over_png_687359365;
                this.selectedDisabledMask = "topLeft top topRight left center right bottomLeft bottom bottomRight";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".optionsConfigurationWidgetRootContainer");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".optionsConfigurationWidgetRootContainer", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderThickness = 1;
                this.borderColor = 8089164;
                this.backgroundColor = 2240055;
                this.paddingBottom = 2;
                this.paddingRight = 2;
                this.borderAlpha = 1;
                this.backgroundAlpha = 0.5;
                this.paddingTop = 2;
                this.borderStyle = "solid";
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".statusWidgetFatMana");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".statusWidgetFatMana", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.barImages = "barDefault";
                this.backgroundRightImage = _embed_css_images_BG_Bars_fat_enpiece_png_182118724;
                this.paddingRight = 1;
                this.backgroundMask = "center";
                this.leftOrnamentMask = "left";
                this.rightOrnamentMask = "none";
                this.backgroundCenterImage = _embed_css_images_BG_Bars_fat_tileable_png_1989862757;
                this.rightOrnamentRightImage = _embed_css_images_BG_Bars_fat_enpieceOrnamented_png_1067104141;
                this.backgroundLeftImage = "right";
                this.leftOrnamentLeftImage = "right";
                this.paddingBottom = 3;
                this.barDefault = _embed_css_images_BarsHealth_fat_Mana_png_1770288782;
                this.leftOrnamentOffset = -6;
                this.rightOrnamentOffset = 6;
                this.paddingTop = 1;
                this.leftOrnamentRightImage = _embed_css_images_BG_Bars_fat_enpieceOrnamented_png_1067104141;
                this.paddingLeft = 3;
                this.barLimits = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".validationFeedbackValid");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".validationFeedbackValid", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.color = 13221291;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".statusWidgetCompactMana");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".statusWidgetCompactMana", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.barImages = "barDefault";
                this.backgroundRightImage = _embed_css_images_BG_Bars_compact_enpiece_png_1184339178;
                this.paddingRight = 1;
                this.backgroundMask = "center";
                this.leftOrnamentMask = "left";
                this.rightOrnamentMask = "none";
                this.backgroundCenterImage = _embed_css_images_BG_Bars_compact_tileable_png_1166257409;
                this.rightOrnamentRightImage = _embed_css_images_BG_Bars_compact_enpieceOrnamented_png_986676493;
                this.backgroundLeftImage = "right";
                this.leftOrnamentLeftImage = "right";
                this.paddingBottom = 3;
                this.barDefault = _embed_css_images_BarsHealth_compact_Mana_png_1773406568;
                this.leftOrnamentOffset = -6;
                this.rightOrnamentOffset = 6;
                this.paddingTop = 1;
                this.leftOrnamentRightImage = _embed_css_images_BG_Bars_compact_enpieceOrnamented_png_986676493;
                this.paddingLeft = 3;
                this.barLimits = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".statusWidgetFatZeroSkillProgress");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".statusWidgetFatZeroSkillProgress", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.tickCenterImage = _embed_css_images_Bars_ProgressMarker_png_1964646600;
                this.backgroundRightImage = "left";
                this.barImages = "barDefault";
                this.tickMask = "center";
                this.paddingRight = -5;
                this.backgroundMask = "left center right";
                this.backgroundCenterImage = _embed_css_images_BG_BarsXP_default_tileable_png_940157883;
                this.backgroundLeftImage = _embed_css_images_BG_BarsXP_default_endpiece_png_928913106;
                this.barDefault = _embed_css_images_BarsXP_default_zero_png_1312716141;
                this.paddingBottom = 4;
                this.tickOffset = 3;
                this.paddingTop = 3;
                this.paddingLeft = -5;
                this.barLimits = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".popUpFooterStyle");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".popUpFooterStyle", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderThickness = 1;
                this.borderColor = 8089164;
                this.backgroundColor = 658961;
                this.horizontalGap = 32;
                this.paddingBottom = 2;
                this.horizontalAlign = "center";
                this.paddingRight = 1;
                this.borderAlpha = 1;
                this.backgroundAlpha = 0.5;
                this.paddingTop = 1;
                this.borderStyle = "solid";
                this.paddingLeft = 1;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("TextInput");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("TextInput", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderThickness = 1;
                this.borderColor = 0;
                this.backgroundColor = 2240055;
                this.focusThickness = 0;
                this.borderAlpha = 1;
                this.backgroundAlpha = 0.5;
                this.borderStyle = "solid";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".statusWidgetCompactSkill");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".statusWidgetCompactSkill", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.progressBarMalusStyleName = "statusWidgetCompactMalusSkillProgress";
                this.verticalAlign = "middle";
                this.iconStyleName = "";
                this.progressBarBonusStyleName = "statusWidgetCompactBonusSkillProgress";
                this.progressBarZeroStyleName = "statusWidgetCompactZeroSkillProgress";
                this.horizontalGap = 0;
                this.progressBarStyleName = "statusWidgetCompactSkillProgress";
                this.labelStyleName = ".statusWidgetSkillProgress";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".slotsBox");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".slotsBox", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.verticalAlign = "middle";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("GameWindowContainer");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("GameWindowContainer", style, false);
            }
            style = StyleManager.getStyleDeclaration(".chatWidgetSingleView");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".chatWidgetSingleView", style, false);
            }
            style = StyleManager.getStyleDeclaration(".gameWindowLockButton");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".gameWindowLockButton", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.iconDefaultUpMask = "center";
                this.iconSelectedUpCenterImage = _embed_css_images_Button_LockHotkeys_Locked_idle_png_289855355;
                this.iconSelectedUpMask = "center";
                this.icon = BitmapButtonIcon;
                this.skin = _embed_css_images_Slot_Statusicon_png_1614431506;
                this.iconDefaultUpCenterImage = _embed_css_images_Button_LockHotkeys_UnLocked_idle_png_6222830;
                this.iconSelectedOverCenterImage = _embed_css_images_Button_LockHotkeys_Locked_over_png_484660859;
                this.iconDefaultDownMask = "center";
                this.iconDefaultDownCenterImage = _embed_css_images_Button_LockHotkeys_UnLocked_over_png_855936274;
                this.iconSelectedDownMask = "center";
                this.iconDefaultOverCenterImage = _embed_css_images_Button_LockHotkeys_UnLocked_over_png_855936274;
                this.iconSelectedDownCenterImage = _embed_css_images_Button_LockHotkeys_Locked_over_png_484660859;
                this.iconDefaultOverMask = "center";
                this.iconSelectedOverMask = "center";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".basePrice");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".basePrice", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.color = 7829367;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".chatWidgetTitle");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".chatWidgetTitle", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.verticalAlign = "middle";
                this.horizontalGap = 0;
                this.paddingBottom = 0;
                this.horizontalAlign = "left";
                this.paddingRight = 0;
                this.borderTopImage = _embed_css_images_BG_ChatTab_tileable_png_2085750710;
                this.borderMask = "top";
                this.borderBottomImage = "top";
                this.paddingTop = 0;
                this.borderSkin = BitmapBorderSkin;
                this.verticalGap = 0;
                this.paddingLeft = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".withBorder");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".withBorder", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderThickness = 1;
                this.borderColor = 13415802;
                this.borderAlpha = 1;
                this.borderStyle = "solid";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("StatusWidget");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("StatusWidget", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.verticalBigGap = 10;
                this.paddingRight = 1;
                this.borderSkin = BitmapBorderSkin;
                this.borderTopRightImage = _embed_css_images_Border02_corners_png_2021856475;
                this.verticalGap = 1;
                this.horizontalBigGap = 10;
                this.horizontalGap = 1;
                this.paddingBottom = 1;
                this.borderRightImage = _embed_css_images_Border02_png_325729410;
                this.borderMask = "all";
                this.paddingTop = 0;
                this.paddingLeft = 1;
                this.borderCenterImage = _embed_css_images_BG_Stone2_Tileable_png_1339293492;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("ComboBox");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("ComboBox", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderThickness = 1;
                this.borderColor = 13221291;
                this.focusThickness = 0;
                this.highlightAlphas = [0, 0];
                this.iconColor = 13221291;
                this.borderAlpha = 1;
                this.fillColors = [4937051, 2501679];
                this.borderStyle = "solid";
                this.fillAlphas = [1, 1];
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".editMarkSelector");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".editMarkSelector", style, false);
            }
            style = StyleManager.getStyleDeclaration(".combatButtonChase");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".combatButtonChase", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "center";
                this.selectedDownMask = "center";
                this.skin = BitmapButtonSkin;
                this.defaultDisabledMask = "center";
                this.defaultDownMask = "center";
                this.selectedUpMask = "center";
                this.defaultUpCenterImage = _embed_css_images_Icons_CombatControls_StandOff_idle_png_1478662626;
                this.selectedOverCenterImage = _embed_css_images_Icons_CombatControls_AutochaseOn_over_png_693464955;
                this.defaultOverCenterImage = _embed_css_images_Icons_CombatControls_StandOff_over_png_320468254;
                this.selectedOverMask = "center";
                this.defaultDownCenterImage = _embed_css_images_Icons_CombatControls_StandOff_over_png_320468254;
                this.selectedDownCenterImage = _embed_css_images_Icons_CombatControls_AutochaseOn_over_png_693464955;
                this.defaultOverMask = "center";
                this.selectedDisabledMask = "center";
                this.selectedUpCenterImage = _embed_css_images_Icons_CombatControls_AutochaseOn_idle_png_1042873467;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".chatWidgetInput");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".chatWidgetInput", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.verticalAlign = "middle";
                this.horizontalGap = 2;
                this.horizontalAlign = "left";
                this.borderTopImage = _embed_css_images_BG_ChatTab_tileable_png_2085750710;
                this.borderMask = "bottom";
                this.borderBottomImage = "top";
                this.paddingTop = 2;
                this.borderSkin = BitmapBorderSkin;
                this.verticalGap = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".actionBarWidgetToggleRight");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".actionBarWidgetToggleRight", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.iconDefaultOverTopImage = "right";
                this.iconDefaultUpMask = "left";
                this.paddingRight = 0;
                this.selectedOverTopImage = "right";
                this.selectedDownLeftImage = "right";
                this.selectedOverLeftImage = "right";
                this.iconDefaultDownMask = "left";
                this.defaultDownTopImage = "right";
                this.borderLeft = 0;
                this.iconDefaultUpRightImage = _embed_css_images_Arrow_ScrollTabs_idle_png_1270948868;
                this.paddingBottom = 0;
                this.iconDefaultOverBottomImage = "right";
                this.iconSelectedDownMask = "right";
                this.iconDefaultDownRightImage = _embed_css_images_Arrow_ScrollTabs_pressed_png_23734072;
                this.borderBottom = 0;
                this.iconSelectedUpLeftImage = "right";
                this.iconSelectedDownTopImage = "right";
                this.selectedDownMask = "right";
                this.iconSelectedUpMask = "right";
                this.iconDefaultDownTopImage = "right";
                this.iconSelectedUpTopImage = "right";
                this.defaultOverLeftImage = "right";
                this.selectedUpTopImage = "right";
                this.iconSelectedDownBottomImage = "right";
                this.iconSelectedOverRightImage = _embed_css_images_Arrow_ScrollTabs_over_png_923510532;
                this.defaultDownMask = "left";
                this.selectedUpMask = "right";
                this.selectedDownBottomImage = "right";
                this.iconSelectedDownRightImage = _embed_css_images_Arrow_ScrollTabs_pressed_png_23734072;
                this.iconDefaultUpTopImage = "right";
                this.defaultDownLeftImage = "right";
                this.defaultOverRightImage = _embed_css_images_Arrow_HotkeyToggle_BG_png_894663834;
                this.borderRight = 0;
                this.selectedOverRightImage = _embed_css_images_Arrow_HotkeyToggle_BG_png_894663834;
                this.iconDefaultUpLeftImage = "right";
                this.selectedUpRightImage = _embed_css_images_Arrow_HotkeyToggle_BG_png_894663834;
                this.iconDefaultOverLeftImage = "right";
                this.defaultUpLeftImage = "right";
                this.paddingLeft = 0;
                this.iconDefaultUpBottomImage = "right";
                this.iconSelectedOverMask = "right";
                this.iconSelectedDownLeftImage = "right";
                this.iconSelectedOverLeftImage = "right";
                this.selectedUpLeftImage = "right";
                this.iconSelectedOverTopImage = "right";
                this.skin = BitmapButtonSkin;
                this.icon = BitmapButtonIcon;
                this.defaultOverBottomImage = "right";
                this.borderTop = 0;
                this.defaultDownBottomImage = "right";
                this.defaultUpRightImage = _embed_css_images_Arrow_HotkeyToggle_BG_png_894663834;
                this.defaultDownRightImage = _embed_css_images_Arrow_HotkeyToggle_BG_png_894663834;
                this.defaultUpBottomImage = "right";
                this.defaultUpTopImage = "right";
                this.iconSelectedUpRightImage = _embed_css_images_Arrow_ScrollTabs_idle_png_1270948868;
                this.defaultOverTopImage = "right";
                this.selectedDownRightImage = _embed_css_images_Arrow_HotkeyToggle_BG_png_894663834;
                this.selectedOverMask = "right";
                this.iconDefaultDownLeftImage = "right";
                this.iconDefaultOverMask = "left";
                this.paddingTop = 0;
                this.iconSelectedUpBottomImage = "right";
                this.defaultOverMask = "left";
                this.selectedUpBottomImage = "right";
                this.defaultUpMask = "left";
                this.iconSelectedOverBottomImage = "right";
                this.selectedOverBottomImage = "right";
                this.selectedDownTopImage = "right";
                this.iconDefaultDownBottomImage = "right";
                this.iconDefaultOverRightImage = _embed_css_images_Arrow_ScrollTabs_over_png_923510532;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".ingameShopYesButton");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".ingameShopYesButton", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.paddingBottom = 2;
                this.paddingRight = 8;
                this.icon = _embed_css_images_Icons_IngameShop_12x12_Yes_png_277089403;
                this.paddingTop = 2;
                this.paddingLeft = 8;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".sideBarHeaderMinimap");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".sideBarHeaderMinimap", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "center";
                this.selectedDownMask = "center";
                this.skin = BitmapButtonSkin;
                this.defaultDownMask = "center";
                this.selectedUpMask = "center";
                this.defaultUpCenterImage = _embed_css_images_Icons_WidgetMenu_Minimap_idle_png_221878075;
                this.selectedOverCenterImage = _embed_css_images_Icons_WidgetMenu_Minimap_active_over_png_512910992;
                this.defaultOverCenterImage = _embed_css_images_Icons_WidgetMenu_Minimap_idle_over_png_1782493982;
                this.selectedOverMask = "center";
                this.defaultDownCenterImage = _embed_css_images_Icons_WidgetMenu_Minimap_idle_over_png_1782493982;
                this.selectedDownCenterImage = _embed_css_images_Icons_WidgetMenu_Minimap_active_over_png_512910992;
                this.defaultOverMask = "center";
                this.selectedUpCenterImage = _embed_css_images_Icons_WidgetMenu_Minimap_active_png_741211379;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".widgetViewClose");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".widgetViewClose", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpCenterImage = _embed_css_images_Button_Close_idle_png_1484765638;
                this.defaultUpMask = "center";
                this.defaultOverCenterImage = _embed_css_images_Button_Close_over_png_1835217606;
                this.skin = BitmapButtonSkin;
                this.defaultDisabledCenterImage = _embed_css_images_Button_Close_disabled_png_985641870;
                this.defaultDisabledMask = "center";
                this.defaultDownCenterImage = _embed_css_images_Button_Close_pressed_png_1768279486;
                this.defaultDownMask = "center";
                this.defaultOverMask = "center";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".mouseControlOptionsList");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".mouseControlOptionsList", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.horizontalGridLineColor = 8089164;
                this.backgroundColor = "";
                this.borderColor = 8089164;
                this.selectionDuration = 0;
                this.alternatingItemColors = [1977654, 16711680];
                this.color = 13221291;
                this.selectionColor = 658961;
                this.backgroundAlpha = 0.8;
                this.borderAlpha = 1;
                this.selectionEasingFunction = "";
                this.headerSeparatorSkin = VectorDataGridHeaderSeparatorSkin;
                this.headerBackgroundSkin = VectorDataGridHeaderBackgroundSkin;
                this.borderThickness = 1;
                this.alternatingItemAlphas = [0.8, 0];
                this.rollOverColor = 2768716;
                this.verticalGridLines = true;
                this.verticalGridLineColor = 8089164;
                this.iconColor = 13221291;
                this.textSelectedColor = 13221291;
                this.textRollOverColor = 13221291;
                this.horizontalGridLines = false;
                this.borderStyle = "solid";
                this.disabledIconColor = 13221291;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".bodySlotTorsoBlessed");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".bodySlotTorsoBlessed", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.emptyBackgroundImage = _embed_css_images_Slot_InventoryArmor_protected_png_927863849;
                this.backgroundImage = _embed_css_images_slot_Hotkey_protected_png_599761708;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("Header");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("Header", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderThickness = 1;
                this.borderColor = 13415802;
                this.backgroundColor = 658961;
                this.horizontalGap = 4;
                this.paddingBottom = 0;
                this.paddingRight = 2;
                this.borderAlpha = 1;
                this.backgroundAlpha = 0.5;
                this.paddingTop = 2;
                this.borderStyle = "solid";
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".marketWidgetFilter");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".marketWidgetFilter", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.verticalAlign = "middle";
                this.backgroundColor = "";
                this.borderColor = "";
                this.paddingRight = 2;
                this.backgroundAlpha = 0;
                this.borderAlpha = 0;
                this.verticalGap = 2;
                this.borderThickness = 0;
                this.horizontalGap = 2;
                this.paddingBottom = 2;
                this.horizontalAlign = "center";
                this.paddingTop = 2;
                this.borderStyle = "none";
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".offerDarkBorder");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".offerDarkBorder", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.verticalAlign = "middle";
                this.borderColor = 7630671;
                this.backgroundColor = 658961;
                this.paddingRight = 2;
                this.borderAlpha = 1;
                this.backgroundAlpha = 0.5;
                this.verticalGap = 2;
                this.borderThickness = 1;
                this.horizontalGap = 2;
                this.paddingBottom = 2;
                this.horizontalAlign = "center";
                this.paddingTop = 2;
                this.borderStyle = "solid";
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".miniMapButtonWest");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".miniMapButtonWest", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "left";
                this.skin = BitmapButtonSkin;
                this.defaultOverBottomImage = "right";
                this.defaultOverLeftImage = "right";
                this.defaultDownMask = "left";
                this.defaultDownBottomImage = "right";
                this.defaultUpRightImage = _embed_css_images_Arrow_ScrollTabs_idle_png_1270948868;
                this.defaultDownTopImage = "right";
                this.defaultDownRightImage = _embed_css_images_Arrow_ScrollTabs_pressed_png_23734072;
                this.defaultUpBottomImage = "right";
                this.defaultUpTopImage = "right";
                this.defaultDownLeftImage = "right";
                this.defaultOverRightImage = _embed_css_images_Arrow_ScrollTabs_over_png_923510532;
                this.defaultOverTopImage = "right";
                this.defaultUpLeftImage = "right";
                this.defaultOverMask = "left";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".embeddedDialogTitleBox");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".embeddedDialogTitleBox", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.backgroundColor = 658961;
                this.paddingBottom = 2;
                this.horizontalAlign = "center";
                this.paddingRight = 2;
                this.backgroundAlpha = 0.8;
                this.paddingTop = 2;
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".premiumOnlyNoPremium");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".premiumOnlyNoPremium", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.icon = _embed_css_images_Icon_NoPremium_png_877662716;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("MiniMapWidgetView");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("MiniMapWidgetView", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.buttonWestStyle = "miniMapButtonWest";
                this.buttonUpStyle = "miniMapButtonUp";
                this.iconImage = _embed_css_images_Icons_WidgetHeaders_Minimap_png_1702247865;
                this.borderCenterMask = "all";
                this.buttonCenterStyle = "miniMapButtonCenter";
                this.borderFooterMask = "none";
                this.paddingRight = 0;
                this.buttonZoomOutStyle = "miniMapButtonZoomOut";
                this.borderCenterCenterImage = _embed_css_images_Minimap_png_743291237;
                this.paddingBottom = 0;
                this.buttonNorthStyle = "miniMapButtonNorth";
                this.buttonSouthStyle = "miniMapButtonSouth";
                this.buttonZoomInStyle = "miniMapButtonZoomIn";
                this.buttonDownStyle = "miniMapButtonDown";
                this.paddingTop = 0;
                this.paddingLeft = 0;
                this.buttonEastStyle = "miniMapButtonEast";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".withBackground");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".withBackground", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.backgroundSkin = _embed_css_images_Slot_Statusicon_png_1614431506;
                this.highlightSkin = _embed_css_images_Slot_Statusicon_highlighted_png_1342851938;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".preyRerollBonusButton");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".preyRerollBonusButton", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.icon = _embed_css____images_prey_prey_bonus_reroll_png_1466948457;
                this.disabledIcon = _embed_css____images_prey_prey_bonus_reroll_disabled_png_390059962;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".buddylistContent");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".buddylistContent", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.paddingBottom = 2;
                this.paddingRight = 2;
                this.paddingTop = 2;
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".bodySlotLegs");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".bodySlotLegs", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.emptyBackgroundImage = _embed_css_images_Slot_InventoryLegs_png_1709854540;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".chatWidgetTabBarScrollRightHighlight");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".chatWidgetTabBarScrollRightHighlight", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultDisabledRightImage = _embed_css_images_Arrow_ScrollTabsHighlighted_idle_png_739248183;
                this.defaultUpMask = "right";
                this.skin = BitmapButtonSkin;
                this.defaultOverLeftImage = "right";
                this.defaultDisabledMask = "right";
                this.defaultDisabledLeftImage = "right";
                this.defaultDownMask = "right";
                this.defaultUpRightImage = _embed_css_images_Arrow_ScrollTabsHighlighted_idle_png_739248183;
                this.defaultDownRightImage = _embed_css_images_Arrow_ScrollTabsHighlighted_pressed_png_1078060789;
                this.defaultDownLeftImage = "right";
                this.defaultOverRightImage = _embed_css_images_Arrow_ScrollTabsHighlighted_over_png_1141670601;
                this.defaultUpLeftImage = "right";
                this.defaultOverMask = "right";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".chatWidgetTabBar");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".chatWidgetTabBar", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.scrollRightButtonStyle = "chatWidgetTabBarScrollRight";
                this.dropDownButtonStyle = "chatWidgetTabBarDropDown";
                this.scrollLeftButtonStyle = "chatWidgetTabBarScrollLeft";
                this.scrollRightButtonHighlightStyle = "chatWidgetTabBarScrollRightHighlight";
                this.navItemStyle = "chatWidgetDefaultTab";
                this.scrollLeftButtonHighlightStyle = "chatWidgetTabBarScrollLeftHighlight";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("DragManager");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("DragManager", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.linkCursor = DragLinkCursor;
                this.rejectCursor = DragNoneCursor;
                this.copyCursor = DragCopyCursor;
                this.moveCursor = DragMoveCursor;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".nameFilterOptionsWhiteListEditor");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".nameFilterOptionsWhiteListEditor", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.nameFilterListStyle = "nameFilterEditorList";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("DataGrid");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("DataGrid", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.focusThickness = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".chatWidgetDefaultTabCloseButton");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".chatWidgetDefaultTabCloseButton", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpCenterImage = _embed_css_images_Button_ChatTab_Close_idle_png_1596905812;
                this.defaultUpMask = "center";
                this.defaultOverCenterImage = _embed_css_images_Button_ChatTab_Close_over_png_1810781612;
                this.skin = BitmapButtonSkin;
                this.defaultDownCenterImage = _embed_css_images_Button_ChatTab_Close_pressed_png_1829708064;
                this.defaultDownMask = "center";
                this.defaultOverMask = "center";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".miniMapButtonZoomOut");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".miniMapButtonZoomOut", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpCenterImage = _embed_css_images_Minimap_ZoomOut_idle_png_1351608618;
                this.defaultUpMask = "center";
                this.defaultOverCenterImage = _embed_css_images_Minimap_ZoomOut_over_png_448439766;
                this.skin = BitmapButtonSkin;
                this.defaultDownCenterImage = _embed_css_images_Minimap_ZoomOut_pressed_png_688977162;
                this.defaultDownMask = "center";
                this.defaultOverMask = "center";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".ingameShopOfferLastChance");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".ingameShopOfferLastChance", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.color = 38143;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".getCoinConfirmation");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".getCoinConfirmation", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.buttonYesStyle = "ingameShopYesButton";
                this.buttonCancelStyle = "ingameShopNoButton";
                this.errorColor = 16711680;
                this.informationColor = 4286945;
                this.successColor = 65280;
                this.buttonOkayStyle = "ingameShopYesButton";
                this.buttonNoStyle = "ingameShopNoButton";
                this.minimumButtonWidth = 60;
                this.titleBoxStyle = "popupDialogHeaderFooter";
                this.buttonBoxStyle = "popupDialogHeaderFooter";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".marketWidgetTabContainer");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".marketWidgetTabContainer", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.verticalAlign = "middle";
                this.horizontalGap = 2;
                this.paddingBottom = 2;
                this.horizontalAlign = "center";
                this.paddingRight = 2;
                this.paddingTop = 2;
                this.verticalGap = 2;
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".applyImbuementButton");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".applyImbuementButton", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.icon = _embed_css_____assets_images_imbuing_imbuing_icon_imbue_active_png_525826544;
                this.disabledIcon = _embed_css_____assets_images_imbuing_imbuing_icon_imbue_disabled_png_2033153132;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".ingameShopCategoryBox");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".ingameShopCategoryBox", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderThickness = 1;
                this.borderColor = 13415802;
                this.borderAlpha = 1;
                this.borderStyle = "solid";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("MessageOptions");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("MessageOptions", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.messageModeListStyle = "messageOptionsMessageModeList";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".npcAmountSelector");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".npcAmountSelector", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderThickness = 1;
                this.borderColor = 8089164;
                this.backgroundColor = 1977654;
                this.horizontalGap = 4;
                this.paddingBottom = 2;
                this.paddingRight = 2;
                this.borderAlpha = 1;
                this.backgroundAlpha = 0.5;
                this.paddingTop = 2;
                this.borderStyle = "solid";
                this.verticalGap = 1;
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".bodySlotRightHandBlessed");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".bodySlotRightHandBlessed", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.emptyBackgroundImage = _embed_css_images_Slot_InventoryShield_protected_png_1278597573;
                this.backgroundImage = _embed_css_images_slot_Hotkey_protected_png_599761708;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".optionsConfigurationWidgetTabContainer");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".optionsConfigurationWidgetTabContainer", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.verticalAlign = "middle";
                this.horizontalGap = 2;
                this.paddingBottom = 2;
                this.horizontalAlign = "center";
                this.paddingRight = 2;
                this.paddingTop = 2;
                this.verticalGap = 2;
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".storeConfirmation");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".storeConfirmation", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.fontFamily = "Verdana";
                this.color = 13684944;
                this.textAlign = "center";
                this.fontSize = 9;
                this.paddingTop = 2;
                this.fontStyle = "normal";
                this.fontWeight = "bold";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".battlelistWidgetViewHideNPC");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".battlelistWidgetViewHideNPC", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "center";
                this.selectedDownMask = "center";
                this.skin = BitmapButtonSkin;
                this.defaultDownMask = "center";
                this.selectedUpMask = "center";
                this.defaultUpCenterImage = _embed_css_images_Icons_BattleList_HideNPCs_idle_png_2055571635;
                this.selectedOverCenterImage = _embed_css_images_Icons_BattleList_HideNPCs_active_over_png_689351800;
                this.defaultOverCenterImage = _embed_css_images_Icons_BattleList_HideNPCs_over_png_1176765363;
                this.selectedOverMask = "center";
                this.defaultDownCenterImage = _embed_css_images_Icons_BattleList_HideNPCs_over_png_1176765363;
                this.selectedDownCenterImage = _embed_css_images_Icons_BattleList_HideNPCs_active_over_png_689351800;
                this.defaultOverMask = "center";
                this.selectedUpCenterImage = _embed_css_images_Icons_BattleList_HideNPCs_active_png_1819940219;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("ToggleBar");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("ToggleBar", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderRightImage = _embed_css_images_Border02_WidgetSidebar_png_117159345;
                this.verticalGap = 1;
                this.borderSkin = BitmapBorderSkin;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".marketWidgetView");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".marketWidgetView", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.verticalAlign = "middle";
                this.backgroundColor = "";
                this.borderColor = "";
                this.paddingRight = 2;
                this.backgroundAlpha = 0;
                this.borderAlpha = 0;
                this.verticalGap = 2;
                this.borderThickness = 0;
                this.horizontalGap = 2;
                this.paddingBottom = 2;
                this.horizontalAlign = "center";
                this.paddingTop = 2;
                this.borderStyle = "none";
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".buyStyle");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".buyStyle", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "left center right";
                this.color = 16777215;
                this.skin = BitmapButtonSkin;
                this.defaultOverLeftImage = _embed_css_images_custombutton_Button_IngameShopBuy_tileable_end_over_png_1827437082;
                this.defaultDownMask = "left center right";
                this.disabledColor = 16777215;
                this.defaultUpRightImage = "left";
                this.defaultUpCenterImage = _embed_css_images_custombutton_Button_IngameShopBuy_tileable_idle_png_868578070;
                this.defaultDownRightImage = "left";
                this.defaultDownLeftImage = _embed_css_images_custombutton_Button_IngameShopBuy_tileable_end_pressed_png_158904546;
                this.defaultOverRightImage = "left";
                this.defaultOverCenterImage = _embed_css_images_custombutton_Button_IngameShopBuy_tileable_over_png_2131882518;
                this.textSelectedColor = 16777215;
                this.textRollOverColor = 16777215;
                this.defaultDownCenterImage = _embed_css_images_custombutton_Button_IngameShopBuy_tileable_pressed_png_1564750646;
                this.defaultUpLeftImage = _embed_css_images_custombutton_Button_IngameShopBuy_tileable_end_idle_png_550365978;
                this.defaultOverMask = "left center right";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".preyRerollListButton");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".preyRerollListButton", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.paddingBottom = 20;
                this.icon = _embed_css____images_prey_prey_list_reroll_png_1445322350;
                this.disabledIcon = _embed_css____images_prey_prey_list_reroll_disabled_png_1540923221;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".npcCommitBox");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".npcCommitBox", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.paddingBottom = 2;
                this.paddingRight = 2;
                this.paddingTop = 2;
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("SafeTradeWidgetView");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("SafeTradeWidgetView", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.separatorColor = 8089164;
                this.tradeHeaderStyle = "tradeHeaderStyle";
                this.errorColor = 16711680;
                this.iconImage = _embed_css_images_Icons_WidgetHeaders_SafeTrades_png_1432960306;
                this.color = 13221291;
                this.tradeFooterStyle = "tradeFooterStyle";
                this.tradeItemListStyle = "tradeItemListStyle";
                this.disabledColor = 13221291;
                this.tradeItemSlotStyle = "";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".preySelectPreyMonsterButton");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".preySelectPreyMonsterButton", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.icon = _embed_css____images_prey_prey_confirm_monster_selection_png_1647154181;
                this.disabledIcon = _embed_css____images_prey_prey_confirm_monster_selection_disabled_png_1414880872;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".actionBarWidgetToggleLeft");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".actionBarWidgetToggleLeft", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.iconDefaultOverTopImage = "right";
                this.iconDefaultUpMask = "right";
                this.paddingRight = 0;
                this.selectedOverTopImage = "right";
                this.selectedDownLeftImage = "right";
                this.selectedOverLeftImage = "right";
                this.iconDefaultDownMask = "right";
                this.defaultDownTopImage = "right";
                this.borderLeft = 0;
                this.iconDefaultUpRightImage = _embed_css_images_Arrow_ScrollTabs_idle_png_1270948868;
                this.paddingBottom = 0;
                this.iconDefaultOverBottomImage = "right";
                this.iconSelectedDownMask = "left";
                this.iconDefaultDownRightImage = _embed_css_images_Arrow_ScrollTabs_pressed_png_23734072;
                this.borderBottom = 0;
                this.iconSelectedUpLeftImage = "right";
                this.iconSelectedDownTopImage = "right";
                this.selectedDownMask = "left";
                this.iconSelectedUpMask = "left";
                this.iconDefaultDownTopImage = "right";
                this.iconSelectedUpTopImage = "right";
                this.defaultOverLeftImage = "right";
                this.selectedUpTopImage = "right";
                this.iconSelectedDownBottomImage = "right";
                this.iconSelectedOverRightImage = _embed_css_images_Arrow_ScrollTabs_over_png_923510532;
                this.defaultDownMask = "right";
                this.selectedUpMask = "left";
                this.selectedDownBottomImage = "right";
                this.iconSelectedDownRightImage = _embed_css_images_Arrow_ScrollTabs_pressed_png_23734072;
                this.iconDefaultUpTopImage = "right";
                this.defaultDownLeftImage = "right";
                this.defaultOverRightImage = _embed_css_images_Arrow_HotkeyToggle_BG_png_894663834;
                this.borderRight = 0;
                this.selectedOverRightImage = _embed_css_images_Arrow_HotkeyToggle_BG_png_894663834;
                this.iconDefaultUpLeftImage = "right";
                this.selectedUpRightImage = _embed_css_images_Arrow_HotkeyToggle_BG_png_894663834;
                this.iconDefaultOverLeftImage = "right";
                this.defaultUpLeftImage = "right";
                this.paddingLeft = 0;
                this.iconDefaultUpBottomImage = "right";
                this.iconSelectedOverMask = "left";
                this.iconSelectedDownLeftImage = "right";
                this.iconSelectedOverLeftImage = "right";
                this.selectedUpLeftImage = "right";
                this.iconSelectedOverTopImage = "right";
                this.skin = BitmapButtonSkin;
                this.icon = BitmapButtonIcon;
                this.defaultOverBottomImage = "right";
                this.borderTop = 0;
                this.defaultDownBottomImage = "right";
                this.defaultUpRightImage = _embed_css_images_Arrow_HotkeyToggle_BG_png_894663834;
                this.defaultDownRightImage = _embed_css_images_Arrow_HotkeyToggle_BG_png_894663834;
                this.defaultUpBottomImage = "right";
                this.defaultUpTopImage = "right";
                this.iconSelectedUpRightImage = _embed_css_images_Arrow_ScrollTabs_idle_png_1270948868;
                this.defaultOverTopImage = "right";
                this.selectedDownRightImage = _embed_css_images_Arrow_HotkeyToggle_BG_png_894663834;
                this.selectedOverMask = "left";
                this.iconDefaultDownLeftImage = "right";
                this.iconDefaultOverMask = "right";
                this.paddingTop = 0;
                this.iconSelectedUpBottomImage = "right";
                this.defaultOverMask = "right";
                this.selectedUpBottomImage = "right";
                this.defaultUpMask = "right";
                this.iconSelectedOverBottomImage = "right";
                this.selectedOverBottomImage = "right";
                this.selectedDownTopImage = "right";
                this.iconDefaultDownBottomImage = "right";
                this.iconDefaultOverRightImage = _embed_css_images_Arrow_ScrollTabs_over_png_923510532;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".purchaseCompletedStyle");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".purchaseCompletedStyle", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpCenterImage = _embed_css_images_Button_PurchaseComplete_idle_png_1080771936;
                this.defaultUpMask = "center";
                this.defaultOverCenterImage = _embed_css_images_Button_PurchaseComplete_over_png_1965214304;
                this.skin = BitmapButtonSkin;
                this.defaultDownCenterImage = _embed_css_images_Button_PurchaseComplete_pressed_png_231187156;
                this.defaultDownMask = "center";
                this.defaultOverMask = "center";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".actionBarWidgetScrollRight");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".actionBarWidgetScrollRight", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultDisabledRightImage = _embed_css_images_Arrow_ScrollHotkeys_disabled_png_733938325;
                this.paddingRight = 0;
                this.skin = BitmapButtonSkin;
                this.defaultOverBottomImage = "right";
                this.defaultDisabledLeftImage = "right";
                this.defaultDisabledTopImage = "right";
                this.defaultDownBottomImage = "right";
                this.defaultUpRightImage = _embed_css_images_Arrow_ScrollHotkeys_idle_png_1125517443;
                this.defaultDownTopImage = "right";
                this.defaultDownRightImage = _embed_css_images_Arrow_ScrollHotkeys_pressed_png_1521804567;
                this.defaultUpBottomImage = "right";
                this.defaultUpTopImage = "right";
                this.paddingBottom = 0;
                this.defaultOverTopImage = "right";
                this.paddingTop = 0;
                this.defaultDisabledBottomImage = "right";
                this.defaultOverMask = "right";
                this.defaultUpMask = "right";
                this.defaultOverLeftImage = "right";
                this.defaultDisabledMask = "right";
                this.defaultDownMask = "right";
                this.defaultDownLeftImage = "right";
                this.defaultOverRightImage = _embed_css_images_Arrow_ScrollHotkeys_over_png_384271747;
                this.defaultUpLeftImage = "right";
                this.paddingLeft = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("OutfitColourSelector");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("OutfitColourSelector", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.selectionAlpha = 1;
                this.horizontalGap = 2;
                this.paddingBottom = 0;
                this.pickerSize = 12;
                this.selectionColor = 13221291;
                this.paddingRight = 0;
                this.paddingTop = 0;
                this.verticalGap = 2;
                this.paddingLeft = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".imbuingDuration");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".imbuingDuration", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.backgroundLeftImage = _embed_css_images_BG_BarsProgress_compact_endpiece_png_1855154097;
                this.backgroundRightImage = "left";
                this.barImages = "barDefault";
                this.paddingBottom = 2;
                this.barDefault = _embed_css_images_BarsProgress_compact_orange_png_546584162;
                this.backgroundMask = "left center right";
                this.labelHorizontalAlign = "center";
                this.paddingTop = 2;
                this.backgroundCenterImage = _embed_css_images_BG_BarsProgress_compact_tileable_png_1910104912;
                this.barLimits = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".ingameShopOfferRendererBoxDisabled");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".ingameShopOfferRendererBoxDisabled", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderThickness = 1;
                this.borderColor = 7630671;
                this.backgroundColor = 658961;
                this.horizontalAlign = "center";
                this.borderAlpha = 1;
                this.backgroundAlpha = 0.5;
                this.borderSkin = VectorBorderSkin;
                this.borderStyle = "solid";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".bodySlotNeck");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".bodySlotNeck", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.emptyBackgroundImage = _embed_css_images_Slot_InventoryNecklace_png_1546753575;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".npcTradeModeBox");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".npcTradeModeBox", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.verticalAlign = "middle";
                this.paddingBottom = 0;
                this.horizontalAlign = "left";
                this.paddingRight = 2;
                this.borderTopImage = _embed_css_images_BG_ChatTab_tileable_png_2085750710;
                this.borderMask = "top";
                this.paddingTop = 0;
                this.borderSkin = BitmapBorderSkin;
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("PremiumWidgetView");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("PremiumWidgetView", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.iconImage = _embed_css_images_Icons_WidgetHeaders_GetPremium_png_182154549;
                this.color = 13221291;
                this.borderFooterMask = "none";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".rootContainer");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".rootContainer", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.dividerBackgroundRightImage = _embed_css_images_Border02_png_325729410;
                this.dividerKnobAlignment = "top";
                this.dividerBackgroundTopRightImage = _embed_css_images_Border02_corners_png_2021856475;
                this.horizontalGap = 0;
                this.dividerThickness = 7;
                this.dividerBackgroundMask = "topLeft top topRight";
                this.dividerAffordance = 7;
                this.dividerKnobMask = "top";
                this.verticalGap = 7;
                this.dividerBackgroundTopLeftImage = "topRight";
                this.dividerKnobTopImage = _embed_css_images_ChatWindow_Mover_png_2093646078;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".npcSummaryBox");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".npcSummaryBox", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.paddingBottom = 2;
                this.paddingRight = 2;
                this.paddingTop = 2;
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".bodySlotHip");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".bodySlotHip", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.emptyBackgroundImage = _embed_css_images_Slot_InventoryAmmo_png_1547247007;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("ToolTip");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("ToolTip", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderThickness = 1;
                this.borderColor = 13415802;
                this.backgroundColor = 658961;
                this.color = 13221291;
                this.borderAlpha = 1;
                this.backgroundAlpha = 0.8;
                this.borderSkin = VectorBorderSkin;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".combatButtonMount");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".combatButtonMount", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "center";
                this.selectedDownMask = "center";
                this.skin = BitmapButtonSkin;
                this.defaultDisabledMask = "center";
                this.defaultDownMask = "center";
                this.selectedUpMask = "center";
                this.defaultUpCenterImage = _embed_css_images_Icons_CombatControls_Unmounted_idle_png_1280851370;
                this.selectedOverCenterImage = _embed_css_images_Icons_CombatControls_Mounted_over_png_530926481;
                this.defaultOverCenterImage = _embed_css_images_Icons_CombatControls_Unmounted_over_png_1075295914;
                this.selectedOverMask = "center";
                this.defaultDownCenterImage = _embed_css_images_Icons_CombatControls_Unmounted_over_png_1075295914;
                this.selectedDownCenterImage = _embed_css_images_Icons_CombatControls_Mounted_over_png_530926481;
                this.defaultOverMask = "center";
                this.selectedDisabledMask = "center";
                this.selectedUpCenterImage = _embed_css_images_Icons_CombatControls_Mounted_idle_png_325891217;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".statusWidgetParallelMana");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".statusWidgetParallelMana", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.barImages = "barDefault";
                this.backgroundRightImage = _embed_css_images_BG_Bars_default_enpiece_png_521656500;
                this.paddingRight = 3;
                this.backgroundMask = "center";
                this.leftOrnamentMask = "left";
                this.rightOrnamentMask = "right";
                this.backgroundCenterImage = _embed_css_images_BG_Bars_default_tileable_png_870405027;
                this.rightOrnamentRightImage = _embed_css_images_BG_Bars_default_enpieceOrnamented_png_1899164501;
                this.backgroundLeftImage = "right";
                this.leftOrnamentLeftImage = "right";
                this.paddingBottom = 3;
                this.barDefault = _embed_css_images_BarsHealth_default_Mana_png_1278936006;
                this.leftOrnamentOffset = -5;
                this.rightOrnamentOffset = 5;
                this.paddingTop = 1;
                this.leftOrnamentRightImage = _embed_css_images_BG_Bars_default_enpieceOrnamented_png_1899164501;
                this.paddingLeft = 3;
                this.barLimits = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".bodySlotHipBlessed");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".bodySlotHipBlessed", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.emptyBackgroundImage = _embed_css_images_Slot_InventoryAmmo_protected_png_240306684;
                this.backgroundImage = _embed_css_images_slot_Hotkey_protected_png_599761708;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("TextArea");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("TextArea", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderThickness = 1;
                this.borderColor = 0;
                this.backgroundColor = 2240055;
                this.focusThickness = 0;
                this.borderAlpha = 1;
                this.backgroundAlpha = 0.5;
                this.borderStyle = "solid";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".bodySlotBack");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".bodySlotBack", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.emptyBackgroundImage = _embed_css_images_Slot_InventoryBackpack_png_1273847565;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("SpellIconRenderer");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("SpellIconRenderer", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.overlaySelectedImage = _embed_css_images_slot_container_highlighted_png_1088656264;
                this.paddingBottom = 1;
                this.backgroundImage = _embed_css_images_slot_container_png_2040378388;
                this.paddingRight = 1;
                this.overlayUnavailableImage = _embed_css_images_slot_container_disabled_png_1808112001;
                this.paddingTop = 1;
                this.paddingLeft = 1;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".bodySlotBackBlessed");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".bodySlotBackBlessed", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.emptyBackgroundImage = _embed_css_images_Slot_InventoryBackpack_protected_png_415207230;
                this.backgroundImage = _embed_css_images_slot_Hotkey_protected_png_599761708;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".statusWidgetParallelSkillProgress");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".statusWidgetParallelSkillProgress", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.tickCenterImage = _embed_css_images_Bars_ProgressMarker_png_1964646600;
                this.backgroundRightImage = "left";
                this.barImages = "barDefault";
                this.tickMask = "center";
                this.paddingRight = -5;
                this.backgroundMask = "left center right";
                this.backgroundCenterImage = _embed_css_images_BG_BarsXP_default_tileable_png_940157883;
                this.backgroundLeftImage = _embed_css_images_BG_BarsXP_default_endpiece_png_928913106;
                this.barDefault = _embed_css_images_BarsXP_default__png_444460763;
                this.paddingBottom = 4;
                this.tickOffset = 3;
                this.paddingTop = 3;
                this.paddingLeft = -5;
                this.barLimits = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".sideBarHeaderBattlelist");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".sideBarHeaderBattlelist", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "center";
                this.selectedDownMask = "center";
                this.skin = BitmapButtonSkin;
                this.defaultDownMask = "center";
                this.selectedUpMask = "center";
                this.defaultUpCenterImage = _embed_css_images_Icons_WidgetMenu_BattleList_idle_png_1174603830;
                this.selectedOverCenterImage = _embed_css_images_Icons_WidgetMenu_BattleList_active_over_png_223263679;
                this.defaultOverCenterImage = _embed_css_images_Icons_WidgetMenu_BattleList_idle_over_png_665859085;
                this.selectedOverMask = "center";
                this.defaultDownCenterImage = _embed_css_images_Icons_WidgetMenu_BattleList_idle_over_png_665859085;
                this.selectedDownCenterImage = _embed_css_images_Icons_WidgetMenu_BattleList_active_over_png_223263679;
                this.defaultOverMask = "center";
                this.selectedUpCenterImage = _embed_css_images_Icons_WidgetMenu_BattleList_active_png_1125073948;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("BuddylistWidgetView");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("BuddylistWidgetView", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.horizontalGap = 0;
                this.listStyle = "buddylist";
                this.paddingBottom = 0;
                this.iconImage = _embed_css_images_Icons_WidgetHeaders_VipList_png_497777823;
                this.paddingRight = 0;
                this.listBoxStyle = "buddylistContent";
                this.paddingTop = 0;
                this.verticalGap = 0;
                this.paddingLeft = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".ingameShopCategories");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".ingameShopCategories", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.paddintTop = 0;
                this.alternatingItemColors = [1842980, 2174521];
                this.paddingRight = 2;
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".removeImbuementButton");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".removeImbuementButton", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.icon = _embed_css_____assets_images_imbuing_imbuing_icon_remove_active_png_76120164;
                this.disabledIcon = _embed_css_____assets_images_imbuing_imbuing_icon_remove_disabled_png_1945969384;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".npcTradeButtonLayout");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".npcTradeButtonLayout", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "center";
                this.selectedDownMask = "center";
                this.skin = BitmapButtonSkin;
                this.defaultDownMask = "center";
                this.selectedUpMask = "center";
                this.defaultUpCenterImage = _embed_css_images_Icons_TradeLists_ContainerDisplay_idle_png_856063263;
                this.selectedOverCenterImage = _embed_css_images_Icons_TradeLists_ListDisplay_over_png_339097462;
                this.defaultOverCenterImage = _embed_css_images_Icons_TradeLists_ContainerDisplay_over_png_1203759647;
                this.selectedOverMask = "center";
                this.defaultDownCenterImage = _embed_css_images_Icons_TradeLists_ContainerDisplay_pressed_png_545689075;
                this.selectedDownCenterImage = _embed_css_images_Icons_TradeLists_ListDisplay_pressed_png_1980153550;
                this.defaultOverMask = "center";
                this.selectedUpCenterImage = _embed_css_images_Icons_TradeLists_ListDisplay_idle_png_545437302;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".preyRerollListButtonSmall");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".preyRerollListButtonSmall", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.paddingRight = 75;
                this.icon = _embed_css____images_prey_prey_list_reroll_small_png_1530659080;
                this.disabledIcon = _embed_css____images_prey_prey_list_reroll_small_disabled_png_546735861;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("FocusNotifier");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("FocusNotifier", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.modalTransparencyColor = 1580578;
                this.color = 13120000;
                this.modalTransparencyBlur = 0;
                this.modalTransparencyDuration = 0;
                this.modalTransparency = 0.5;
                this.fontSize = 18;
                this.fontWeight = "bold";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".embeddedDialogTitle");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".embeddedDialogTitle", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.fontSize = 11;
                this.fontWeight = "bold";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".marketWidgetViewToggle");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".marketWidgetViewToggle", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "center";
                this.selectedDownMask = "center";
                this.skin = BitmapButtonSkin;
                this.defaultDownMask = "center";
                this.selectedUpMask = "center";
                this.defaultUpCenterImage = _embed_css_images_Icons_TradeLists_ContainerDisplay_idle_png_856063263;
                this.selectedOverCenterImage = _embed_css_images_Icons_TradeLists_ListDisplay_over_png_339097462;
                this.defaultOverCenterImage = _embed_css_images_Icons_TradeLists_ContainerDisplay_over_png_1203759647;
                this.selectedOverMask = "center";
                this.defaultDownCenterImage = _embed_css_images_Icons_TradeLists_ContainerDisplay_pressed_png_545689075;
                this.selectedDownCenterImage = _embed_css_images_Icons_TradeLists_ListDisplay_pressed_png_1980153550;
                this.defaultOverMask = "center";
                this.selectedUpCenterImage = _embed_css_images_Icons_TradeLists_ListDisplay_idle_png_545437302;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("CategoryRenderer");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("CategoryRenderer", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.verticalAlign = "middle";
                this.paddintTop = 0;
                this.horizontalGap = 4;
                this.paddingRight = 2;
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".astralSourceBox");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".astralSourceBox", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderThickness = 1;
                this.borderColor = 7630671;
                this.backgroundColor = 1842980;
                this.borderAlpha = 1;
                this.borderStyle = "solid";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".sideBarToggleLeft");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".sideBarToggleLeft", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.iconDefaultOverTopImage = "right";
                this.iconDefaultUpMask = "right";
                this.paddingRight = 0;
                this.selectedOverTopImage = "right";
                this.selectedDownLeftImage = "right";
                this.selectedOverLeftImage = "right";
                this.iconDefaultDownMask = "right";
                this.defaultDownTopImage = "right";
                this.iconDefaultUpRightImage = _embed_css_images_Arrow_WidgetToggle_idle_png_742472731;
                this.paddingBottom = 0;
                this.iconDefaultOverBottomImage = "right";
                this.iconSelectedDownMask = "left";
                this.iconDefaultDownRightImage = _embed_css_images_Arrow_WidgetToggle_pressed_png_737576647;
                this.iconSelectedUpLeftImage = "right";
                this.iconSelectedDownTopImage = "right";
                this.selectedDownMask = "left";
                this.iconSelectedUpMask = "left";
                this.iconDefaultDownTopImage = "right";
                this.iconSelectedUpTopImage = "right";
                this.defaultOverLeftImage = "right";
                this.selectedUpTopImage = "right";
                this.iconSelectedDownBottomImage = "right";
                this.iconSelectedOverRightImage = _embed_css_images_Arrow_WidgetToggle_over_png_411548443;
                this.defaultDownMask = "right";
                this.selectedUpMask = "left";
                this.selectedDownBottomImage = "right";
                this.iconSelectedDownRightImage = _embed_css_images_Arrow_WidgetToggle_pressed_png_737576647;
                this.iconDefaultUpTopImage = "right";
                this.defaultDownLeftImage = "right";
                this.defaultOverRightImage = _embed_css_images_Arrow_WidgetToggle_BG_png_1428913496;
                this.selectedOverRightImage = _embed_css_images_Arrow_WidgetToggle_BG_png_1428913496;
                this.iconDefaultUpLeftImage = "right";
                this.selectedUpRightImage = _embed_css_images_Arrow_WidgetToggle_BG_png_1428913496;
                this.iconDefaultOverLeftImage = "right";
                this.defaultUpLeftImage = "right";
                this.paddingLeft = 0;
                this.iconDefaultUpBottomImage = "right";
                this.iconSelectedOverMask = "left";
                this.iconSelectedDownLeftImage = "right";
                this.iconSelectedOverLeftImage = "right";
                this.selectedUpLeftImage = "right";
                this.iconSelectedOverTopImage = "right";
                this.skin = BitmapButtonSkin;
                this.icon = BitmapButtonIcon;
                this.defaultOverBottomImage = "right";
                this.defaultDownBottomImage = "right";
                this.defaultUpRightImage = _embed_css_images_Arrow_WidgetToggle_BG_png_1428913496;
                this.toggleButtonStyle = "sideBarToggleLeft";
                this.defaultDownRightImage = _embed_css_images_Arrow_WidgetToggle_BG_png_1428913496;
                this.defaultUpBottomImage = "right";
                this.defaultUpTopImage = "right";
                this.iconSelectedUpRightImage = _embed_css_images_Arrow_WidgetToggle_idle_png_742472731;
                this.defaultOverTopImage = "right";
                this.selectedDownRightImage = _embed_css_images_Arrow_WidgetToggle_BG_png_1428913496;
                this.selectedOverMask = "left";
                this.iconDefaultDownLeftImage = "right";
                this.iconDefaultOverMask = "right";
                this.paddingTop = 0;
                this.iconSelectedUpBottomImage = "right";
                this.defaultOverMask = "right";
                this.selectedUpBottomImage = "right";
                this.defaultUpMask = "right";
                this.iconSelectedOverBottomImage = "right";
                this.selectedOverBottomImage = "right";
                this.selectedDownTopImage = "right";
                this.borderMask = "right";
                this.iconDefaultDownBottomImage = "right";
                this.iconDefaultOverRightImage = _embed_css_images_Arrow_WidgetToggle_over_png_411548443;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("Container");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("Container", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.focusThickness = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".hotkeyOptionsSetScrollLeft");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".hotkeyOptionsSetScrollLeft", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultDisabledRightImage = _embed_css_images_Arrow_ScrollTabs_disabled_png_1404963900;
                this.defaultUpMask = "left";
                this.skin = BitmapButtonSkin;
                this.defaultOverLeftImage = "right";
                this.defaultDisabledMask = "left";
                this.defaultDisabledLeftImage = "right";
                this.defaultDownMask = "left";
                this.defaultUpRightImage = _embed_css_images_Arrow_ScrollTabs_idle_png_1270948868;
                this.defaultDownRightImage = _embed_css_images_Arrow_ScrollTabs_pressed_png_23734072;
                this.defaultDownLeftImage = "right";
                this.defaultOverRightImage = _embed_css_images_Arrow_ScrollTabs_over_png_923510532;
                this.defaultUpLeftImage = "right";
                this.defaultOverMask = "left";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("Tibia");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("Tibia", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.themeColor = 13221291;
                this.borderMask = "center";
                this.borderSkin = BitmapBorderSkin;
                this.borderCenterImage = _embed_css_images_BG_BohemianTileable_png_2136128651;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".chatWidgetTabBarScrollRight");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".chatWidgetTabBarScrollRight", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultDisabledRightImage = _embed_css_images_Arrow_ScrollTabs_disabled_png_1404963900;
                this.defaultUpMask = "right";
                this.skin = BitmapButtonSkin;
                this.defaultOverBottomImage = "right";
                this.defaultOverLeftImage = "right";
                this.defaultDisabledMask = "right";
                this.defaultDisabledLeftImage = "right";
                this.defaultDownMask = "right";
                this.defaultDownBottomImage = "right";
                this.defaultUpRightImage = _embed_css_images_Arrow_ScrollTabs_idle_png_1270948868;
                this.defaultDownRightImage = _embed_css_images_Arrow_ScrollTabs_pressed_png_23734072;
                this.defaultUpBottomImage = "right";
                this.defaultDownLeftImage = "right";
                this.defaultOverRightImage = _embed_css_images_Arrow_ScrollTabs_over_png_923510532;
                this.defaultUpLeftImage = "right";
                this.defaultDisabledBottomImage = "right";
                this.defaultOverMask = "right";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("List");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("List", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.backgroundColor = "";
                this.selectionDuration = 0;
                this.alternatingItemColors = [658961, 658961];
                this.color = 13221291;
                this.selectionColor = 4936794;
                this.backgroundAlpha = 0.8;
                this.selectionEasingFunction = "";
                this.borderSkin = EmptySkin;
                this.alternatingItemAlphas = [0.8, 0.8];
                this.rollOverColor = 2633265;
                this.focusThickness = 0;
                this.textSelectedColor = 13221291;
                this.textRollOverColor = 13221291;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".editMarkWidgetRootContainer");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".editMarkWidgetRootContainer", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.paddingBottom = 2;
                this.paddingRight = 2;
                this.paddingTop = 2;
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".notEnoughCurrency");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".notEnoughCurrency", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.color = 13120000;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".miniMapButtonCenter");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".miniMapButtonCenter", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpCenterImage = _embed_css_images_Minimap_Center_idle_png_1673985770;
                this.defaultUpMask = "center";
                this.defaultOverCenterImage = _embed_css_images_Minimap_Center_over_png_55780374;
                this.skin = BitmapButtonSkin;
                this.defaultDownCenterImage = _embed_css_images_Minimap_Center_active_png_1589000392;
                this.defaultDownMask = "center";
                this.defaultOverMask = "center";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("ContextMenuBase");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("ContextMenuBase", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderThickness = 1;
                this.borderColor = 13415802;
                this.backgroundColor = 658961;
                this.paddingBottom = 2;
                this.paddingRight = 2;
                this.borderAlpha = 1;
                this.backgroundAlpha = 0.8;
                this.paddingTop = 2;
                this.borderSkin = VectorBorderSkin;
                this.verticalGap = 0;
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("ContainerViewWidgetView");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("ContainerViewWidgetView", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.slotPaddingTop = 0;
                this.slotVerticalGap = 2;
                this.paddingRight = 1;
                this.verticalGap = 2;
                this.slotHorizontalGap = 2;
                this.slotPaddingRight = 0;
                this.pageRightButtonStyle = "containerPageRight";
                this.horizontalGap = 2;
                this.pageFooterStyle = "containerPageFooter";
                this.slotPaddingBottom = 0;
                this.upButtonStyle = "containerWigdetViewUp";
                this.slotVerticalAlign = "middle";
                this.pageLeftButtonStyle = "containerPageLeft";
                this.slotPaddingLeft = 5;
                this.slotHorizontalAlign = "center";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".miniMapButtonSouth");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".miniMapButtonSouth", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "bottom";
                this.skin = BitmapButtonSkin;
                this.defaultOverBottomImage = "right";
                this.defaultOverLeftImage = "right";
                this.defaultDownMask = "bottom";
                this.defaultDownBottomImage = "right";
                this.defaultUpRightImage = _embed_css_images_Arrow_ScrollTabs_idle_png_1270948868;
                this.defaultDownTopImage = "right";
                this.defaultDownRightImage = _embed_css_images_Arrow_ScrollTabs_pressed_png_23734072;
                this.defaultUpBottomImage = "right";
                this.defaultUpTopImage = "right";
                this.defaultDownLeftImage = "right";
                this.defaultOverRightImage = _embed_css_images_Arrow_ScrollTabs_over_png_923510532;
                this.defaultOverTopImage = "right";
                this.defaultUpLeftImage = "right";
                this.defaultOverMask = "bottom";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".npcTradeWidgetView");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".npcTradeWidgetView", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.overlayHighlightImage = _embed_css_images_slot_container_highlighted_png_1088656264;
                this.paddingBottom = 1;
                this.backgroundImage = _embed_css_images_slot_container_png_2040378388;
                this.paddingRight = 1;
                this.overlayDisabledImage = _embed_css_images_slot_container_disabled_png_1808112001;
                this.paddingTop = 1;
                this.paddingLeft = 1;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".battlelistHeader");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".battlelistHeader", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.verticalAlign = "middle";
                this.horizontalGap = 2;
                this.paddingBottom = 0;
                this.horizontalAlign = "center";
                this.paddingRight = 2;
                this.borderTopImage = _embed_css_images_BG_ChatTab_tileable_png_2085750710;
                this.borderMask = "top";
                this.paddingTop = 0;
                this.borderSkin = BitmapBorderSkin;
                this.verticalGap = 0;
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".battlelistContent");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".battlelistContent", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.paddingBottom = 2;
                this.paddingRight = 2;
                this.paddingTop = 2;
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".actionBarWidgetScrollLeft");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".actionBarWidgetScrollLeft", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultDisabledRightImage = _embed_css_images_Arrow_ScrollHotkeys_disabled_png_733938325;
                this.paddingRight = 0;
                this.skin = BitmapButtonSkin;
                this.defaultOverBottomImage = "right";
                this.defaultDisabledLeftImage = "right";
                this.defaultDisabledTopImage = "right";
                this.defaultDownBottomImage = "right";
                this.defaultUpRightImage = _embed_css_images_Arrow_ScrollHotkeys_idle_png_1125517443;
                this.defaultDownTopImage = "right";
                this.defaultDownRightImage = _embed_css_images_Arrow_ScrollHotkeys_pressed_png_1521804567;
                this.defaultUpBottomImage = "right";
                this.defaultUpTopImage = "right";
                this.paddingBottom = 0;
                this.defaultOverTopImage = "right";
                this.paddingTop = 0;
                this.defaultDisabledBottomImage = "right";
                this.defaultOverMask = "left";
                this.defaultUpMask = "left";
                this.defaultOverLeftImage = "right";
                this.defaultDisabledMask = "left";
                this.defaultDownMask = "left";
                this.defaultDownLeftImage = "right";
                this.defaultOverRightImage = _embed_css_images_Arrow_ScrollHotkeys_over_png_384271747;
                this.defaultUpLeftImage = "right";
                this.paddingLeft = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".selectOutfitLabel");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".selectOutfitLabel", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderThickness = 1;
                this.verticalAlign = "middle";
                this.borderColor = 0;
                this.backgroundColor = 2240055;
                this.horizontalAlign = "center";
                this.borderAlpha = 1;
                this.backgroundAlpha = 0.5;
                this.borderStyle = "solid";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".statusWidgetCompactBonusSkillProgress");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".statusWidgetCompactBonusSkillProgress", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.tickCenterImage = _embed_css_images_Bars_ProgressMarker_png_1964646600;
                this.backgroundRightImage = "left";
                this.barImages = "barDefault";
                this.tickMask = "center";
                this.paddingRight = -5;
                this.backgroundMask = "left center right";
                this.backgroundCenterImage = _embed_css_images_BG_BarsXP_default_tileable_png_940157883;
                this.backgroundLeftImage = _embed_css_images_BG_BarsXP_default_endpiece_png_928913106;
                this.barDefault = _embed_css_images_BarsXP_default_improved_png_1271383239;
                this.paddingBottom = 4;
                this.tickOffset = 3;
                this.paddingTop = 3;
                this.paddingLeft = -5;
                this.barLimits = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("BattlelistWidgetView");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("BattlelistWidgetView", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.headerBoxStyle = "battlelistHeader";
                this.hideNPCButtonStyle = "battlelistWidgetViewHideNPC";
                this.iconImage = _embed_css_images_Icons_WidgetHeaders_BattleList_png_1322398180;
                this.paddingRight = 0;
                this.listBoxStyle = "battlelistContent";
                this.verticalGap = 0;
                this.hidePartyButtonStyle = "battlelistWidgetViewHideParty";
                this.hideMonsterButtonStyle = "battlelistWidgetViewHideMonster";
                this.horizontalGap = 0;
                this.listStyle = "battlelist";
                this.paddingBottom = 0;
                this.paddingTop = 0;
                this.hidePlayerButtonStyle = "battlelistWidgetViewHidePlayer";
                this.paddingLeft = 0;
                this.hideNonSkulledButtonStyle = "battlelistWidgetViewHideNonSkulled";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("CharacterNameChangeWidget");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("CharacterNameChangeWidget", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.buttonYesStyle = "ingameShopYesButton";
                this.buttonCancelStyle = "ingameShopNoButton";
                this.errorColor = 16711680;
                this.informationColor = 4286945;
                this.successColor = 65280;
                this.buttonOkayStyle = "ingameShopYesButton";
                this.buttonNoStyle = "ingameShopNoButton";
                this.minimumButtonWidth = 60;
                this.titleBoxStyle = "popupDialogHeaderFooter";
                this.buttonBoxStyle = "popupDialogHeaderFooter";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".spellListWidgetTabContent");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".spellListWidgetTabContent", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.paddingBottom = 2;
                this.paddingRight = 2;
                this.paddingTop = 2;
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".chatWidgetRightHolder");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".chatWidgetRightHolder", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.verticalAlign = "bottom";
                this.horizontalGap = 0;
                this.paddingBottom = 0;
                this.horizontalAlign = "center";
                this.paddingRight = 0;
                this.borderMask = "center";
                this.paddingTop = 0;
                this.borderSkin = BitmapBorderSkin;
                this.verticalGap = 0;
                this.paddingLeft = 0;
                this.borderCenterImage = _embed_css_images_BG_ChatTab_Tabdrop_png_137058100;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".optionsConfigurationWidgetTabNavigator");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".optionsConfigurationWidgetTabNavigator", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderThickness = 1;
                this.borderColor = 13415802;
                this.backgroundColor = 658961;
                this.paddingBottom = 1;
                this.paddingRight = 1;
                this.borderAlpha = 1;
                this.backgroundAlpha = 0.5;
                this.tabStyleName = "simpleTabNavigator";
                this.paddingTop = 1;
                this.borderStyle = "solid";
                this.paddingLeft = 1;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".npcTradeModeTab");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".npcTradeModeTab", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.errorColor = 15904590;
                this.defaultUpMask = "center";
                this.selectedDownMask = "center";
                this.color = 15904590;
                this.textAlign = "center";
                this.paddingRight = 4;
                this.skin = BitmapButtonSkin;
                this.defaultDownMask = "center";
                this.selectedUpMask = "center";
                this.disabledColor = 15904590;
                this.defaultUpCenterImage = _embed_css_images_BuySellTab_idle_png_883931416;
                this.paddingBottom = 0;
                this.selectedOverCenterImage = _embed_css_images_BuySellTab_active_png_1732627654;
                this.defaultOverCenterImage = _embed_css_images_BuySellTab_idle_png_883931416;
                this.selectedOverMask = "center";
                this.textSelectedColor = 15904590;
                this.textRollOverColor = 15904590;
                this.defaultDownCenterImage = _embed_css_images_BuySellTab_idle_png_883931416;
                this.selectedDownCenterImage = _embed_css_images_BuySellTab_active_png_1732627654;
                this.paddingTop = 0;
                this.paddingLeft = 4;
                this.defaultOverMask = "center";
                this.selectedUpCenterImage = _embed_css_images_BuySellTab_active_png_1732627654;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("SmoothList");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("SmoothList", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderThickness = 0;
                this.borderColor = 65280;
                this.backgroundColor = 65280;
                this.borderAlpha = 0;
                this.backgroundAlpha = 0;
                this.borderSkin = VectorBorderSkin;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".containerWigdetViewUp");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".containerWigdetViewUp", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpCenterImage = _embed_css_images_Button_ContainerUp_idle_png_673929622;
                this.defaultUpMask = "center";
                this.defaultOverCenterImage = _embed_css_images_Button_ContainerUp_over_png_340384918;
                this.skin = BitmapButtonSkin;
                this.defaultDisabledCenterImage = _embed_css_images_Button_ContainerUp_idle_png_673929622;
                this.defaultDisabledMask = "center";
                this.defaultDownCenterImage = _embed_css_images_Button_ContainerUp_pressed_png_103378762;
                this.defaultDownMask = "center";
                this.defaultOverMask = "center";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".nicklist");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".nicklist", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.itemVerticalGap = 0;
                this.itemHorizontalGap = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".hotkeyOptionsSetScrollRight");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".hotkeyOptionsSetScrollRight", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultDisabledRightImage = _embed_css_images_Arrow_ScrollTabs_disabled_png_1404963900;
                this.defaultUpMask = "right";
                this.skin = BitmapButtonSkin;
                this.defaultOverLeftImage = "right";
                this.defaultDisabledMask = "right";
                this.defaultDisabledLeftImage = "right";
                this.defaultDownMask = "right";
                this.defaultUpRightImage = _embed_css_images_Arrow_ScrollTabs_idle_png_1270948868;
                this.defaultDownRightImage = _embed_css_images_Arrow_ScrollTabs_pressed_png_23734072;
                this.defaultDownLeftImage = "right";
                this.defaultOverRightImage = _embed_css_images_Arrow_ScrollTabs_over_png_923510532;
                this.defaultUpLeftImage = "right";
                this.defaultOverMask = "right";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".selectOutfitTabNavigator");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".selectOutfitTabNavigator", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderThickness = 1;
                this.borderColor = 13415802;
                this.backgroundColor = 658961;
                this.paddingBottom = 1;
                this.paddingRight = 1;
                this.borderAlpha = 1;
                this.backgroundAlpha = 0.5;
                this.tabStyleName = "simpleTabNavigator";
                this.paddingTop = 1;
                this.borderStyle = "solid";
                this.paddingLeft = 1;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".combatButtonBalanced");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".combatButtonBalanced", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "center";
                this.selectedDownMask = "center";
                this.skin = BitmapButtonSkin;
                this.defaultDisabledMask = "center";
                this.defaultDownMask = "center";
                this.selectedUpMask = "center";
                this.defaultUpCenterImage = _embed_css_images_Icons_CombatControls_MediumOff_idle_png_1524218033;
                this.selectedOverCenterImage = _embed_css_images_Icons_CombatControls_MediumOn_over_png_998523367;
                this.defaultOverCenterImage = _embed_css_images_Icons_CombatControls_MediumOff_over_png_292746831;
                this.selectedOverMask = "center";
                this.defaultDownCenterImage = _embed_css_images_Icons_CombatControls_MediumOff_over_png_292746831;
                this.selectedDownCenterImage = _embed_css_images_Icons_CombatControls_MediumOn_over_png_998523367;
                this.defaultOverMask = "center";
                this.selectedDisabledMask = "center";
                this.selectedUpCenterImage = _embed_css_images_Icons_CombatControls_MediumOn_idle_png_1346355943;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("CheckBox");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("CheckBox", style, false);
            }
            style = StyleManager.getStyleDeclaration(".ingameShopCategoryDescription");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".ingameShopCategoryDescription", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.fontSize = 9;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".npcAmountBox");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".npcAmountBox", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.paddingBottom = 2;
                this.paddingRight = 2;
                this.paddingTop = 2;
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".ingameShopBold");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".ingameShopBold", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.fontWeight = "bold";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".buddylistWidgetView");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".buddylistWidgetView", style, false);
            }
            style = StyleManager.getStyleDeclaration("Sidebar");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("Sidebar", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.paddingBottom = 0;
                this.paddingRight = 0;
                this.paddingTop = 0;
                this.verticalGap = 2;
                this.paddingLeft = 0;
                this.fontWeight = "bold";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("BodyContainerViewWidgetView");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("BodyContainerViewWidgetView", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.capacityFontColor = 16777215;
                this.iconImage = _embed_css_images_Icons_WidgetHeaders_Inventory_png_1408226468;
                this.capacityFontFamily = "Verdana";
                this.borderCenterMask = "all";
                this.paddingRight = 0;
                this.borderCenterCenterImage = _embed_css_images_Inventory_png_152874110;
                this.bodySlotFeetStyle = "bodySlotFeet";
                this.bodySlotLeftHandBlessedStyle = "bodySlotLeftHandBlessed";
                this.bodySlotLegsBlessedStyle = "bodySlotLegsBlessed";
                this.verticalGap = 0;
                this.bodySlotTorsoBlessedStyle = "bodySlotTorsoBlessed";
                this.bodySlotLegsStyle = "bodySlotLegs";
                this.bodySlotLeftHandStyle = "bodySlotLeftHand";
                this.paddingBottom = 0;
                this.capacityFontStyle = "normal";
                this.bodySlotFeetBlessedStyle = "bodySlotFeetBlessed";
                this.paddingTop = 0;
                this.bodySlotFingerBlessedStyle = "bodySlotFingerBlessed";
                this.bodySlotRightHandBlessedStyle = "bodySlotRightHandBlessed";
                this.capacityFontWeight = "bold";
                this.bodySlotBackStyle = "bodySlotBack";
                this.bodySlotHipStyle = "bodySlotHip";
                this.bodySlotRightHandStyle = "bodySlotRightHand";
                this.buttonStoreInboxStyle = "buttonStoreInbox";
                this.borderFooterMask = "none";
                this.bodySlotTorsoStyle = "bodySlotTorso";
                this.bodySlotHipBlessedStyle = "bodySlotHipBlessed";
                this.bodySlotPremiumStyle = "bodySlotPremium";
                this.bodySlotFingerStyle = "bodySlotFinger";
                this.horizontalGap = 0;
                this.capacityFontSize = 9;
                this.bodySlotBlessingStyle = "bodySlotBlessing";
                this.bodySlotNeckStyle = "bodySlotNeck";
                this.bodySlotBackBlessedStyle = "bodySlotBackBlessed";
                this.bodySlotHeadBlessedStyle = "bodySlotHeadBlessed";
                this.bodySlotNeckBlessedStyle = "bodySlotNeckBlessed";
                this.paddingLeft = 0;
                this.bodySlotHeadStyle = "bodySlotHead";
                this.buttonIngameShopStyle = "buttonIngameShop";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".actionBarBottom");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".actionBarBottom", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.toggleButtonStyle = "actionBarWidgetToggleBottom";
                this.scrollUpButtonStyle = "actionBarWidgetScrollRight";
                this.scrollDownButtonStyle = "actionBarWidgetScrollLeft";
                this.borderMask = "left bottomLeft bottom bottomRight right center";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".sideBarHeaderCombat");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".sideBarHeaderCombat", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "center";
                this.selectedDownMask = "center";
                this.skin = BitmapButtonSkin;
                this.defaultDownMask = "center";
                this.selectedUpMask = "center";
                this.defaultUpCenterImage = _embed_css_images_Icons_WidgetMenu_Combat_idle_png_1479461364;
                this.selectedOverCenterImage = _embed_css_images_Icons_WidgetMenu_Combat_active_over_png_598120513;
                this.defaultOverCenterImage = _embed_css_images_Icons_WidgetMenu_Combat_idle_over_png_1132540975;
                this.selectedOverMask = "center";
                this.defaultDownCenterImage = _embed_css_images_Icons_WidgetMenu_Combat_idle_over_png_1132540975;
                this.selectedDownCenterImage = _embed_css_images_Icons_WidgetMenu_Combat_active_over_png_598120513;
                this.defaultOverMask = "center";
                this.selectedUpCenterImage = _embed_css_images_Icons_WidgetMenu_Combat_active_png_254301134;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".statusWidgetFatSkill");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".statusWidgetFatSkill", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.progressBarMalusStyleName = "statusWidgetFatMalusSkillProgress";
                this.verticalAlign = "middle";
                this.iconStyleName = "";
                this.progressBarBonusStyleName = "statusWidgetFatBonusSkillProgress";
                this.progressBarZeroStyleName = "statusWidgetFatZeroSkillProgress";
                this.horizontalGap = 0;
                this.progressBarStyleName = "statusWidgetFatSkillProgress";
                this.labelStyleName = ".statusWidgetSkillProgress";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".astralSourceLabel");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".astralSourceLabel", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.textAlign = "center";
                this.fontWeight = "bold";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("DividedBox");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("DividedBox", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.verticalDividerCursor = ResizeVerticalCursor;
                this.horizontalDividerCursor = ResizeHorizontalCursor;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".baseCurrency");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".baseCurrency", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.color = 7829367;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".battlelistWidgetViewHidePlayer");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".battlelistWidgetViewHidePlayer", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "center";
                this.selectedDownMask = "center";
                this.skin = BitmapButtonSkin;
                this.defaultDownMask = "center";
                this.selectedUpMask = "center";
                this.defaultUpCenterImage = _embed_css_images_Icons_BattleList_HidePlayers_idle_png_182344541;
                this.selectedOverCenterImage = _embed_css_images_Icons_BattleList_HidePlayers_active_over_png_1091185778;
                this.defaultOverCenterImage = _embed_css_images_Icons_BattleList_HidePlayers_over_png_696587683;
                this.selectedOverMask = "center";
                this.defaultDownCenterImage = _embed_css_images_Icons_BattleList_HidePlayers_over_png_696587683;
                this.selectedDownCenterImage = _embed_css_images_Icons_BattleList_HidePlayers_active_over_png_1091185778;
                this.defaultOverMask = "center";
                this.selectedUpCenterImage = _embed_css_images_Icons_BattleList_HidePlayers_active_png_959473823;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".buttonDialogOpenStoreButton");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".buttonDialogOpenStoreButton", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.icon = _embed_css_images_Icons_Inventory_Store_png_1832608287;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".miniMapButtonZoomIn");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".miniMapButtonZoomIn", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpCenterImage = _embed_css_images_Minimap_ZoomIn_idle_png_257074697;
                this.defaultUpMask = "center";
                this.defaultOverCenterImage = _embed_css_images_Minimap_ZoomIn_over_png_2079840503;
                this.skin = BitmapButtonSkin;
                this.defaultDownCenterImage = _embed_css_images_Minimap_ZoomIn_pressed_png_1481321949;
                this.defaultDownMask = "center";
                this.defaultOverMask = "center";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".actionBarWidgetScrollTop");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".actionBarWidgetScrollTop", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultDisabledRightImage = _embed_css_images_Arrow_ScrollHotkeys_disabled_png_733938325;
                this.paddingRight = 0;
                this.skin = BitmapButtonSkin;
                this.defaultOverBottomImage = "right";
                this.defaultDisabledLeftImage = "right";
                this.defaultDisabledTopImage = "right";
                this.defaultDownBottomImage = "right";
                this.defaultUpRightImage = _embed_css_images_Arrow_ScrollHotkeys_idle_png_1125517443;
                this.defaultDownTopImage = "right";
                this.defaultDownRightImage = _embed_css_images_Arrow_ScrollHotkeys_pressed_png_1521804567;
                this.defaultUpBottomImage = "right";
                this.defaultUpTopImage = "right";
                this.paddingBottom = 0;
                this.defaultOverTopImage = "right";
                this.paddingTop = 0;
                this.defaultDisabledBottomImage = "right";
                this.defaultOverMask = "top";
                this.defaultUpMask = "top";
                this.defaultOverLeftImage = "right";
                this.defaultDisabledMask = "top";
                this.defaultDownMask = "top";
                this.defaultDownLeftImage = "right";
                this.defaultOverRightImage = _embed_css_images_Arrow_ScrollHotkeys_over_png_384271747;
                this.defaultUpLeftImage = "right";
                this.paddingLeft = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".sideBarUnjustPoints");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".sideBarUnjustPoints", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "center";
                this.selectedDownMask = "center";
                this.skin = BitmapButtonSkin;
                this.defaultDownMask = "center";
                this.selectedUpMask = "center";
                this.defaultUpCenterImage = _embed_css_images_Icons_WidgetMenu_Skull_idle_png_1287021933;
                this.selectedOverCenterImage = _embed_css_images_Icons_WidgetMenu_Skull_active_over_png_831158504;
                this.defaultOverCenterImage = _embed_css_images_Icons_WidgetMenu_Skull_idle_over_png_280626998;
                this.selectedOverMask = "center";
                this.defaultDownCenterImage = _embed_css_images_Icons_WidgetMenu_Skull_idle_over_png_280626998;
                this.selectedDownCenterImage = _embed_css_images_Icons_WidgetMenu_Skull_active_over_png_831158504;
                this.defaultOverMask = "center";
                this.selectedUpCenterImage = _embed_css_images_Icons_WidgetMenu_Skull_active_png_1803973467;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".buttonIngameShop");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".buttonIngameShop", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.selectedOverBottomLeftImage = _embed_css_images_custombutton_Button_Highlight_tileable_bl_over_png_97063602;
                this.selectedUpLeftImage = _embed_css_images_custombutton_Button_Highlight_tileable_ml_idle_png_1542815105;
                this.paddingRight = 22;
                this.icon = _embed_css_images_Icons_Inventory_Store_png_1832608287;
                this.selectedOverTopImage = _embed_css_images_custombutton_Button_Highlight_tileable_tc_over_png_407380753;
                this.selectedDownLeftImage = _embed_css_images_custombutton_Button_Highlight_tileable_ml_pressed_png_1774737491;
                this.selectedOverLeftImage = _embed_css_images_custombutton_Button_Highlight_tileable_ml_over_png_953421695;
                this.selectedUpBottomLeftImage = _embed_css_images_custombutton_Button_Highlight_tileable_bl_idle_png_427592626;
                this.selectedOverBottomRightImage = "bottomLeft";
                this.selectedDownRightImage = "left";
                this.selectedOverMask = "topLeft top topRight left center right bottomLeft bottom bottomRight";
                this.selectedDownTopLeftImage = _embed_css_images_custombutton_Button_Highlight_tileable_tl_pressed_png_2072464232;
                this.selectedDownCenterImage = _embed_css_images_custombutton_Button_Standard_tileable_mc_pressed_png_85541895;
                this.selectedUpTopLeftImage = _embed_css_images_custombutton_Button_Highlight_tileable_tl_idle_png_1856848476;
                this.selectedUpBottomRightImage = "bottomLeft";
                this.selectedUpTopRightImage = "topLeft";
                this.selectedUpCenterImage = _embed_css_images_custombutton_Button_Standard_tileable_mc_idle_png_610131229;
                this.selectedUpBottomImage = _embed_css_images_custombutton_Button_Highlight_tileable_bc_idle_png_1952405807;
                this.selectedDownBottomRightImage = "bottomLeft";
                this.selectedDownMask = "topLeft top topRight left center right bottomLeft bottom bottomRight";
                this.selectedOverTopRightImage = "topLeft";
                this.selectedOverBottomImage = _embed_css_images_custombutton_Button_Highlight_tileable_bc_over_png_1065621457;
                this.selectedUpTopImage = _embed_css_images_custombutton_Button_Highlight_tileable_tc_idle_png_872307695;
                this.selectedUpMask = "topLeft top topRight left center right bottomLeft bottom bottomRight";
                this.selectedDownBottomImage = _embed_css_images_custombutton_Button_Highlight_tileable_bc_pressed_png_827657205;
                this.selectedDownTopImage = _embed_css_images_custombutton_Button_Highlight_tileable_tc_pressed_png_1597831939;
                this.selectedOverTopLeftImage = _embed_css_images_custombutton_Button_Highlight_tileable_tl_over_png_2104319140;
                this.selectedDownBottomLeftImage = _embed_css_images_custombutton_Button_Highlight_tileable_bl_pressed_png_500120182;
                this.selectedOverCenterImage = _embed_css_images_custombutton_Button_Standard_tileable_mc_over_png_796679197;
                this.selectedDownTopRightImage = "topLeft";
                this.selectedOverRightImage = "left";
                this.selectedUpRightImage = "left";
                this.paddingLeft = 23;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".ingameShopNoPadding");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".ingameShopNoPadding", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.paddingBottom = 0;
                this.paddingRight = 0;
                this.paddingTop = 0;
                this.paddingLeft = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".statusWidgetCompactSkillProgress");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".statusWidgetCompactSkillProgress", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.tickCenterImage = _embed_css_images_Bars_ProgressMarker_png_1964646600;
                this.backgroundRightImage = "left";
                this.barImages = "barDefault";
                this.tickMask = "center";
                this.paddingRight = -5;
                this.backgroundMask = "left center right";
                this.backgroundCenterImage = _embed_css_images_BG_BarsXP_default_tileable_png_940157883;
                this.backgroundLeftImage = _embed_css_images_BG_BarsXP_default_endpiece_png_928913106;
                this.barDefault = _embed_css_images_BarsXP_default__png_444460763;
                this.paddingBottom = 4;
                this.tickOffset = 3;
                this.paddingTop = 3;
                this.paddingLeft = -5;
                this.barLimits = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".ingameShopCreditBox");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".ingameShopCreditBox", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.verticalAlign = "middle";
                this.borderColor = 13415802;
                this.backgroundColor = 658961;
                this.paddingRight = 2;
                this.borderAlpha = 1;
                this.backgroundAlpha = 0.5;
                this.verticalGap = 2;
                this.borderThickness = 1;
                this.paddingBottom = 2;
                this.horizontalAlign = "center";
                this.paddingTop = 2;
                this.borderStyle = "solid";
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".containerPageRight");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".containerPageRight", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultDisabledRightImage = _embed_css_images_Arrow_WidgetToggle_idle_png_742472731;
                this.defaultUpMask = "right";
                this.skin = BitmapButtonSkin;
                this.defaultOverBottomImage = "right";
                this.defaultOverLeftImage = "right";
                this.defaultDisabledMask = "right";
                this.defaultDisabledLeftImage = "right";
                this.defaultDownMask = "right";
                this.defaultDownBottomImage = "right";
                this.defaultUpRightImage = _embed_css_images_Arrow_WidgetToggle_idle_png_742472731;
                this.defaultDownRightImage = _embed_css_images_Arrow_WidgetToggle_pressed_png_737576647;
                this.defaultUpBottomImage = "right";
                this.defaultDownLeftImage = "right";
                this.defaultOverRightImage = _embed_css_images_Arrow_WidgetToggle_over_png_411548443;
                this.defaultUpLeftImage = "right";
                this.defaultDisabledBottomImage = "right";
                this.defaultOverMask = "right";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".battlelistWidgetViewHideParty");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".battlelistWidgetViewHideParty", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "center";
                this.selectedDownMask = "center";
                this.skin = BitmapButtonSkin;
                this.defaultDownMask = "center";
                this.selectedUpMask = "center";
                this.defaultUpCenterImage = _embed_css_images_Icons_BattleList_PartyMembers_idle_png_585889360;
                this.selectedOverCenterImage = _embed_css_images_Icons_BattleList_PartyMembers_active_over_png_677365957;
                this.defaultOverCenterImage = _embed_css_images_Icons_BattleList_PartyMembers_over_png_276790960;
                this.selectedOverMask = "center";
                this.defaultDownCenterImage = _embed_css_images_Icons_BattleList_PartyMembers_over_png_276790960;
                this.selectedDownCenterImage = _embed_css_images_Icons_BattleList_PartyMembers_active_over_png_677365957;
                this.defaultOverMask = "center";
                this.selectedUpCenterImage = _embed_css_images_Icons_BattleList_PartyMembers_active_png_2093200322;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("SpellListWidgetView");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("SpellListWidgetView", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.horizontalGap = 0;
                this.paddingBottom = 0;
                this.iconImage = _embed_css_images_Icons_WidgetHeaders_Spells_png_186815355;
                this.paddingRight = 0;
                this.paddingTop = 0;
                this.verticalGap = 0;
                this.paddingLeft = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("ActionBarWidget");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("ActionBarWidget", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.horizontalGap = 2;
                this.paddingBottom = 2;
                this.borderRightImage = _embed_css_images_Border02_png_325729410;
                this.paddingRight = 2;
                this.paddingTop = 2;
                this.borderSkin = BitmapBorderSkin;
                this.borderTopRightImage = _embed_css_images_Border02_corners_png_2021856475;
                this.verticalGap = 2;
                this.paddingLeft = 2;
                this.borderCenterImage = _embed_css_images_BG_BohemianTileable_Game_png_351109904;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".preyRerollListButtonReactivate");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".preyRerollListButtonReactivate", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.icon = _embed_css____images_prey_prey_list_reroll_reactivate_png_1309895505;
                this.disabledIcon = _embed_css____images_prey_prey_list_reroll_reactivate_disabled_png_745940684;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".preyDurationProgressSidebar");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".preyDurationProgressSidebar", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.tickCenterImage = _embed_css_images_Bars_ProgressMarker_png_1964646600;
                this.backgroundRightImage = "left";
                this.barImages = "barDefault";
                this.tickMask = "center";
                this.paddingRight = -5;
                this.backgroundMask = "left center right";
                this.backgroundCenterImage = _embed_css_images_BG_BarsXP_default_tileable_png_940157883;
                this.backgroundLeftImage = _embed_css_images_BG_BarsXP_default_endpiece_png_928913106;
                this.barDefault = _embed_css_images_BarsXP_default_malus_png_951462521;
                this.paddingBottom = 4;
                this.tickOffset = 3;
                this.paddingTop = 3;
                this.paddingLeft = -5;
                this.barLimits = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".popUpTitleStyle");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".popUpTitleStyle", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.color = 13221291;
                this.paddingRight = 8;
                this.fontSize = 12;
                this.fontWeight = "bold";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("TibiaCurrencyView");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("TibiaCurrencyView", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.verticalAlign = "middle";
                this.horizontalGap = 0;
                this.paddingBottom = 0;
                this.color = 16232264;
                this.horizontalAlign = "right";
                this.paddingRight = 4;
                this.paddingTop = 0;
                this.paddingLeft = 4;
                this.fontWeight = "bold";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".chatWidgetButtonIgnore");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".chatWidgetButtonIgnore", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpCenterImage = _embed_css_images_Button_ChatTabIgnore_idle_png_767593529;
                this.defaultUpMask = "center";
                this.defaultOverCenterImage = _embed_css_images_Button_ChatTabIgnore_over_png_1029437127;
                this.skin = BitmapButtonSkin;
                this.defaultDownCenterImage = _embed_css_images_Button_ChatTabIgnore_pressed_png_445557299;
                this.defaultDownMask = "center";
                this.defaultOverMask = "center";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".nameFilterOptionsBlackListEditor");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".nameFilterOptionsBlackListEditor", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.nameFilterListStyle = "nameFilterEditorList";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".preyPaddedBox");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".preyPaddedBox", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.paddingBottom = 5;
                this.paddingRight = 5;
                this.paddingTop = 5;
                this.paddingLeft = 5;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".miniMapButtonEast");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".miniMapButtonEast", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "right";
                this.skin = BitmapButtonSkin;
                this.defaultOverBottomImage = "right";
                this.defaultOverLeftImage = "right";
                this.defaultDownMask = "right";
                this.defaultDownBottomImage = "right";
                this.defaultUpRightImage = _embed_css_images_Arrow_ScrollTabs_idle_png_1270948868;
                this.defaultDownTopImage = "right";
                this.defaultDownRightImage = _embed_css_images_Arrow_ScrollTabs_pressed_png_23734072;
                this.defaultUpBottomImage = "right";
                this.defaultUpTopImage = "right";
                this.defaultDownLeftImage = "right";
                this.defaultOverRightImage = _embed_css_images_Arrow_ScrollTabs_over_png_923510532;
                this.defaultOverTopImage = "right";
                this.defaultUpLeftImage = "right";
                this.defaultOverMask = "right";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".sideBarHeaderTrade");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".sideBarHeaderTrade", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "center";
                this.selectedDownMask = "center";
                this.skin = BitmapButtonSkin;
                this.defaultDownMask = "center";
                this.selectedUpMask = "center";
                this.defaultUpCenterImage = _embed_css_images_Icons_WidgetMenu_Trades_idle_png_856125637;
                this.selectedOverCenterImage = _embed_css_images_Icons_WidgetMenu_Trades_active_over_png_1585907014;
                this.defaultOverCenterImage = _embed_css_images_Icons_WidgetMenu_Trades_idle_over_png_631890120;
                this.selectedOverMask = "center";
                this.defaultDownCenterImage = _embed_css_images_Icons_WidgetMenu_Trades_idle_over_png_631890120;
                this.selectedDownCenterImage = _embed_css_images_Icons_WidgetMenu_Trades_active_over_png_1585907014;
                this.defaultOverMask = "center";
                this.selectedUpCenterImage = _embed_css_images_Icons_WidgetMenu_Trades_active_png_1327120247;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("WorldMapWidget");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("WorldMapWidget", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderMask = "center";
                this.borderSkin = BitmapBorderSkin;
                this.borderCenterImage = _embed_css_images_BG_BohemianTileable_Game_png_351109904;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".selectOutfitPrev");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".selectOutfitPrev", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultDisabledRightImage = _embed_css_images_Arrow_ScrollTabs_disabled_png_1404963900;
                this.defaultUpMask = "left";
                this.skin = BitmapButtonSkin;
                this.defaultOverLeftImage = "right";
                this.defaultDisabledMask = "left";
                this.defaultDisabledLeftImage = "right";
                this.defaultDownMask = "left";
                this.defaultUpRightImage = _embed_css_images_Arrow_ScrollTabs_idle_png_1270948868;
                this.defaultDownRightImage = _embed_css_images_Arrow_ScrollTabs_pressed_png_23734072;
                this.defaultDownLeftImage = "right";
                this.defaultOverRightImage = _embed_css_images_Arrow_ScrollTabs_over_png_923510532;
                this.defaultUpLeftImage = "right";
                this.defaultOverMask = "left";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".nameFilterEditorList");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".nameFilterEditorList", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.horizontalGridLineColor = 8089164;
                this.backgroundColor = "";
                this.borderColor = 8089164;
                this.selectionDuration = 0;
                this.alternatingItemColors = [1977654, 16711680];
                this.color = 13221291;
                this.selectionColor = 658961;
                this.backgroundAlpha = 0.8;
                this.borderAlpha = 1;
                this.selectionEasingFunction = "";
                this.headerSeparatorSkin = VectorDataGridHeaderSeparatorSkin;
                this.headerBackgroundSkin = VectorDataGridHeaderBackgroundSkin;
                this.borderThickness = 1;
                this.alternatingItemAlphas = [0.8, 0];
                this.rollOverColor = 2768716;
                this.verticalGridLines = true;
                this.verticalGridLineColor = 8089164;
                this.iconColor = 13221291;
                this.textSelectedColor = 13221291;
                this.textRollOverColor = 13221291;
                this.horizontalGridLines = false;
                this.borderStyle = "solid";
                this.disabledIconColor = 13221291;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".itemBorder");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".itemBorder", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderThickness = 1;
                this.borderColor = 7630671;
                this.borderAlpha = 1;
                this.borderStyle = "solid";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".spellListWidgetViewToggle");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".spellListWidgetViewToggle", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "center";
                this.selectedDownMask = "center";
                this.skin = BitmapButtonSkin;
                this.defaultDownMask = "center";
                this.selectedUpMask = "center";
                this.defaultUpCenterImage = _embed_css_images_Icons_TradeLists_ContainerDisplay_idle_png_856063263;
                this.selectedOverCenterImage = _embed_css_images_Icons_TradeLists_ListDisplay_over_png_339097462;
                this.defaultOverCenterImage = _embed_css_images_Icons_TradeLists_ContainerDisplay_over_png_1203759647;
                this.selectedOverMask = "center";
                this.defaultDownCenterImage = _embed_css_images_Icons_TradeLists_ContainerDisplay_pressed_png_545689075;
                this.selectedDownCenterImage = _embed_css_images_Icons_TradeLists_ListDisplay_pressed_png_1980153550;
                this.defaultOverMask = "center";
                this.selectedUpCenterImage = _embed_css_images_Icons_TradeLists_ListDisplay_idle_png_545437302;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".chatWidgetView");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".chatWidgetView", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.dividerThickness = 5;
                this.horizontalGap = 5;
                this.dividerBackgroundMask = "left";
                this.dividerBackgroundLeftImage = _embed_css_images_Border02_WidgetSidebar_slim_png_477968117;
                this.dividerAffordance = 5;
                this.verticalGap = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".marketWidgetRootContainer");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".marketWidgetRootContainer", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderThickness = 1;
                this.backgroundColor = 2240055;
                this.borderColor = 13415802;
                this.paddingBottom = 1;
                this.paddingRight = 1;
                this.backgroundAlpha = 0.5;
                this.borderAlpha = 1;
                this.paddingTop = 1;
                this.borderStyle = "solid";
                this.paddingLeft = 1;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".chatWidgetTextField");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".chatWidgetTextField", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderThickness = 1;
                this.borderColor = 0;
                this.backgroundColor = 0;
                this.backgroundAlpha = 0.33;
                this.borderStyle = "solid";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".statusWidgetFatHitpoints");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".statusWidgetFatHitpoints", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.barRedLow = _embed_css_images_BarsHealth_fat_RedLow_png_494783314;
                this.barImages = ["barRedLow2", "barRedLow", "barRedFull", "barYellow", "barGreenLow", "barGreenFull"];
                this.backgroundRightImage = _embed_css_images_BG_Bars_fat_enpiece_png_182118724;
                this.barRedFull = _embed_css_images_BarsHealth_fat_RedFull_png_1593128607;
                this.barGreenFull = _embed_css_images_BarsHealth_fat_GreenFull_png_1619224031;
                this.paddingRight = 3;
                this.backgroundMask = "center";
                this.leftOrnamentMask = "none";
                this.barYellow = _embed_css_images_BarsHealth_fat_Yellow_png_1862887037;
                this.barGreenLow = _embed_css_images_BarsHealth_fat_GreenLow_png_500916356;
                this.rightOrnamentMask = "right";
                this.backgroundCenterImage = _embed_css_images_BG_Bars_fat_tileable_png_1989862757;
                this.rightOrnamentRightImage = _embed_css_images_BG_Bars_fat_enpieceOrnamented_png_1067104141;
                this.backgroundLeftImage = "right";
                this.leftOrnamentLeftImage = "right";
                this.paddingBottom = 3;
                this.barRedLow2 = _embed_css_images_BarsHealth_fat_RedLow2_png_1786454646;
                this.leftOrnamentOffset = -6;
                this.rightOrnamentOffset = 6;
                this.paddingTop = 1;
                this.leftOrnamentRightImage = _embed_css_images_BG_Bars_fat_enpieceOrnamented_png_1067104141;
                this.paddingLeft = 1;
                this.barLimits = [0, 0.04, 0.1, 0.3, 0.6, 0.95];
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".chatWidgetTabBarScrollLeftHighlight");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".chatWidgetTabBarScrollLeftHighlight", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultDisabledRightImage = _embed_css_images_Arrow_ScrollTabsHighlighted_idle_png_739248183;
                this.defaultUpMask = "left";
                this.skin = BitmapButtonSkin;
                this.defaultOverLeftImage = "right";
                this.defaultDisabledMask = "left";
                this.defaultDisabledLeftImage = "right";
                this.defaultDownMask = "left";
                this.defaultUpRightImage = _embed_css_images_Arrow_ScrollTabsHighlighted_idle_png_739248183;
                this.defaultDownRightImage = _embed_css_images_Arrow_ScrollTabsHighlighted_pressed_png_1078060789;
                this.defaultDownLeftImage = "right";
                this.defaultOverRightImage = _embed_css_images_Arrow_ScrollTabsHighlighted_over_png_1141670601;
                this.defaultUpLeftImage = "right";
                this.defaultOverMask = "left";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".miniMapButtonUp");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".miniMapButtonUp", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultDownTopImage = _embed_css_images_Arrow_Minimap_LevelUpDown_pressed_png_1806600070;
                this.defaultUpBottomImage = "top";
                this.defaultUpTopImage = _embed_css_images_Arrow_Minimap_LevelUpDown_idle_png_341572474;
                this.defaultUpMask = "top";
                this.skin = BitmapButtonSkin;
                this.defaultOverTopImage = _embed_css_images_Arrow_Minimap_LevelUpDown_over_png_672496762;
                this.defaultOverBottomImage = "top";
                this.defaultDownMask = "top";
                this.defaultDownBottomImage = "top";
                this.defaultOverMask = "top";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".npcTradeModeTabBar");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".npcTradeModeTabBar", style, false);
            }
            style = StyleManager.getStyleDeclaration(".bodySlotFingerBlessed");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".bodySlotFingerBlessed", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.emptyBackgroundImage = _embed_css_images_Slot_InventoryRing_protected_png_804627022;
                this.backgroundImage = _embed_css_images_slot_Hotkey_protected_png_599761708;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".spellListWidgetTabBar");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".spellListWidgetTabBar", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.tabHeight = 23;
                this.tabStyleName = "spellListWidgetTab";
                this.tabWidth = 40;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".bodySlotLeftHandBlessed");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".bodySlotLeftHandBlessed", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.emptyBackgroundImage = _embed_css_images_Slot_InventoryWeapon_protected_png_2014843798;
                this.backgroundImage = _embed_css_images_slot_Hotkey_protected_png_599761708;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("SpellTileRenderer");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("SpellTileRenderer", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.verticalAlign = "middle";
                this.horizontalGap = 0;
                this.verticalGap = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".statusWidgetIcons");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".statusWidgetIcons", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.iconProgressOff = _embed_css_images_Icons_ProgressBars_ProgressOff_png_1974802685;
                this.iconStatePoisoned = _embed_css_images_Icons_Conditions_Poisoned_png_2079503537;
                this.iconSkillFightAxe = _embed_css_images_Icons_ProgressBars_AxeFighting_png_9426725;
                this.iconStateDrowning = _embed_css_images_Icons_Conditions_Drowning_png_68156910;
                this.iconStateElectrified = _embed_css_images_Icons_Conditions_Electrified_png_1640933398;
                this.iconStateStrengthened = _embed_css_images_Icons_Conditions_Strenghtened_png_686800249;
                this.iconSkillFightDistance = _embed_css_images_Icons_ProgressBars_DistanceFighting_png_374752538;
                this.iconStateBleeding = _embed_css_images_Icons_Conditions_Bleeding_png_21085300;
                this.iconStateFast = _embed_css_images_Icons_Conditions_Haste_png_250099713;
                this.iconSkillFightClub = _embed_css_images_Icons_ProgressBars_ClubFighting_png_1327306059;
                this.iconStatePZEntered = _embed_css_images_Icons_Conditions_PZ_png_1757050258;
                this.iconStateCursed = _embed_css_images_Icons_Conditions_Cursed_png_168758022;
                this.iconStateDrunk = _embed_css_images_Icons_Conditions_Drunk_png_357443974;
                this.iconSkillFightShield = _embed_css_images_Icons_ProgressBars_Shielding_png_1014131488;
                this.iconStateDazzled = _embed_css_images_Icons_Conditions_Dazzled_png_1271753440;
                this.iconSkillFightSword = _embed_css_images_Icons_ProgressBars_SwordFighting_png_1072103270;
                this.iconStyleParallel = _embed_css_images_Icons_ProgressBars_ParallelStyle_png_233055275;
                this.iconSkillFightFist = _embed_css_images_Icons_ProgressBars_FistFighting_png_881076039;
                this.iconStyleCompact = _embed_css_images_Icons_ProgressBars_CompactStyle_png_2029575967;
                this.iconStyleLarge = _embed_css_images_Icons_ProgressBars_LargeStyle_png_1279068775;
                this.iconStateHungry = _embed_css_images_Icons_Conditions_Hungry_png_950956587;
                this.iconProgressOn = _embed_css_images_Icons_ProgressBars_ProgressOn_png_378619393;
                this.iconSkillMagLevel = _embed_css_images_Icons_ProgressBars_MagicLevel_png_1289462986;
                this.iconSkillFishing = _embed_css_images_Icons_ProgressBars_Fishing_png_244935797;
                this.iconStateFighting = _embed_css_images_Icons_Conditions_Logoutblock_png_826428009;
                this.iconStateFreezing = _embed_css_images_Icons_Conditions_Freezing_png_1656036632;
                this.iconStatePZBlock = _embed_css_images_Icons_Conditions_PZlock_png_1286930259;
                this.iconSkillLevel = _embed_css_images_Icons_ProgressBars_ProgressOn_png_378619393;
                this.iconStateBurning = _embed_css_images_Icons_Conditions_Burning_png_1074259001;
                this.iconStateManaShield = _embed_css_images_Icons_Conditions_MagicShield_png_143270392;
                this.iconStyleDefault = _embed_css_images_Icons_ProgressBars_DefaultStyle_png_2022171363;
                this.iconStateSlow = _embed_css_images_Icons_Conditions_Slowed_png_270576332;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("PreySidebarView");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("PreySidebarView", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.horizontalGap = 0;
                this.paddingBottom = 0;
                this.iconImage = _embed_css_images_Icons_WidgetHeaders_Prey_png_2031287908;
                this.color = 16777215;
                this.paddingRight = 0;
                this.paddingTop = 0;
                this.verticalGap = 0;
                this.paddingLeft = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".embeddedDialogContentBox");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".embeddedDialogContentBox", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.verticalAlign = "middle";
                this.paddingBottom = 2;
                this.horizontalAlign = "left";
                this.paddingRight = 2;
                this.paddingTop = 2;
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("ItemInformationPane");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("ItemInformationPane", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.backgroundColor = 658961;
                this.paddingBottom = 4;
                this.paddingRight = 4;
                this.backgroundAlpha = 0.5;
                this.paddingTop = 4;
                this.paddingLeft = 4;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".miniMapButtonDown");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".miniMapButtonDown", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultDownTopImage = _embed_css_images_Arrow_Minimap_LevelUpDown_pressed_png_1806600070;
                this.defaultUpBottomImage = "top";
                this.defaultUpTopImage = _embed_css_images_Arrow_Minimap_LevelUpDown_idle_png_341572474;
                this.defaultUpMask = "bottom";
                this.skin = BitmapButtonSkin;
                this.defaultOverTopImage = _embed_css_images_Arrow_Minimap_LevelUpDown_over_png_672496762;
                this.defaultOverBottomImage = "top";
                this.defaultDownMask = "bottom";
                this.defaultDownBottomImage = "top";
                this.defaultOverMask = "bottom";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".battlelistWidgetView");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".battlelistWidgetView", style, false);
            }
            style = StyleManager.getStyleDeclaration(".ingameShopOfferList");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".ingameShopOfferList", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.backgroundColor = "";
                this.selectionDuration = 0;
                this.alternatingItemColors = [1842980, 1842980];
                this.color = 13221291;
                this.selectionColor = 4936794;
                this.paddingRight = 2;
                this.backgroundAlpha = 0.8;
                this.selectionEasingFunction = "";
                this.borderSkin = EmptySkin;
                this.rollOverColor = 2633265;
                this.paddingBottom = 2;
                this.focusThickness = 0;
                this.textSelectedColor = 13221291;
                this.textRollOverColor = 13221291;
                this.paddingTop = 2;
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("SideBarWidget");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("SideBarWidget", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderBackgroundColor = 0;
                this.horizontalGap = 0;
                this.paddingBottom = 0;
                this.resizeCursorSkin = ResizeVerticalCursor;
                this.borderRightImage = _embed_css_images_Border02_WidgetSidebar_slim_png_477968117;
                this.paddingRight = 2;
                this.borderBackgroundAlpha = 0;
                this.borderMask = "none";
                this.paddingTop = 0;
                this.borderSkin = BitmapBorderSkin;
                this.verticalGap = 1;
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".marketWidgetAmountDecrease");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".marketWidgetAmountDecrease", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultDisabledRightImage = _embed_css_images_Arrow_ScrollTabs_disabled_png_1404963900;
                this.defaultUpMask = "left";
                this.skin = BitmapButtonSkin;
                this.defaultOverLeftImage = "right";
                this.defaultDisabledMask = "left";
                this.defaultDisabledLeftImage = "right";
                this.defaultDownMask = "left";
                this.defaultUpRightImage = _embed_css_images_Arrow_ScrollTabs_idle_png_1270948868;
                this.defaultDownRightImage = _embed_css_images_Arrow_ScrollTabs_pressed_png_23734072;
                this.defaultDownLeftImage = "right";
                this.defaultOverRightImage = _embed_css_images_Arrow_ScrollTabs_over_png_923510532;
                this.defaultUpLeftImage = "right";
                this.defaultOverMask = "left";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".successRateBox");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".successRateBox", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.horizontalAlign = "right";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".bodySlotPremium");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".bodySlotPremium", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpCenterImage = _embed_css_images_Icons_WidgetMenu_GetPremium_active_png_782014171;
                this.defaultUpMask = "center";
                this.defaultOverCenterImage = _embed_css_images_Icons_WidgetMenu_GetPremium_active_over_png_215310808;
                this.skin = BitmapButtonSkin;
                this.defaultDisabledCenterImage = _embed_css_images_Icons_WidgetMenu_GetPremium_idle_png_1642768429;
                this.defaultDisabledMask = "center";
                this.defaultDownCenterImage = _embed_css_images_Icons_WidgetMenu_GetPremium_active_over_png_215310808;
                this.defaultDownMask = "center";
                this.defaultOverMask = "center";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".statusWidgetDefault");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".statusWidgetDefault", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.horizontalGap = 1;
                this.hitpointsOffsetX = -2;
                this.manaOffsetY = -1;
                this.manaOffsetX = 2;
                this.stateStyle = "statusWidgetDefault";
                this.skillStyle = "statusWidgetDefaultSkill";
                this.manaStyle = "statusWidgetDefaultMana";
                this.hitpointsStyle = "statusWidgetDefaultHitpoints";
                this.hitpointsOffsetY = -1;
                this.verticalGap = 1;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".battlelistWidgetViewHideNonSkulled");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".battlelistWidgetViewHideNonSkulled", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "center";
                this.selectedDownMask = "center";
                this.skin = BitmapButtonSkin;
                this.defaultDownMask = "center";
                this.selectedUpMask = "center";
                this.defaultUpCenterImage = _embed_css_images_Icons_BattleList_HideSkulled_idle_png_438934403;
                this.selectedOverCenterImage = _embed_css_images_Icons_BattleList_HideSkulled_active_over_png_270646104;
                this.defaultOverCenterImage = _embed_css_images_Icons_BattleList_HideSkulled_over_png_627187331;
                this.selectedOverMask = "center";
                this.defaultDownCenterImage = _embed_css_images_Icons_BattleList_HideSkulled_over_png_627187331;
                this.selectedDownCenterImage = _embed_css_images_Icons_BattleList_HideSkulled_active_over_png_270646104;
                this.defaultOverMask = "center";
                this.selectedUpCenterImage = _embed_css_images_Icons_BattleList_HideSkulled_active_png_1617013419;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".bodySlotTorso");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".bodySlotTorso", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.emptyBackgroundImage = _embed_css_images_Slot_InventoryArmor_png_1774073578;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".statusWidgetParallelZeroSkillProgress");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".statusWidgetParallelZeroSkillProgress", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.tickCenterImage = _embed_css_images_Bars_ProgressMarker_png_1964646600;
                this.backgroundRightImage = "left";
                this.barImages = "barDefault";
                this.tickMask = "center";
                this.paddingRight = -5;
                this.backgroundMask = "left center right";
                this.backgroundCenterImage = _embed_css_images_BG_BarsXP_default_tileable_png_940157883;
                this.backgroundLeftImage = _embed_css_images_BG_BarsXP_default_endpiece_png_928913106;
                this.barDefault = _embed_css_images_BarsXP_default_zero_png_1312716141;
                this.paddingBottom = 4;
                this.tickOffset = 3;
                this.paddingTop = 3;
                this.paddingLeft = -5;
                this.barLimits = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("OutfitTypeSelector");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("OutfitTypeSelector", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.verticalAlign = "top";
                this.borderColor = 8089164;
                this.backgroundColor = 2240055;
                this.paddingRight = 2;
                this.borderAlpha = 1;
                this.backgroundAlpha = 0.5;
                this.nameLabelStyle = "selectOutfitLabel";
                this.borderThickness = 1;
                this.paddingBottom = 2;
                this.prevButtonStyle = "selectOutfitPrev";
                this.horizontalAlign = "center";
                this.nextButtonStyle = "selectOutfitNext";
                this.paddingTop = 2;
                this.borderStyle = "solid";
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("CombatControlWidgetView");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("CombatControlWidgetView", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.buttonSecureStyle = "combatButtonSecure";
                this.buttonExpertModeStyle = "combatButtonExpert";
                this.buttonWhiteHandStyle = "combatButtonWhiteHand";
                this.buttonDefensiveStyle = "combatButtonDefensive";
                this.iconImage = _embed_css_images_Icons_WidgetHeaders_Combat_png_589713946;
                this.borderCenterMask = "all";
                this.borderFooterMask = "none";
                this.paddingRight = 0;
                this.buttonDoveStyle = "combatButtonDove";
                this.borderCenterCenterImage = _embed_css_images_BG_Combat_ExpertOff_png_1529722330;
                this.buttonRedFistStyle = "combatButtonRedFist";
                this.paddingBottom = 0;
                this.buttonMountStyle = "combatButtonMount";
                this.buttonStopStyle = "combatButtonStop";
                this.paddingTop = 0;
                this.buttonOffensiveStyle = "combatButtonOffensive";
                this.buttonChaseStyle = "combatButtonChase";
                this.buttonBalancedStyle = "combatButtonBalanced";
                this.paddingLeft = 0;
                this.buttonYellowHandStyle = "combatButtonYellowHand";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".statusWidgetDefaultHitpoints");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".statusWidgetDefaultHitpoints", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.barRedLow = _embed_css_images_BarsHealth_default_RedLow_png_1850395094;
                this.barImages = ["barRedLow2", "barRedLow", "barRedFull", "barYellow", "barGreenLow", "barGreenFull"];
                this.backgroundRightImage = _embed_css_images_BG_Bars_default_enpiece_png_521656500;
                this.barRedFull = _embed_css_images_BarsHealth_default_RedFull_png_333902423;
                this.barGreenFull = _embed_css_images_BarsHealth_default_GreenFull_png_678064153;
                this.paddingRight = 3;
                this.backgroundMask = "center";
                this.leftOrnamentMask = "none";
                this.barYellow = _embed_css_images_BarsHealth_default_Yellow_png_861014389;
                this.barGreenLow = _embed_css_images_BarsHealth_default_GreenLow_png_1611717052;
                this.rightOrnamentMask = "right";
                this.backgroundCenterImage = _embed_css_images_BG_Bars_default_tileable_png_870405027;
                this.rightOrnamentRightImage = _embed_css_images_BG_Bars_default_enpieceOrnamented_png_1899164501;
                this.backgroundLeftImage = "right";
                this.leftOrnamentLeftImage = "right";
                this.paddingBottom = 3;
                this.barRedLow2 = _embed_css_images_BarsHealth_default_RedLow2_png_1715771650;
                this.leftOrnamentOffset = -5;
                this.rightOrnamentOffset = 5;
                this.paddingTop = 1;
                this.leftOrnamentRightImage = _embed_css_images_BG_Bars_default_enpieceOrnamented_png_1899164501;
                this.paddingLeft = 1;
                this.barLimits = [0, 0.04, 0.1, 0.3, 0.6, 0.95];
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("SeparatorItem");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("SeparatorItem", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.separatorColor = 8089164;
                this.separatorWidth = 0.9;
                this.separatorAlpha = 1;
                this.separatorHeight = 4;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".sideBarHeaderBuddylist");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".sideBarHeaderBuddylist", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "center";
                this.selectedDownMask = "center";
                this.skin = BitmapButtonSkin;
                this.defaultDownMask = "center";
                this.selectedUpMask = "center";
                this.defaultUpCenterImage = _embed_css_images_Icons_WidgetMenu_VipList_idle_png_33682261;
                this.selectedOverCenterImage = _embed_css_images_Icons_WidgetMenu_VipList_active_over_png_580713750;
                this.defaultOverCenterImage = _embed_css_images_Icons_WidgetMenu_VipList_idle_over_png_552437416;
                this.selectedOverMask = "center";
                this.defaultDownCenterImage = _embed_css_images_Icons_WidgetMenu_VipList_idle_over_png_552437416;
                this.selectedDownCenterImage = _embed_css_images_Icons_WidgetMenu_VipList_active_over_png_580713750;
                this.defaultOverMask = "center";
                this.selectedUpCenterImage = _embed_css_images_Icons_WidgetMenu_VipList_active_png_979145257;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".sideBarLeftWithBorder");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".sideBarLeftWithBorder", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderBackgroundColor = 0;
                this.horizontalGap = 0;
                this.paddingBottom = 0;
                this.resizeCursorSkin = ResizeVerticalCursor;
                this.borderRightImage = _embed_css_images_Border02_WidgetSidebar_slim_png_477968117;
                this.paddingRight = 2;
                this.borderBackgroundAlpha = 0;
                this.borderMask = "right";
                this.paddingTop = 0;
                this.borderSkin = BitmapBorderSkin;
                this.verticalGap = 1;
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".buttonStoreInbox");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".buttonStoreInbox", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.paddingRight = 12;
                this.icon = _embed_css_images_Icons_Inventory_StoreInbox_png_1503513115;
                this.paddingLeft = 12;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("ContainerSlot");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("ContainerSlot", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.backgroundColor = 16711680;
                this.paddingBottom = 1;
                this.backgroundImage = _embed_css_images_slot_container_png_2040378388;
                this.paddingRight = 1;
                this.backgroundAlpha = 1;
                this.paddingTop = 1;
                this.paddingLeft = 1;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".battlelist");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".battlelist", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.paddingBottom = 0;
                this.itemBackgroundColors = [2768716, 16711680];
                this.itemVerticalGap = 0;
                this.paddingRight = 2;
                this.itemRendererStyle = "battlelistWidgetView";
                this.itemBackgroundAlphas = [0.5, 0];
                this.paddingTop = 0;
                this.itemHorizontalGap = 0;
                this.paddingLeft = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".noBackground");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".noBackground", style, false);
            }
            style = StyleManager.getStyleDeclaration(".sideBarPrey");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".sideBarPrey", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "center";
                this.selectedDownMask = "center";
                this.skin = BitmapButtonSkin;
                this.defaultDownMask = "center";
                this.selectedUpMask = "center";
                this.defaultUpCenterImage = _embed_css_images_Icons_WidgetMenu_Prey_idle_png_1118562058;
                this.selectedOverCenterImage = _embed_css_images_Icons_WidgetMenu_Prey_active_over_png_25492737;
                this.defaultOverCenterImage = _embed_css_images_Icons_WidgetMenu_Prey_idle_over_png_261378227;
                this.selectedOverMask = "center";
                this.defaultDownCenterImage = _embed_css_images_Icons_WidgetMenu_Prey_idle_over_png_261378227;
                this.selectedDownCenterImage = _embed_css_images_Icons_WidgetMenu_Prey_active_over_png_25492737;
                this.defaultOverMask = "center";
                this.selectedUpCenterImage = _embed_css_images_Icons_WidgetMenu_Prey_active_png_1402332324;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".invisibleDivider");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".invisibleDivider", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.dividerThickness = 0;
                this.horizontalGap = 0;
                this.dividerAffordance = 0;
                this.verticalGap = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".npcObjectSelector");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".npcObjectSelector", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.alternatingItemColors = [2768716, 1977654];
                this.slotVerticalGap = 2;
                this.paddingRight = 0;
                this.selectionColor = "";
                this.backgroundAlpha = 0.5;
                this.infoBorderColor = 8089164;
                this.verticalGap = 0;
                this.slotHorizontalGap = 2;
                this.infoBackgroundColor = 1977654;
                this.slotPaddingRight = 0;
                this.infoBorderThickness = 1;
                this.paddingBottom = 0;
                this.slotPaddingBottom = 0;
                this.paddingTop = 0;
                this.slotHorizontalAlign = "center";
                this.backgroundColor = "";
                this.slotPaddingTop = 0;
                this.infoBorderAlpha = 1;
                this.infoBackgroundAlpha = 0.5;
                this.horizontalGap = 0;
                this.alternatingItemAlphas = [0.5, 0.5];
                this.rollOverColor = "";
                this.slotVerticalAlign = "middle";
                this.slotPaddingLeft = 5;
                this.paddingLeft = 0;
                this.infoBorderStyle = "solid";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("PurchaseConfirmationWidget");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("PurchaseConfirmationWidget", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.buttonYesStyle = "ingameShopYesButton";
                this.buttonCancelStyle = "ingameShopNoButton";
                this.errorColor = 16711680;
                this.informationColor = 4286945;
                this.successColor = 65280;
                this.buttonOkayStyle = "ingameShopYesButton";
                this.buttonNoStyle = "ingameShopNoButton";
                this.minimumButtonWidth = 60;
                this.titleBoxStyle = "popupDialogHeaderFooter";
                this.buttonBoxStyle = "popupDialogHeaderFooter";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".combatButtonStop");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".combatButtonStop", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpCenterImage = _embed_css_images_Button_Combat_Stop_idle_png_2057116105;
                this.defaultUpMask = "center";
                this.defaultOverCenterImage = _embed_css_images_Button_Combat_Stop_over_png_622617399;
                this.skin = BitmapButtonSkin;
                this.defaultDownCenterImage = _embed_css_images_Button_Combat_Stop_pressed_png_1599664875;
                this.defaultDownMask = "center";
                this.defaultOverMask = "center";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".preyMonsterList");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".preyMonsterList", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderColor = 13415802;
                this.backgroundColor = "";
                this.selectionDuration = 0;
                this.alternatingItemColors = [1842980, 1842980];
                this.color = 13221291;
                this.selectionColor = 4936794;
                this.paddingRight = 2;
                this.borderAlpha = 1;
                this.backgroundAlpha = 0.8;
                this.selectionEasingFunction = "";
                this.borderThickness = 1;
                this.rollOverColor = 2633265;
                this.paddingBottom = 2;
                this.focusThickness = 0;
                this.textSelectedColor = 13221291;
                this.textRollOverColor = 13221291;
                this.paddingTop = 2;
                this.borderStyle = "solid";
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".astralSourceImageWrapper");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".astralSourceImageWrapper", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.verticalAlign = "middle";
                this.horizontalAlign = "center";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".getCoinsGoldStyle");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".getCoinsGoldStyle", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.color = 16777215;
                this.skin = BitmapButtonSkin;
                this.icon = _embed_css_____assets_images_ingameshop_Icons_IngameShop_12x12_TibiaCoin_png_212042744;
                this.defaultOverBottomRightImage = "bottomLeft";
                this.defaultOverBottomImage = _embed_css_images_custombutton_Button_Gold_tileable_bc_over_png_1052722463;
                this.defaultOverBottomLeftImage = _embed_css_images_custombutton_Button_Gold_tileable_bl_over_png_1410168626;
                this.defaultDownBottomImage = _embed_css_images_custombutton_Button_Gold_tileable_bc_pressed_png_1305691179;
                this.defaultUpRightImage = "left";
                this.defaultDownTopImage = _embed_css_images_custombutton_Button_Gold_tileable_tc_pressed_png_808138077;
                this.defaultOverTopRightImage = "topLeft";
                this.defaultDownTopLeftImage = _embed_css_images_custombutton_Button_Gold_tileable_tl_pressed_png_87983224;
                this.defaultUpCenterImage = _embed_css_images_custombutton_Button_Gold_tileable_mc_idle_png_385207242;
                this.defaultDownRightImage = "left";
                this.defaultUpBottomImage = _embed_css_images_custombutton_Button_Gold_tileable_bc_idle_png_779535903;
                this.defaultUpTopImage = _embed_css_images_custombutton_Button_Gold_tileable_tc_idle_png_105353361;
                this.defaultOverTopImage = _embed_css_images_custombutton_Button_Gold_tileable_tc_over_png_152825967;
                this.textSelectedColor = 16777215;
                this.defaultDownCenterImage = _embed_css_images_custombutton_Button_Gold_tileable_mc_pressed_png_1784525290;
                this.defaultUpTopRightImage = "topLeft";
                this.defaultOverMask = "topLeft top topRight left center right bottomLeft bottom bottomRight";
                this.defaultUpMask = "topLeft top topRight left center right bottomLeft bottom bottomRight";
                this.defaultUpBottomLeftImage = _embed_css_images_custombutton_Button_Gold_tileable_bl_idle_png_339290062;
                this.defaultOverLeftImage = _embed_css_images_custombutton_Button_Gold_tileable_ml_over_png_1836575873;
                this.defaultDownMask = "topLeft top topRight left center right bottomLeft bottom bottomRight";
                this.disabledColor = 16777215;
                this.defaultDownTopRightImage = "topLeft";
                this.defaultUpTopLeftImage = _embed_css_images_custombutton_Button_Gold_tileable_tl_idle_png_1601739540;
                this.defaultUpBottomRightImage = "bottomLeft";
                this.defaultDownBottomLeftImage = _embed_css_images_custombutton_Button_Gold_tileable_bl_pressed_png_1593023754;
                this.defaultDownLeftImage = _embed_css_images_custombutton_Button_Gold_tileable_ml_pressed_png_1116473267;
                this.defaultOverRightImage = "left";
                this.defaultOverCenterImage = _embed_css_images_custombutton_Button_Gold_tileable_mc_over_png_1264143562;
                this.defaultDownBottomRightImage = "bottomLeft";
                this.textRollOverColor = 16777215;
                this.defaultUpLeftImage = _embed_css_images_custombutton_Button_Gold_tileable_ml_idle_png_1579896193;
                this.defaultOverTopLeftImage = _embed_css_images_custombutton_Button_Gold_tileable_tl_over_png_1414190572;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".purchaseBonusRerollsButton");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".purchaseBonusRerollsButton", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.icon = _embed_css____images_prey_prey_unlock_permanently_png_2008737555;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".popUpHeaderStyle");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".popUpHeaderStyle", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderThickness = 1;
                this.borderColor = 8089164;
                this.backgroundColor = 658961;
                this.paddingBottom = 2;
                this.paddingRight = 2;
                this.borderAlpha = 1;
                this.backgroundAlpha = 0.5;
                this.paddingTop = 2;
                this.borderStyle = "solid";
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("ObjectEditor");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("ObjectEditor", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.errorColor = 13221291;
                this.color = 13221291;
                this.textSelectedColor = 13221291;
                this.textRollOverColor = 13221291;
                this.disabledColor = 13221291;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".statusWidgetParallelMalusSkillProgress");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".statusWidgetParallelMalusSkillProgress", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.tickCenterImage = _embed_css_images_Bars_ProgressMarker_png_1964646600;
                this.backgroundRightImage = "left";
                this.barImages = "barDefault";
                this.tickMask = "center";
                this.paddingRight = -5;
                this.backgroundMask = "left center right";
                this.backgroundCenterImage = _embed_css_images_BG_BarsXP_default_tileable_png_940157883;
                this.backgroundLeftImage = _embed_css_images_BG_BarsXP_default_endpiece_png_928913106;
                this.barDefault = _embed_css_images_BarsXP_default_malus_png_951462521;
                this.paddingBottom = 4;
                this.tickOffset = 3;
                this.paddingTop = 3;
                this.paddingLeft = -5;
                this.barLimits = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".marketWidgetAmountIncrease");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".marketWidgetAmountIncrease", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultDisabledRightImage = _embed_css_images_Arrow_ScrollTabs_disabled_png_1404963900;
                this.defaultUpMask = "right";
                this.skin = BitmapButtonSkin;
                this.defaultOverLeftImage = "right";
                this.defaultDisabledMask = "right";
                this.defaultDisabledLeftImage = "right";
                this.defaultDownMask = "right";
                this.defaultUpRightImage = _embed_css_images_Arrow_ScrollTabs_idle_png_1270948868;
                this.defaultDownRightImage = _embed_css_images_Arrow_ScrollTabs_pressed_png_23734072;
                this.defaultDownLeftImage = "right";
                this.defaultOverRightImage = _embed_css_images_Arrow_ScrollTabs_over_png_923510532;
                this.defaultUpLeftImage = "right";
                this.defaultOverMask = "right";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("MarketWidget");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("MarketWidget", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.errorColor = 16711680;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".hintBox");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".hintBox", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderThickness = 1;
                this.borderColor = 13415802;
                this.paddingBottom = 4;
                this.paddingRight = 4;
                this.borderAlpha = 1;
                this.paddingTop = 4;
                this.borderStyle = "solid";
                this.paddingLeft = 4;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".statusWidgetDefaultMalusSkillProgress");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".statusWidgetDefaultMalusSkillProgress", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.tickCenterImage = _embed_css_images_Bars_ProgressMarker_png_1964646600;
                this.backgroundRightImage = "left";
                this.barImages = "barDefault";
                this.tickMask = "center";
                this.paddingRight = -5;
                this.backgroundMask = "left center right";
                this.backgroundCenterImage = _embed_css_images_BG_BarsXP_default_tileable_png_940157883;
                this.backgroundLeftImage = _embed_css_images_BG_BarsXP_default_endpiece_png_928913106;
                this.barDefault = _embed_css_images_BarsXP_default_malus_png_951462521;
                this.paddingBottom = 4;
                this.tickOffset = 3;
                this.paddingTop = 3;
                this.paddingLeft = -5;
                this.barLimits = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".ingameShopOfferRendererBoxEnabled");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".ingameShopOfferRendererBoxEnabled", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderThickness = 1;
                this.borderColor = 7630671;
                this.backgroundColor = 1842980;
                this.horizontalAlign = "center";
                this.borderAlpha = 1;
                this.backgroundAlpha = 0.8;
                this.borderSkin = VectorBorderSkin;
                this.borderStyle = "solid";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("GeneralButtonsWidgetView");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("GeneralButtonsWidgetView", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.iconImage = _embed_css_images_Icons_WidgetHeaders_GeneralControls_png_451970594;
                this.borderFooterMask = "none";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".statusWidgetFatBonusSkillProgress");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".statusWidgetFatBonusSkillProgress", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.tickCenterImage = _embed_css_images_Bars_ProgressMarker_png_1964646600;
                this.backgroundRightImage = "left";
                this.barImages = "barDefault";
                this.tickMask = "center";
                this.paddingRight = -5;
                this.backgroundMask = "left center right";
                this.backgroundCenterImage = _embed_css_images_BG_BarsXP_default_tileable_png_940157883;
                this.backgroundLeftImage = _embed_css_images_BG_BarsXP_default_endpiece_png_928913106;
                this.barDefault = _embed_css_images_BarsXP_default_improved_png_1271383239;
                this.paddingBottom = 4;
                this.tickOffset = 3;
                this.paddingTop = 3;
                this.paddingLeft = -5;
                this.barLimits = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".combatButtonDefensive");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".combatButtonDefensive", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "center";
                this.selectedDownMask = "center";
                this.skin = BitmapButtonSkin;
                this.defaultDisabledMask = "center";
                this.defaultDownMask = "center";
                this.selectedUpMask = "center";
                this.defaultUpCenterImage = _embed_css_images_Icons_CombatControls_DefensiveOff_idle_png_1782109617;
                this.selectedOverCenterImage = _embed_css_images_Icons_CombatControls_DefensiveOn_active_png_2039564231;
                this.defaultOverCenterImage = _embed_css_images_Icons_CombatControls_DefensiveOff_over_png_17933647;
                this.selectedOverMask = "center";
                this.defaultDownCenterImage = _embed_css_images_Icons_CombatControls_DefensiveOff_over_png_17933647;
                this.selectedDownCenterImage = _embed_css_images_Icons_CombatControls_DefensiveOn_active_png_2039564231;
                this.defaultOverMask = "center";
                this.selectedDisabledMask = "center";
                this.selectedUpCenterImage = _embed_css_images_Icons_CombatControls_DefensiveOn_idle_png_1669654951;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".astralSourcesArrowBox");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".astralSourcesArrowBox", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.verticalAlign = "middle";
                this.horizontalAlign = "center";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".customSliderDecreaseButton");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".customSliderDecreaseButton", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultDisabledRightImage = _embed_css_images_Arrow_WidgetToggle_idle_png_742472731;
                this.defaultUpMask = "left";
                this.skin = BitmapButtonSkin;
                this.defaultOverLeftImage = "right";
                this.defaultDisabledMask = "left";
                this.defaultDisabledLeftImage = "right";
                this.defaultDownMask = "left";
                this.defaultUpRightImage = _embed_css_images_Arrow_WidgetToggle_idle_png_742472731;
                this.defaultDownRightImage = _embed_css_images_Arrow_WidgetToggle_pressed_png_737576647;
                this.defaultDownLeftImage = "right";
                this.defaultOverRightImage = _embed_css_images_Arrow_WidgetToggle_over_png_411548443;
                this.defaultUpLeftImage = "right";
                this.defaultOverMask = "left";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("TransactionHistory");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("TransactionHistory", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.horizontalGridLineColor = 8089164;
                this.backgroundColor = "";
                this.borderColor = 8089164;
                this.selectionDuration = 0;
                this.alternatingItemColors = [1977654, 16711680];
                this.color = 13221291;
                this.selectionColor = 658961;
                this.backgroundAlpha = 0.8;
                this.borderAlpha = 1;
                this.selectionEasingFunction = "";
                this.headerSeparatorSkin = VectorDataGridHeaderSeparatorSkin;
                this.headerBackgroundSkin = VectorDataGridHeaderBackgroundSkin;
                this.borderThickness = 1;
                this.alternatingItemAlphas = [0.8, 0];
                this.rollOverColor = 2768716;
                this.verticalGridLines = true;
                this.verticalGridLineColor = 8089164;
                this.iconColor = 13221291;
                this.textSelectedColor = 13221291;
                this.textRollOverColor = 13221291;
                this.horizontalGridLines = false;
                this.borderStyle = "solid";
                this.disabledIconColor = 13221291;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("CustomList");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("CustomList", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.backgroundColor = "";
                this.selectionDuration = 0;
                this.alternatingItemColors = [658961, 658961];
                this.color = 13221291;
                this.selectionColor = 4936794;
                this.backgroundAlpha = 0.8;
                this.selectionEasingFunction = "";
                this.borderSkin = EmptySkin;
                this.alternatingItemAlphas = [0.8, 0.8];
                this.rollOverColor = 2633265;
                this.focusThickness = 0;
                this.textSelectedColor = 13221291;
                this.textRollOverColor = 13221291;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".preyRerollListButtonReactivateSmall");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".preyRerollListButtonReactivateSmall", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.paddingRight = 75;
                this.icon = _embed_css____images_prey_prey_list_reroll_small_reactivate_png_1305981915;
                this.disabledIcon = _embed_css____images_prey_prey_list_reroll_small_reactivate_disabled_png_1736827266;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("HotkeyOptions");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("HotkeyOptions", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.setTextInputStyle = "hotkeyOptionsSetTextInput";
                this.setScrollLeftStyle = "hotkeyOptionsSetScrollLeft";
                this.setScrollRightStyle = "hotkeyOptionsSetScrollRight";
                this.mappingListStyle = "hotkeyOptionsMappingList";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("MouseControlOptions");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("MouseControlOptions", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.mouseControlOptionsListStyle = "mouseControlOptionsList";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".sectionBorder");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".sectionBorder", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderThickness = 1;
                this.borderColor = 13415802;
                this.borderAlpha = 1;
                this.borderStyle = "solid";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".bodySlotLeftHand");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".bodySlotLeftHand", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.emptyBackgroundImage = _embed_css_images_Slot_InventoryWeapon_png_1449088927;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".battlelistWidgetViewHideMonster");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".battlelistWidgetViewHideMonster", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "center";
                this.selectedDownMask = "center";
                this.skin = BitmapButtonSkin;
                this.defaultDownMask = "center";
                this.selectedUpMask = "center";
                this.defaultUpCenterImage = _embed_css_images_Icons_BattleList_HideMonsters_idle_png_1309271256;
                this.selectedOverCenterImage = _embed_css_images_Icons_BattleList_HideMonsters_active_over_png_785509171;
                this.defaultOverCenterImage = _embed_css_images_Icons_BattleList_HideMonsters_over_png_1724873768;
                this.selectedOverMask = "center";
                this.defaultDownCenterImage = _embed_css_images_Icons_BattleList_HideMonsters_over_png_1724873768;
                this.selectedDownCenterImage = _embed_css_images_Icons_BattleList_HideMonsters_active_over_png_785509171;
                this.defaultOverMask = "center";
                this.selectedUpCenterImage = _embed_css_images_Icons_BattleList_HideMonsters_active_png_1783623818;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".spellListWidgetForm");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".spellListWidgetForm", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.errorColor = 16711680;
                this.color = 13221291;
                this.paddingRight = 0;
                this.verticalGap = -2;
                this.disabledColor = 13221291;
                this.indicatorGap = 4;
                this.borderThickness = 0;
                this.horizontalGap = 0;
                this.paddingBottom = 0;
                this.textSelectedColor = 13221291;
                this.textRollOverColor = 13221291;
                this.paddingTop = 0;
                this.borderStyle = "none";
                this.paddingLeft = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".chatWidgetRightTab");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".chatWidgetRightTab", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.closeButtonTop = 4;
                this.selectedUpLeftImage = _embed_css_images_ChatTab_tileable_EndpieceLeft_png_528087243;
                this.paddingRight = 4;
                this.skin = BitmapButtonSkin;
                this.selectedDownLeftImage = _embed_css_images_ChatTab_tileable_EndpieceLeft_png_528087243;
                this.selectedOverLeftImage = _embed_css_images_ChatTab_tileable_EndpieceLeft_png_528087243;
                this.defaultUpRightImage = _embed_css_images_ChatTab_tileable_EndpieceRound_idle_png_1365852499;
                this.defaultUpCenterImage = _embed_css_images_ChatTab_tileable_idle_png_499418577;
                this.defaultDownRightImage = _embed_css_images_ChatTab_tileable_EndpieceRound_idle_png_1365852499;
                this.paddingBottom = 0;
                this.selectedTextColor = 15904590;
                this.closeButtonRight = 4;
                this.selectedDownRightImage = _embed_css_images_ChatTab_tileable_EndpieceRound_png_1194792086;
                this.selectedOverMask = "left center right";
                this.defaultDownCenterImage = _embed_css_images_ChatTab_tileable_idle_png_499418577;
                this.selectedDownCenterImage = _embed_css_images_ChatTab_tileable_png_877381598;
                this.paddingTop = 0;
                this.defaultOverMask = "left center right";
                this.selectedUpCenterImage = _embed_css_images_ChatTab_tileable_png_877381598;
                this.defaultUpMask = "left center right";
                this.selectedDownMask = "left center right";
                this.textAlign = "left";
                this.defaultOverLeftImage = _embed_css_images_ChatTab_tileable_EndpieceLeft_idle_png_1373822136;
                this.highlightTextColor = 13120000;
                this.defaultDownMask = "left center right";
                this.selectedUpMask = "left center right";
                this.defaultDownLeftImage = _embed_css_images_ChatTab_tileable_EndpieceLeft_idle_png_1373822136;
                this.defaultOverRightImage = _embed_css_images_ChatTab_tileable_EndpieceRound_idle_png_1365852499;
                this.selectedOverCenterImage = _embed_css_images_ChatTab_tileable_png_877381598;
                this.defaultOverCenterImage = _embed_css_images_ChatTab_tileable_idle_png_499418577;
                this.selectedOverRightImage = _embed_css_images_ChatTab_tileable_EndpieceRound_png_1194792086;
                this.selectedUpRightImage = _embed_css_images_ChatTab_tileable_EndpieceRound_png_1194792086;
                this.defaultTextColor = 13221291;
                this.defaultUpLeftImage = _embed_css_images_ChatTab_tileable_EndpieceLeft_idle_png_1373822136;
                this.paddingLeft = 4;
                this.closeButtonStyle = "chatWidgetDefaultTabCloseButton";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("GridContainer");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("GridContainer", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.horizontalGap = 0;
                this.verticalGap = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".bodySlotRightHand");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".bodySlotRightHand", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.emptyBackgroundImage = _embed_css_images_Slot_InventoryShield_png_196310936;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".npcObjectBox");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".npcObjectBox", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.paddingBottom = 2;
                this.paddingRight = 2;
                this.paddingTop = 2;
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".actionBarWidgetScrollBottom");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".actionBarWidgetScrollBottom", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultDisabledRightImage = _embed_css_images_Arrow_ScrollHotkeys_disabled_png_733938325;
                this.paddingRight = 0;
                this.skin = BitmapButtonSkin;
                this.defaultOverBottomImage = "right";
                this.defaultDisabledLeftImage = "right";
                this.defaultDisabledTopImage = "right";
                this.defaultDownBottomImage = "right";
                this.defaultUpRightImage = _embed_css_images_Arrow_ScrollHotkeys_idle_png_1125517443;
                this.defaultDownTopImage = "right";
                this.defaultDownRightImage = _embed_css_images_Arrow_ScrollHotkeys_pressed_png_1521804567;
                this.defaultUpBottomImage = "right";
                this.defaultUpTopImage = "right";
                this.paddingBottom = 0;
                this.defaultOverTopImage = "right";
                this.paddingTop = 0;
                this.defaultDisabledBottomImage = "right";
                this.defaultOverMask = "bottom";
                this.defaultUpMask = "bottom";
                this.defaultOverLeftImage = "right";
                this.defaultDisabledMask = "bottom";
                this.defaultDownMask = "bottom";
                this.defaultDownLeftImage = "right";
                this.defaultOverRightImage = _embed_css_images_Arrow_ScrollHotkeys_over_png_384271747;
                this.defaultUpLeftImage = "right";
                this.paddingLeft = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".actionConfigurationWidgetRootContainer");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".actionConfigurationWidgetRootContainer", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.paddingBottom = 2;
                this.paddingRight = 2;
                this.paddingTop = 2;
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".statusWidgetCompact");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".statusWidgetCompact", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.horizontalGap = 1;
                this.hitpointsOffsetX = -2;
                this.manaOffsetY = -1;
                this.manaOffsetX = 2;
                this.stateStyle = "statusWidgetCompact";
                this.skillStyle = "statusWidgetCompactSkill";
                this.manaStyle = "statusWidgetCompactMana";
                this.hitpointsStyle = "statusWidgetCompactHitpoints";
                this.hitpointsOffsetY = -1;
                this.verticalGap = 1;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".combatButtonExpert");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".combatButtonExpert", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "center";
                this.selectedDownMask = "center";
                this.skin = BitmapButtonSkin;
                this.defaultDisabledMask = "center";
                this.defaultDisabledCenterImage = _embed_css_images_Icons_CombatControls_ExpertMode_disabled_png_219629266;
                this.defaultDownMask = "center";
                this.selectedUpMask = "center";
                this.defaultUpCenterImage = _embed_css_images_Icons_CombatControls_ExpertMode_idle_png_1284957210;
                this.selectedOverCenterImage = _embed_css_images_Icons_CombatControls_ExpertModeOn_over_png_1934161151;
                this.defaultOverCenterImage = _embed_css_images_Icons_CombatControls_ExpertMode_over_png_953121562;
                this.selectedOverMask = "center";
                this.defaultDownCenterImage = _embed_css_images_Icons_CombatControls_ExpertMode_over_png_953121562;
                this.selectedDownCenterImage = _embed_css_images_Icons_CombatControls_ExpertModeOn_over_png_1934161151;
                this.defaultOverMask = "center";
                this.selectedDisabledMask = "center";
                this.selectedUpCenterImage = _embed_css_images_Icons_CombatControls_ExpertModeOn_idle_png_664956415;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".expandButtonPremiumTriggered");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".expandButtonPremiumTriggered", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.selectedDownMask = "center";
                this.selectedOverCenterImage = _embed_css_images_Button_MaximizePremium_over_png_73419701;
                this.selectedOverMask = "center";
                this.selectedDownCenterImage = _embed_css_images_Button_Maximize_pressed_png_551093474;
                this.selectedUpMask = "center";
                this.selectedUpCenterImage = _embed_css_images_Button_MaximizePremium_idle_png_1811598005;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("EditMarkWidget");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("EditMarkWidget", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.descriptionStyle = "editMarkDescription";
                this.markSelectorStyle = "editMarkSelector";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".hotkeyOptionsMappingList");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".hotkeyOptionsMappingList", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.horizontalGridLineColor = 8089164;
                this.backgroundColor = "";
                this.borderColor = 8089164;
                this.selectionDuration = 0;
                this.alternatingItemColors = [1977654, 16711680];
                this.color = 13221291;
                this.selectionColor = 658961;
                this.backgroundAlpha = 0.8;
                this.borderAlpha = 1;
                this.selectionEasingFunction = "";
                this.headerSeparatorSkin = VectorDataGridHeaderSeparatorSkin;
                this.headerBackgroundSkin = VectorDataGridHeaderBackgroundSkin;
                this.borderThickness = 1;
                this.alternatingItemAlphas = [0.8, 0];
                this.rollOverColor = 2768716;
                this.verticalGridLines = true;
                this.verticalGridLineColor = 8089164;
                this.iconColor = 13221291;
                this.textSelectedColor = 13221291;
                this.textRollOverColor = 13221291;
                this.horizontalGridLines = false;
                this.borderStyle = "solid";
                this.disabledIconColor = 13221291;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".successRateBelowTwentyPercent");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".successRateBelowTwentyPercent", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.color = 13120000;
                this.textAlign = "right";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".actionBarWidget");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".actionBarWidget", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.overlayCooldownImage = _embed_css_images_Slot_Hotkey_Cooldown_png_744290239;
                this.overlayHighlightImage = _embed_css_images_slot_Hotkey_highlighted_png_1676916579;
                this.backgroundLabelColor = 14277081;
                this.paddingBottom = 3;
                this.overlayLabelColor = 16777215;
                this.backgroundImage = _embed_css_images_slot_Hotkey_png_605729015;
                this.paddingRight = 3;
                this.overlayDisabledImage = _embed_css_images_slot_Hotkey_disabled_png_463839532;
                this.paddingTop = 3;
                this.paddingLeft = 3;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".getCoinsStyle");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".getCoinsStyle", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.icon = _embed_css_____assets_images_ingameshop_Icons_IngameShop_12x12_TibiaCoin_png_212042744;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".ingameShopNoButton");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".ingameShopNoButton", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.paddingBottom = 2;
                this.paddingRight = 8;
                this.icon = _embed_css_images_Icons_IngameShop_12x12_No_png_432435573;
                this.paddingTop = 2;
                this.paddingLeft = 8;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".successRateHundredPercent");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".successRateHundredPercent", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.color = 4500773;
                this.textAlign = "right";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("Text");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("Text", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderThickness = 1;
                this.borderColor = 0;
                this.backgroundColor = 2240055;
                this.borderAlpha = 1;
                this.backgroundAlpha = 0.5;
                this.borderStyle = "solid";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".bodySlotBlessing");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".bodySlotBlessing", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpCenterImage = _embed_css_images_Icons_WidgetMenu_Blessings_active_png_1548030222;
                this.defaultUpMask = "center";
                this.defaultOverCenterImage = _embed_css_images_Icons_WidgetMenu_Blessings_active_over_png_132026795;
                this.skin = BitmapButtonSkin;
                this.defaultDisabledCenterImage = _embed_css_images_Icons_WidgetMenu_Blessings_idle_png_1896392160;
                this.defaultDisabledMask = "center";
                this.defaultDownCenterImage = _embed_css_images_Icons_WidgetMenu_Blessings_active_over_png_132026795;
                this.defaultDownMask = "center";
                this.defaultOverMask = "center";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".statusWidgetParallel");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".statusWidgetParallel", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.horizontalGap = 1;
                this.hitpointsOffsetX = 0;
                this.manaOffsetY = 0;
                this.manaOffsetX = 0;
                this.stateStyle = "statusWidgetParallel";
                this.skillStyle = "statusWidgetParallelSkill";
                this.manaStyle = "statusWidgetParallelMana";
                this.hitpointsStyle = "statusWidgetParallelHitpoints";
                this.hitpointsOffsetY = -1;
                this.verticalGap = 1;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("EmbeddedDialog");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("EmbeddedDialog", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.verticalAlign = "top";
                this.backgroundColor = 658961;
                this.borderColor = 8089164;
                this.buttonStyle = "";
                this.backgroundAlpha = 0.8;
                this.borderAlpha = 1;
                this.buttonBoxStyle = "embeddedDialogButtonBox";
                this.borderThickness = 1;
                this.contentBoxStyle = "embeddedDialogContentBox";
                this.horizontalAlign = "center";
                this.titleBoxStyle = "embeddedDialogTitleBox";
                this.titleStyle = "embeddedDialogTitle";
                this.textStyle = "embeddedDialogText";
                this.borderStyle = "solid";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("NameFilterOptions");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("NameFilterOptions", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.errorColor = 13221291;
                this.color = 13221291;
                this.whiteListEditorStyle = "nameFilterOptionsBlackListEditor";
                this.textSelectedColor = 13221291;
                this.textRollOverColor = 13221291;
                this.blackListEditorStyle = "nameFilterOptionsWhiteListEditor";
                this.disabledColor = 13221291;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".protectionCharmButton");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".protectionCharmButton", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.icon = _embed_css_____assets_images_imbuing_imbuing_icon_useprotection_active_png_131442444;
                this.disabledIcon = _embed_css_____assets_images_imbuing_imbuing_icon_useprotection_disabled_png_1323387736;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".npcSummaryForm");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".npcSummaryForm", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderThickness = 1;
                this.borderColor = 8089164;
                this.backgroundColor = 1977654;
                this.horizontalGap = 4;
                this.paddingBottom = 2;
                this.paddingRight = 2;
                this.borderAlpha = 1;
                this.backgroundAlpha = 0.5;
                this.paddingTop = 2;
                this.borderStyle = "solid";
                this.verticalGap = 1;
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".actionBarWidgetToggleBottom");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".actionBarWidgetToggleBottom", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.iconDefaultOverTopImage = "right";
                this.iconDefaultUpMask = "top";
                this.paddingRight = 0;
                this.selectedOverTopImage = "right";
                this.selectedDownLeftImage = "right";
                this.selectedOverLeftImage = "right";
                this.iconDefaultDownMask = "top";
                this.defaultDownTopImage = "right";
                this.borderLeft = 0;
                this.iconDefaultUpRightImage = _embed_css_images_Arrow_ScrollTabs_idle_png_1270948868;
                this.paddingBottom = 0;
                this.iconDefaultOverBottomImage = "right";
                this.iconSelectedDownMask = "bottom";
                this.iconDefaultDownRightImage = _embed_css_images_Arrow_ScrollTabs_pressed_png_23734072;
                this.borderBottom = 0;
                this.iconSelectedUpLeftImage = "right";
                this.iconSelectedDownTopImage = "right";
                this.selectedDownMask = "bottom";
                this.iconSelectedUpMask = "bottom";
                this.iconDefaultDownTopImage = "right";
                this.iconSelectedUpTopImage = "right";
                this.defaultOverLeftImage = "right";
                this.selectedUpTopImage = "right";
                this.iconSelectedDownBottomImage = "right";
                this.iconSelectedOverRightImage = _embed_css_images_Arrow_ScrollTabs_over_png_923510532;
                this.defaultDownMask = "top";
                this.selectedUpMask = "bottom";
                this.selectedDownBottomImage = "right";
                this.iconSelectedDownRightImage = _embed_css_images_Arrow_ScrollTabs_pressed_png_23734072;
                this.iconDefaultUpTopImage = "right";
                this.defaultDownLeftImage = "right";
                this.defaultOverRightImage = _embed_css_images_Arrow_HotkeyToggle_BG_png_894663834;
                this.borderRight = 0;
                this.selectedOverRightImage = _embed_css_images_Arrow_HotkeyToggle_BG_png_894663834;
                this.iconDefaultUpLeftImage = "right";
                this.selectedUpRightImage = _embed_css_images_Arrow_HotkeyToggle_BG_png_894663834;
                this.iconDefaultOverLeftImage = "right";
                this.defaultUpLeftImage = "right";
                this.paddingLeft = 0;
                this.iconDefaultUpBottomImage = "right";
                this.iconSelectedOverMask = "bottom";
                this.iconSelectedDownLeftImage = "right";
                this.iconSelectedOverLeftImage = "right";
                this.selectedUpLeftImage = "right";
                this.iconSelectedOverTopImage = "right";
                this.skin = BitmapButtonSkin;
                this.icon = BitmapButtonIcon;
                this.defaultOverBottomImage = "right";
                this.borderTop = 0;
                this.defaultDownBottomImage = "right";
                this.defaultUpRightImage = _embed_css_images_Arrow_HotkeyToggle_BG_png_894663834;
                this.defaultDownRightImage = _embed_css_images_Arrow_HotkeyToggle_BG_png_894663834;
                this.defaultUpBottomImage = "right";
                this.defaultUpTopImage = "right";
                this.iconSelectedUpRightImage = _embed_css_images_Arrow_ScrollTabs_idle_png_1270948868;
                this.defaultOverTopImage = "right";
                this.selectedDownRightImage = _embed_css_images_Arrow_HotkeyToggle_BG_png_894663834;
                this.selectedOverMask = "bottom";
                this.iconDefaultDownLeftImage = "right";
                this.iconDefaultOverMask = "top";
                this.paddingTop = 0;
                this.iconSelectedUpBottomImage = "right";
                this.defaultOverMask = "top";
                this.selectedUpBottomImage = "right";
                this.defaultUpMask = "top";
                this.iconSelectedOverBottomImage = "right";
                this.selectedOverBottomImage = "right";
                this.selectedDownTopImage = "right";
                this.iconDefaultDownBottomImage = "right";
                this.iconDefaultOverRightImage = _embed_css_images_Arrow_ScrollTabs_over_png_923510532;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("TextEditor");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("TextEditor", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.errorColor = 13221291;
                this.color = 13221291;
                this.textSelectedColor = 13221291;
                this.textRollOverColor = 13221291;
                this.disabledColor = 13221291;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".ingameShopOfferSale");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".ingameShopOfferSale", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.color = 16232264;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".embeddedDialogText");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".embeddedDialogText", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.fontWeight = "normal";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".premiumWidgetGridItem");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".premiumWidgetGridItem", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.verticalAlign = "middle";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".actionBarLeft");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".actionBarLeft", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.toggleButtonStyle = "actionBarWidgetToggleLeft";
                this.scrollUpButtonStyle = "actionBarWidgetScrollBottom";
                this.scrollDownButtonStyle = "actionBarWidgetScrollTop";
                this.borderMask = "left center";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("SideBarHeader");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("SideBarHeader", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.verticalAlign = "middle";
                this.buttonGeneralStyle = "sideBarHeaderGeneral";
                this.buttonTradeStyle = "sideBarHeaderTrade";
                this.paddingRight = 0;
                this.buttonMinimapStyle = "sideBarHeaderMinimap";
                this.buttonContainerStyle = "sideBarHeaderContainer";
                this.buttonCombatStyle = "sideBarHeaderCombat";
                this.verticalGap = 2;
                this.borderSkin = BitmapBorderSkin;
                this.borderTopRightImage = _embed_css_images_Border02_corners_png_2021856475;
                this.buttonBuddylistStyle = "sideBarHeaderBuddylist";
                this.horizontalGap = 2;
                this.paddingBottom = 2;
                this.horizontalAlign = "center";
                this.borderRightImage = _embed_css_images_Border02_png_325729410;
                this.buttonBodyStyle = "sideBarHeaderBody";
                this.buttonUnjustPointsStyle = "sideBarUnjustPoints";
                this.borderMask = "left bottomLeft bottom bottomRight right center";
                this.paddingTop = 2;
                this.buttonPreyStyle = "sideBarPrey";
                this.paddingLeft = 0;
                this.buttonBattlelistStyle = "sideBarHeaderBattlelist";
                this.borderCenterImage = _embed_css_images_BG_Widget_Menu_png_1056150036;
                this.foldButtonStyleName = "sideBarHeaderFold";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".marketWidgetOffers");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".marketWidgetOffers", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.horizontalGridLineColor = 8089164;
                this.backgroundColor = "";
                this.borderColor = 8089164;
                this.selectionDuration = 0;
                this.alternatingItemColors = [1977654, 16711680];
                this.color = 13221291;
                this.selectionColor = 658961;
                this.backgroundAlpha = 0.8;
                this.borderAlpha = 1;
                this.selectionEasingFunction = "";
                this.headerSeparatorSkin = VectorDataGridHeaderSeparatorSkin;
                this.headerBackgroundSkin = VectorDataGridHeaderBackgroundSkin;
                this.borderThickness = 1;
                this.alternatingItemAlphas = [0.8, 0];
                this.rollOverColor = 2768716;
                this.verticalGridLines = true;
                this.verticalGridLineColor = 8089164;
                this.iconColor = 13221291;
                this.textSelectedColor = 13221291;
                this.textRollOverColor = 13221291;
                this.horizontalGridLines = false;
                this.borderStyle = "solid";
                this.disabledIconColor = 13221291;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".imbuingItemAppearanceRenderer");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".imbuingItemAppearanceRenderer", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.overlayHighlightImage = _embed_css_images_slot_container_highlighted_png_1088656264;
                this.paddingBottom = 1;
                this.backgroundImage = _embed_css_images_slot_container_png_2040378388;
                this.paddingRight = 1;
                this.overlayDisabledImage = _embed_css_images_slot_container_disabled_png_1808112001;
                this.paddingTop = 1;
                this.paddingLeft = 1;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("HRule");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("HRule", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.strokeWidth = 1;
                this.strokeColor = 8089164;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".actionBarWidgetToggleTop");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".actionBarWidgetToggleTop", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.iconDefaultOverTopImage = "right";
                this.iconDefaultUpMask = "bottom";
                this.paddingRight = 0;
                this.selectedOverTopImage = "right";
                this.selectedDownLeftImage = "right";
                this.selectedOverLeftImage = "right";
                this.iconDefaultDownMask = "bottom";
                this.defaultDownTopImage = "right";
                this.borderLeft = 0;
                this.iconDefaultUpRightImage = _embed_css_images_Arrow_ScrollTabs_idle_png_1270948868;
                this.paddingBottom = 0;
                this.iconDefaultOverBottomImage = "right";
                this.iconSelectedDownMask = "top";
                this.iconDefaultDownRightImage = _embed_css_images_Arrow_ScrollTabs_pressed_png_23734072;
                this.borderBottom = 0;
                this.iconSelectedUpLeftImage = "right";
                this.iconSelectedDownTopImage = "right";
                this.selectedDownMask = "top";
                this.iconSelectedUpMask = "top";
                this.iconDefaultDownTopImage = "right";
                this.iconSelectedUpTopImage = "right";
                this.defaultOverLeftImage = "right";
                this.selectedUpTopImage = "right";
                this.iconSelectedDownBottomImage = "right";
                this.iconSelectedOverRightImage = _embed_css_images_Arrow_ScrollTabs_over_png_923510532;
                this.defaultDownMask = "bottom";
                this.selectedUpMask = "top";
                this.selectedDownBottomImage = "right";
                this.iconSelectedDownRightImage = _embed_css_images_Arrow_ScrollTabs_pressed_png_23734072;
                this.iconDefaultUpTopImage = "right";
                this.defaultDownLeftImage = "right";
                this.defaultOverRightImage = _embed_css_images_Arrow_HotkeyToggle_BG_png_894663834;
                this.borderRight = 0;
                this.selectedOverRightImage = _embed_css_images_Arrow_HotkeyToggle_BG_png_894663834;
                this.iconDefaultUpLeftImage = "right";
                this.selectedUpRightImage = _embed_css_images_Arrow_HotkeyToggle_BG_png_894663834;
                this.iconDefaultOverLeftImage = "right";
                this.defaultUpLeftImage = "right";
                this.paddingLeft = 0;
                this.iconDefaultUpBottomImage = "right";
                this.iconSelectedOverMask = "top";
                this.iconSelectedDownLeftImage = "right";
                this.iconSelectedOverLeftImage = "right";
                this.selectedUpLeftImage = "right";
                this.iconSelectedOverTopImage = "right";
                this.skin = BitmapButtonSkin;
                this.icon = BitmapButtonIcon;
                this.defaultOverBottomImage = "right";
                this.borderTop = 0;
                this.defaultDownBottomImage = "right";
                this.defaultUpRightImage = _embed_css_images_Arrow_HotkeyToggle_BG_png_894663834;
                this.defaultDownRightImage = _embed_css_images_Arrow_HotkeyToggle_BG_png_894663834;
                this.defaultUpBottomImage = "right";
                this.defaultUpTopImage = "right";
                this.iconSelectedUpRightImage = _embed_css_images_Arrow_ScrollTabs_idle_png_1270948868;
                this.defaultOverTopImage = "right";
                this.selectedDownRightImage = _embed_css_images_Arrow_HotkeyToggle_BG_png_894663834;
                this.selectedOverMask = "top";
                this.iconDefaultDownLeftImage = "right";
                this.iconDefaultOverMask = "bottom";
                this.paddingTop = 0;
                this.iconSelectedUpBottomImage = "right";
                this.defaultOverMask = "bottom";
                this.selectedUpBottomImage = "right";
                this.defaultUpMask = "bottom";
                this.iconSelectedOverBottomImage = "right";
                this.selectedOverBottomImage = "right";
                this.selectedDownTopImage = "right";
                this.iconDefaultDownBottomImage = "right";
                this.iconDefaultOverRightImage = _embed_css_images_Arrow_ScrollTabs_over_png_923510532;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".sideBarHeaderFold");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".sideBarHeaderFold", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.iconDefaultOverTopImage = "right";
                this.iconDefaultUpMask = "top";
                this.paddingRight = 0;
                this.selectedOverTopImage = "right";
                this.selectedDownLeftImage = "right";
                this.selectedOverLeftImage = "right";
                this.iconDefaultDownMask = "top";
                this.defaultDownTopImage = "right";
                this.iconDefaultUpRightImage = _embed_css_images_Arrow_WidgetToggle_idle_png_742472731;
                this.paddingBottom = 0;
                this.iconDefaultOverBottomImage = "right";
                this.iconSelectedDownMask = "bottom";
                this.iconDefaultDownRightImage = _embed_css_images_Arrow_WidgetToggle_pressed_png_737576647;
                this.iconSelectedUpLeftImage = "right";
                this.iconSelectedDownTopImage = "right";
                this.selectedDownMask = "bottom";
                this.iconSelectedUpMask = "bottom";
                this.iconDefaultDownTopImage = "right";
                this.iconSelectedUpTopImage = "right";
                this.defaultOverLeftImage = "right";
                this.selectedUpTopImage = "right";
                this.iconSelectedDownBottomImage = "right";
                this.iconSelectedOverRightImage = _embed_css_images_Arrow_WidgetToggle_over_png_411548443;
                this.defaultDownMask = "top";
                this.selectedUpMask = "bottom";
                this.selectedDownBottomImage = "right";
                this.iconSelectedDownRightImage = _embed_css_images_Arrow_WidgetToggle_pressed_png_737576647;
                this.iconDefaultUpTopImage = "right";
                this.defaultDownLeftImage = "right";
                this.defaultOverRightImage = _embed_css_images_Arrow_WidgetToggle_BG_png_1428913496;
                this.selectedOverRightImage = _embed_css_images_Arrow_WidgetToggle_BG_png_1428913496;
                this.iconDefaultUpLeftImage = "right";
                this.selectedUpRightImage = _embed_css_images_Arrow_WidgetToggle_BG_png_1428913496;
                this.iconDefaultOverLeftImage = "right";
                this.defaultUpLeftImage = "right";
                this.paddingLeft = 0;
                this.iconDefaultUpBottomImage = "right";
                this.iconSelectedOverMask = "bottom";
                this.iconSelectedDownLeftImage = "right";
                this.iconSelectedOverLeftImage = "right";
                this.selectedUpLeftImage = "right";
                this.iconSelectedOverTopImage = "right";
                this.skin = BitmapButtonSkin;
                this.icon = BitmapButtonIcon;
                this.defaultOverBottomImage = "right";
                this.defaultDownBottomImage = "right";
                this.defaultUpRightImage = _embed_css_images_Arrow_WidgetToggle_BG_png_1428913496;
                this.defaultDownRightImage = _embed_css_images_Arrow_WidgetToggle_BG_png_1428913496;
                this.defaultUpBottomImage = "right";
                this.defaultUpTopImage = "right";
                this.iconSelectedUpRightImage = _embed_css_images_Arrow_WidgetToggle_idle_png_742472731;
                this.defaultOverTopImage = "right";
                this.selectedDownRightImage = _embed_css_images_Arrow_WidgetToggle_BG_png_1428913496;
                this.selectedOverMask = "bottom";
                this.iconDefaultDownLeftImage = "right";
                this.iconDefaultOverMask = "top";
                this.paddingTop = 0;
                this.iconSelectedUpBottomImage = "right";
                this.defaultOverMask = "top";
                this.selectedUpBottomImage = "right";
                this.defaultUpMask = "top";
                this.iconSelectedOverBottomImage = "right";
                this.selectedOverBottomImage = "right";
                this.selectedDownTopImage = "right";
                this.iconDefaultDownBottomImage = "right";
                this.iconDefaultOverRightImage = _embed_css_images_Arrow_WidgetToggle_over_png_411548443;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".hovered");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".hovered", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.backgroundColor = 2633265;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".selectOutfitTabContainer");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".selectOutfitTabContainer", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.verticalAlign = "middle";
                this.horizontalGap = 2;
                this.paddingBottom = 2;
                this.horizontalAlign = "center";
                this.paddingRight = 2;
                this.paddingTop = 2;
                this.verticalGap = 2;
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".combatButtonSecure");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".combatButtonSecure", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "center";
                this.selectedDownMask = "center";
                this.skin = BitmapButtonSkin;
                this.defaultDisabledMask = "center";
                this.defaultDownMask = "center";
                this.selectedUpMask = "center";
                this.defaultUpCenterImage = _embed_css_images_Icons_CombatControls_PvPOff_idle_png_1847341842;
                this.selectedOverCenterImage = _embed_css_images_Icons_CombatControls_PvPOn_active_png_804631442;
                this.defaultOverCenterImage = _embed_css_images_Icons_CombatControls_PvPOff_active_png_71344612;
                this.selectedOverMask = "center";
                this.defaultDownCenterImage = _embed_css_images_Icons_CombatControls_PvPOff_active_png_71344612;
                this.selectedDownCenterImage = _embed_css_images_Icons_CombatControls_PvPOn_active_png_804631442;
                this.defaultOverMask = "center";
                this.selectedDisabledMask = "center";
                this.selectedUpCenterImage = _embed_css_images_Icons_CombatControls_PvPOn_idle_png_456051716;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".statusWidgetCompactHitpoints");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".statusWidgetCompactHitpoints", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.barRedLow = _embed_css_images_BarsHealth_compact_RedLow_png_228911156;
                this.barImages = ["barRedLow2", "barRedLow", "barRedFull", "barYellow", "barGreenLow", "barGreenFull"];
                this.backgroundRightImage = _embed_css_images_BG_Bars_compact_enpiece_png_1184339178;
                this.barRedFull = _embed_css_images_BarsHealth_compact_RedFull_png_1856496471;
                this.barGreenFull = _embed_css_images_BarsHealth_compact_GreenFull_png_283383045;
                this.paddingRight = 3;
                this.backgroundMask = "center";
                this.leftOrnamentMask = "none";
                this.barYellow = _embed_css_images_BarsHealth_compact_Yellow_png_1279276727;
                this.barGreenLow = _embed_css_images_BarsHealth_compact_GreenLow_png_879908786;
                this.rightOrnamentMask = "right";
                this.backgroundCenterImage = _embed_css_images_BG_Bars_compact_tileable_png_1166257409;
                this.rightOrnamentRightImage = _embed_css_images_BG_Bars_compact_enpieceOrnamented_png_986676493;
                this.backgroundLeftImage = "right";
                this.leftOrnamentLeftImage = "right";
                this.paddingBottom = 3;
                this.barRedLow2 = _embed_css_images_BarsHealth_compact_RedLow2_png_794387612;
                this.leftOrnamentOffset = -6;
                this.rightOrnamentOffset = 6;
                this.paddingTop = 1;
                this.leftOrnamentRightImage = _embed_css_images_BG_Bars_compact_enpieceOrnamented_png_986676493;
                this.paddingLeft = 1;
                this.barLimits = [0, 0.04, 0.1, 0.3, 0.6, 0.95];
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".bodySlotHead");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".bodySlotHead", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.emptyBackgroundImage = _embed_css_images_Slot_InventoryHead_png_1097118931;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".chatWidgetDefaultTab");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".chatWidgetDefaultTab", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.closeButtonTop = 4;
                this.selectedUpLeftImage = _embed_css_images_ChatTab_tileable_EndpieceLeft_png_528087243;
                this.paddingRight = 4;
                this.skin = BitmapButtonSkin;
                this.selectedDownLeftImage = _embed_css_images_ChatTab_tileable_EndpieceLeft_png_528087243;
                this.selectedOverLeftImage = _embed_css_images_ChatTab_tileable_EndpieceLeft_png_528087243;
                this.defaultUpRightImage = _embed_css_images_ChatTab_tileable_EndpieceRound_idle_png_1365852499;
                this.defaultUpCenterImage = _embed_css_images_ChatTab_tileable_idle_png_499418577;
                this.defaultDownRightImage = _embed_css_images_ChatTab_tileable_EndpieceRound_idle_png_1365852499;
                this.paddingBottom = 0;
                this.selectedTextColor = 15904590;
                this.closeButtonRight = 4;
                this.selectedDownRightImage = _embed_css_images_ChatTab_tileable_EndpieceRound_png_1194792086;
                this.selectedOverMask = "left center right";
                this.defaultDownCenterImage = _embed_css_images_ChatTab_tileable_idle_png_499418577;
                this.selectedDownCenterImage = _embed_css_images_ChatTab_tileable_png_877381598;
                this.paddingTop = 0;
                this.defaultOverMask = "left center right";
                this.selectedUpCenterImage = _embed_css_images_ChatTab_tileable_png_877381598;
                this.defaultUpMask = "left center right";
                this.selectedDownMask = "left center right";
                this.textAlign = "left";
                this.defaultOverLeftImage = _embed_css_images_ChatTab_tileable_EndpieceLeft_idle_png_1373822136;
                this.highlightTextColor = 13120000;
                this.defaultDownMask = "left center right";
                this.selectedUpMask = "left center right";
                this.defaultDownLeftImage = _embed_css_images_ChatTab_tileable_EndpieceLeft_idle_png_1373822136;
                this.defaultOverRightImage = _embed_css_images_ChatTab_tileable_EndpieceRound_idle_png_1365852499;
                this.selectedOverCenterImage = _embed_css_images_ChatTab_tileable_png_877381598;
                this.defaultOverCenterImage = _embed_css_images_ChatTab_tileable_idle_png_499418577;
                this.selectedOverRightImage = _embed_css_images_ChatTab_tileable_EndpieceRound_png_1194792086;
                this.selectedUpRightImage = _embed_css_images_ChatTab_tileable_EndpieceRound_png_1194792086;
                this.defaultTextColor = 13221291;
                this.defaultUpLeftImage = _embed_css_images_ChatTab_tileable_EndpieceLeft_idle_png_1373822136;
                this.paddingLeft = 4;
                this.closeButtonStyle = "chatWidgetDefaultTabCloseButton";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".sideBarRightWithBorder");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".sideBarRightWithBorder", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderBackgroundColor = 0;
                this.horizontalGap = 0;
                this.paddingBottom = 0;
                this.resizeCursorSkin = ResizeVerticalCursor;
                this.borderRightImage = _embed_css_images_Border02_WidgetSidebar_slim_png_477968117;
                this.paddingRight = 2;
                this.borderBackgroundAlpha = 0;
                this.borderMask = "left";
                this.paddingTop = 0;
                this.borderSkin = BitmapBorderSkin;
                this.verticalGap = 1;
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("PopUpBase");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("PopUpBase", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.backgroundColor = 658961;
                this.borderColor = 8089164;
                this.errorColor = 13221291;
                this.color = 13221291;
                this.footerStyle = "popUpFooterStyle";
                this.backgroundAlpha = 0.5;
                this.borderAlpha = 1;
                this.disabledColor = 13221291;
                this.borderTop = 33;
                this.iconStyle = null;
                this.cornerRadius = 0;
                this.headerStyle = "popUpHeaderStyle";
                this.borderThickness = 1;
                this.borderLeft = 3;
                this.modalTransparencyColor = 1580578;
                this.modalTransparencyBlur = 0;
                this.borderRight = 3;
                this.modalTransparencyDuration = 0;
                this.modalTransparency = 0.5;
                this.titleStyle = "popUpTitleStyle";
                this.borderStyle = "solid";
                this.borderBottom = 33;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".marketWidgetAppearanceRenderer");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".marketWidgetAppearanceRenderer", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.overlayHighlightImage = _embed_css_images_slot_container_highlighted_png_1088656264;
                this.paddingBottom = 1;
                this.backgroundImage = _embed_css_images_slot_container_png_2040378388;
                this.paddingRight = 1;
                this.overlayDisabledImage = _embed_css_images_slot_container_disabled_png_1808112001;
                this.paddingTop = 1;
                this.paddingLeft = 1;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".imbuingSlot");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".imbuingSlot", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpCenterImage = _embed_css_images_Icons_BattleList_HidePlayers_idle_png_182344541;
                this.selectedOverCenterImage = _embed_css_images_Icons_BattleList_HidePlayers_active_over_png_1091185778;
                this.defaultOverCenterImage = _embed_css_images_Icons_BattleList_HidePlayers_over_png_696587683;
                this.icon = _embed_css_____assets_images_imbuing_imbuing_slot_empty_png_1852734938;
                this.defaultDownCenterImage = _embed_css_images_Icons_BattleList_HidePlayers_over_png_696587683;
                this.selectedDownCenterImage = _embed_css_images_Icons_BattleList_HidePlayers_active_over_png_1091185778;
                this.selectedUpCenterImage = _embed_css_images_Icons_BattleList_HidePlayers_active_png_959473823;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".premiumWidgetButtonBox");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".premiumWidgetButtonBox", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.verticalAlign = "middle";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".combatButtonRedFist");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".combatButtonRedFist", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "center";
                this.selectedDownMask = "center";
                this.skin = BitmapButtonSkin;
                this.defaultDisabledMask = "center";
                this.defaultDownMask = "center";
                this.selectedUpMask = "center";
                this.defaultUpCenterImage = _embed_css_images_Icons_CombatControls_RedFistOff_idle_png_1876773025;
                this.selectedOverCenterImage = _embed_css_images_Icons_CombatControls_RedFistOn_over_png_868094187;
                this.defaultOverCenterImage = _embed_css_images_Icons_CombatControls_RedFistOff_over_png_1009372065;
                this.selectedOverMask = "center";
                this.defaultDownCenterImage = _embed_css_images_Icons_CombatControls_RedFistOff_over_png_1009372065;
                this.selectedDownCenterImage = _embed_css_images_Icons_CombatControls_RedFistOn_over_png_868094187;
                this.defaultOverMask = "center";
                this.selectedDisabledMask = "center";
                this.selectedUpCenterImage = _embed_css_images_Icons_CombatControls_RedFistOn_idle_png_688107;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".preyTitle");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".preyTitle", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.textAlign = "center";
                this.fontWeight = "bold";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".statusWidgetFatSkillProgress");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".statusWidgetFatSkillProgress", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.tickCenterImage = _embed_css_images_Bars_ProgressMarker_png_1964646600;
                this.backgroundRightImage = "left";
                this.barImages = "barDefault";
                this.tickMask = "center";
                this.paddingRight = -5;
                this.backgroundMask = "left center right";
                this.backgroundCenterImage = _embed_css_images_BG_BarsXP_default_tileable_png_940157883;
                this.backgroundLeftImage = _embed_css_images_BG_BarsXP_default_endpiece_png_928913106;
                this.barDefault = _embed_css_images_BarsXP_default__png_444460763;
                this.paddingBottom = 4;
                this.tickOffset = 3;
                this.paddingTop = 3;
                this.paddingLeft = -5;
                this.barLimits = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".progressBarBox");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".progressBarBox", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.verticalAlign = "middle";
                this.horizontalAlign = "center";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".itemAndSlotBox");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".itemAndSlotBox", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.verticalAlign = "middle";
                this.paddingLeft = 4;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".statusWidgetDefaultBonusSkillProgress");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".statusWidgetDefaultBonusSkillProgress", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.tickCenterImage = _embed_css_images_Bars_ProgressMarker_png_1964646600;
                this.backgroundRightImage = "left";
                this.barImages = "barDefault";
                this.tickMask = "center";
                this.paddingRight = -5;
                this.backgroundMask = "left center right";
                this.backgroundCenterImage = _embed_css_images_BG_BarsXP_default_tileable_png_940157883;
                this.backgroundLeftImage = _embed_css_images_BG_BarsXP_default_endpiece_png_928913106;
                this.barDefault = _embed_css_images_BarsXP_default_improved_png_1271383239;
                this.paddingBottom = 4;
                this.tickOffset = 3;
                this.paddingTop = 3;
                this.paddingLeft = -5;
                this.barLimits = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".statusWidgetFatMalusSkillProgress");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".statusWidgetFatMalusSkillProgress", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.tickCenterImage = _embed_css_images_Bars_ProgressMarker_png_1964646600;
                this.backgroundRightImage = "left";
                this.barImages = "barDefault";
                this.tickMask = "center";
                this.paddingRight = -5;
                this.backgroundMask = "left center right";
                this.backgroundCenterImage = _embed_css_images_BG_BarsXP_default_tileable_png_940157883;
                this.backgroundLeftImage = _embed_css_images_BG_BarsXP_default_endpiece_png_928913106;
                this.barDefault = _embed_css_images_BarsXP_default_malus_png_951462521;
                this.paddingBottom = 4;
                this.tickOffset = 3;
                this.paddingTop = 3;
                this.paddingLeft = -5;
                this.barLimits = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".popupDialogHeaderFooter");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".popupDialogHeaderFooter", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.verticalAlign = "middle";
                this.borderColor = 7630671;
                this.backgroundColor = 658961;
                this.paddingRight = 2;
                this.borderAlpha = 1;
                this.backgroundAlpha = 0.5;
                this.verticalGap = 2;
                this.borderThickness = 1;
                this.horizontalGap = 15;
                this.paddingBottom = 2;
                this.horizontalAlign = "center";
                this.paddingTop = 2;
                this.borderStyle = "solid";
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".selected");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".selected", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.backgroundColor = 4936794;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".bodySlotHeadBlessed");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".bodySlotHeadBlessed", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.emptyBackgroundImage = _embed_css_images_Slot_InventoryHead_protected_png_882668898;
                this.backgroundImage = _embed_css_images_slot_Hotkey_protected_png_599761708;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".border");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".border", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderThickness = 1;
                this.borderColor = 7630671;
                this.borderAlpha = 1;
                this.borderStyle = "solid";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("CustomSlider");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("CustomSlider", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.decreaseButtonStyle = "customSliderDecreaseButton";
                this.increaseButtonStyle = "customSliderIncreaseButton";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".selectOutfitNext");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".selectOutfitNext", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultDisabledRightImage = _embed_css_images_Arrow_ScrollTabs_disabled_png_1404963900;
                this.defaultUpMask = "right";
                this.skin = BitmapButtonSkin;
                this.defaultOverLeftImage = "right";
                this.defaultDisabledMask = "right";
                this.defaultDisabledLeftImage = "right";
                this.defaultDownMask = "right";
                this.defaultUpRightImage = _embed_css_images_Arrow_ScrollTabs_idle_png_1270948868;
                this.defaultDownRightImage = _embed_css_images_Arrow_ScrollTabs_pressed_png_23734072;
                this.defaultDownLeftImage = "right";
                this.defaultOverRightImage = _embed_css_images_Arrow_ScrollTabs_over_png_923510532;
                this.defaultUpLeftImage = "right";
                this.defaultOverMask = "right";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".chatWidgetButtonOpen");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".chatWidgetButtonOpen", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpCenterImage = _embed_css_images_Button_ChatTabNew_idle_png_1932679861;
                this.defaultUpMask = "center";
                this.defaultOverCenterImage = _embed_css_images_Button_ChatTabNew_over_png_132889525;
                this.skin = BitmapButtonSkin;
                this.defaultDownCenterImage = _embed_css_images_Button_ChatTabNew_pressed_png_1126513111;
                this.defaultDownMask = "center";
                this.defaultOverMask = "center";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".statusWidgetParallelBonusSkillProgress");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".statusWidgetParallelBonusSkillProgress", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.tickCenterImage = _embed_css_images_Bars_ProgressMarker_png_1964646600;
                this.backgroundRightImage = "left";
                this.barImages = "barDefault";
                this.tickMask = "center";
                this.paddingRight = -5;
                this.backgroundMask = "left center right";
                this.backgroundCenterImage = _embed_css_images_BG_BarsXP_default_tileable_png_940157883;
                this.backgroundLeftImage = _embed_css_images_BG_BarsXP_default_endpiece_png_928913106;
                this.barDefault = _embed_css_images_BarsXP_default_improved_png_1271383239;
                this.paddingBottom = 4;
                this.tickOffset = 3;
                this.paddingTop = 3;
                this.paddingLeft = -5;
                this.barLimits = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".sideBarHeaderGeneral");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".sideBarHeaderGeneral", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "center";
                this.selectedDownMask = "center";
                this.skin = BitmapButtonSkin;
                this.defaultDownMask = "center";
                this.selectedUpMask = "center";
                this.defaultUpCenterImage = _embed_css_images_Icons_WidgetMenu_GeneralControls_idle_png_1571902642;
                this.selectedOverCenterImage = _embed_css_images_Icons_WidgetMenu_GeneralControls_active_over_png_442101789;
                this.defaultOverCenterImage = _embed_css_images_Icons_WidgetMenu_GeneralControls_idle_over_png_1592718225;
                this.selectedOverMask = "center";
                this.defaultDownCenterImage = _embed_css_images_Icons_WidgetMenu_GeneralControls_idle_over_png_1592718225;
                this.selectedDownCenterImage = _embed_css_images_Icons_WidgetMenu_GeneralControls_active_over_png_442101789;
                this.defaultOverMask = "center";
                this.selectedUpCenterImage = _embed_css_images_Icons_WidgetMenu_GeneralControls_active_png_1274097504;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("WidgetView");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("WidgetView", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderCenterBackgroundColor = 1977654;
                this.headerVerticalAlign = "middle";
                this.paddingRight = 2;
                this.borderFooterBottomImage = _embed_css_images_Widget_Footer_tileable_png_1521000729;
                this.borderSkin = WidgetViewSkin;
                this.titleFontColor = 13221291;
                this.paddingBottom = 2;
                this.titleFontSize = 11;
                this.footerPaddingTop = 0;
                this.footerHorizontalAlign = "left";
                this.iconLeft = 2;
                this.footerPaddingBottom = 0;
                this.borderFooterMask = "bottomLeft bottom bottomRight";
                this.headerWidth = 141;
                this.borderHeaderTop = 22;
                this.headerPaddingBottom = 0;
                this.borderCenterRightImage = _embed_css_images_Border_Widget_png_144373037;
                this.iconTop = 2;
                this.footerVerticalAlign = "top";
                this.borderCenterBackgroundAlpha = 0.5;
                this.paddingLeft = 2;
                this.headerTop = 2;
                this.iconHeight = 19;
                this.borderCenterMask = "all";
                this.borderFooterBottomLeftImage = _embed_css_images_Widget_Footer_tileable_end01_png_777083970;
                this.footerTop = 0;
                this.verticalGap = 2;
                this.headerPaddingRight = 0;
                this.borderFooterBottomRightImage = _embed_css_images_Widget_Footer_tileable_end02_png_770143431;
                this.footerPaddingLeft = 0;
                this.headerPaddingTop = 0;
                this.paddingTop = 2;
                this.borderCenterTopRightImage = _embed_css_images_Border_Widget_corner_png_1032170261;
                this.headerHorizontalAlign = "center";
                this.borderHeaderTopImage = _embed_css_images_Widget_HeaderBG_png_1268436051;
                this.borderHeaderMask = "top";
                this.iconWidth = 23;
                this.footerHeight = 10;
                this.titleFontWeight = "normal";
                this.footerPaddingRight = 0;
                this.footerLeft = 0;
                this.collapseButtonStyle = "widgetViewCollapse";
                this.headerLeft = 39;
                this.footerWidth = 184;
                this.horizontalGap = 2;
                this.headerHorizontalGap = 1;
                this.headerPaddingLeft = 0;
                this.headerHeight = 19;
                this.closeButtonStyle = "widgetViewClose";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".bodySlotFeetBlessed");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".bodySlotFeetBlessed", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.emptyBackgroundImage = _embed_css_images_Slot_InventoryBoots_protected_png_665581237;
                this.backgroundImage = _embed_css_images_slot_Hotkey_protected_png_599761708;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".premiumOnlyPremium");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".premiumOnlyPremium", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.icon = _embed_css_images_Icon_Premium_png_247411897;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".sideBarToggleRight");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".sideBarToggleRight", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.iconDefaultOverTopImage = "right";
                this.iconDefaultUpMask = "left";
                this.paddingRight = 0;
                this.selectedOverTopImage = "right";
                this.selectedDownLeftImage = "right";
                this.selectedOverLeftImage = "right";
                this.iconDefaultDownMask = "left";
                this.defaultDownTopImage = "right";
                this.iconDefaultUpRightImage = _embed_css_images_Arrow_WidgetToggle_idle_png_742472731;
                this.paddingBottom = 0;
                this.iconDefaultOverBottomImage = "right";
                this.iconSelectedDownMask = "right";
                this.iconDefaultDownRightImage = _embed_css_images_Arrow_WidgetToggle_pressed_png_737576647;
                this.iconSelectedUpLeftImage = "right";
                this.iconSelectedDownTopImage = "right";
                this.selectedDownMask = "right";
                this.iconSelectedUpMask = "right";
                this.iconDefaultDownTopImage = "right";
                this.iconSelectedUpTopImage = "right";
                this.defaultOverLeftImage = "right";
                this.selectedUpTopImage = "right";
                this.iconSelectedDownBottomImage = "right";
                this.iconSelectedOverRightImage = _embed_css_images_Arrow_WidgetToggle_over_png_411548443;
                this.defaultDownMask = "left";
                this.selectedUpMask = "right";
                this.selectedDownBottomImage = "right";
                this.iconSelectedDownRightImage = _embed_css_images_Arrow_WidgetToggle_pressed_png_737576647;
                this.iconDefaultUpTopImage = "right";
                this.defaultDownLeftImage = "right";
                this.defaultOverRightImage = _embed_css_images_Arrow_WidgetToggle_BG_png_1428913496;
                this.selectedOverRightImage = _embed_css_images_Arrow_WidgetToggle_BG_png_1428913496;
                this.iconDefaultUpLeftImage = "right";
                this.selectedUpRightImage = _embed_css_images_Arrow_WidgetToggle_BG_png_1428913496;
                this.iconDefaultOverLeftImage = "right";
                this.defaultUpLeftImage = "right";
                this.paddingLeft = 0;
                this.iconDefaultUpBottomImage = "right";
                this.iconSelectedOverMask = "right";
                this.iconSelectedDownLeftImage = "right";
                this.iconSelectedOverLeftImage = "right";
                this.selectedUpLeftImage = "right";
                this.iconSelectedOverTopImage = "right";
                this.skin = BitmapButtonSkin;
                this.icon = BitmapButtonIcon;
                this.defaultOverBottomImage = "right";
                this.defaultDownBottomImage = "right";
                this.defaultUpRightImage = _embed_css_images_Arrow_WidgetToggle_BG_png_1428913496;
                this.toggleButtonStyle = "sideBarToggleRight";
                this.defaultDownRightImage = _embed_css_images_Arrow_WidgetToggle_BG_png_1428913496;
                this.defaultUpBottomImage = "right";
                this.defaultUpTopImage = "right";
                this.iconSelectedUpRightImage = _embed_css_images_Arrow_WidgetToggle_idle_png_742472731;
                this.defaultOverTopImage = "right";
                this.selectedDownRightImage = _embed_css_images_Arrow_WidgetToggle_BG_png_1428913496;
                this.selectedOverMask = "right";
                this.iconDefaultDownLeftImage = "right";
                this.iconDefaultOverMask = "left";
                this.paddingTop = 0;
                this.iconSelectedUpBottomImage = "right";
                this.defaultOverMask = "left";
                this.selectedUpBottomImage = "right";
                this.defaultUpMask = "left";
                this.iconSelectedOverBottomImage = "right";
                this.selectedOverBottomImage = "right";
                this.selectedDownTopImage = "right";
                this.borderMask = "left";
                this.iconDefaultDownBottomImage = "right";
                this.iconDefaultOverRightImage = _embed_css_images_Arrow_WidgetToggle_over_png_411548443;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("UnjustPointsWidgetView");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("UnjustPointsWidgetView", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.horizontalGap = 0;
                this.paddingBottom = 0;
                this.iconImage = _embed_css_images_Icons_WidgetHeaders_Skull_png_642557793;
                this.color = 16777215;
                this.borderCenterMask = "all";
                this.paddingRight = 0;
                this.borderFooterMask = "none";
                this.borderCenterCenterImage = _embed_css_images_UnjustifiedPoints_png_1774338511;
                this.paddingTop = 0;
                this.verticalGap = 0;
                this.paddingLeft = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".statusWidgetFat");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".statusWidgetFat", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.horizontalGap = 1;
                this.hitpointsOffsetX = -2;
                this.manaOffsetY = -1;
                this.manaOffsetX = 2;
                this.stateStyle = "statusWidgetFat";
                this.skillStyle = "statusWidgetFatSkill";
                this.manaStyle = "statusWidgetFatMana";
                this.hitpointsStyle = "statusWidgetFatHitpoints";
                this.hitpointsOffsetY = -1;
                this.verticalGap = 1;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("NPCTradeWidgetView");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("NPCTradeWidgetView", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.amountBoxStyle = "npcAmountBox";
                this.errorColor = 16711680;
                this.iconImage = _embed_css_images_Icons_WidgetHeaders_Trades_png_893907303;
                this.color = 13221291;
                this.paddingRight = 0;
                this.summaryFormStyle = "npcSummaryForm";
                this.tradeModeTabStyle = "npcTradeModeTab";
                this.disabledColor = 13221291;
                this.objectSelectorStyle = "npcObjectSelector";
                this.tradeModeTabBarStyle = "npcTradeModeTabBar";
                this.tradeModeBoxStyle = "npcTradeModeBox";
                this.summaryBoxStyle = "npcSummaryBox";
                this.paddingBottom = 0;
                this.amountSelectorStyle = "npcAmountSelector";
                this.tradeModeTabHeight = 23;
                this.commitBoxStyle = "npcCommitBox";
                this.objectBoxStyle = "npcObjectBox";
                this.tradeModeTabWidth = 40;
                this.tradeModeLayoutButtonStyle = "npcTradeButtonLayout";
                this.paddingTop = 0;
                this.paddingLeft = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".tradeItemListStyle");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".tradeItemListStyle", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.horizontalGap = 2;
                this.paddingBottom = 2;
                this.paddingRight = 3;
                this.paddingTop = 2;
                this.verticalGap = 2;
                this.paddingLeft = 3;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("BodySlot");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("BodySlot", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.backgroundColor = 65280;
                this.emptyBackgroundColor = 16711680;
                this.backgroundImage = _embed_css_images_slot_Hotkey_png_605729015;
                this.paddingRight = 3;
                this.backgroundAlpha = 1;
                this.backgroundOverAlpha = 1;
                this.emptyBackgroundAlpha = 1;
                this.backgroundOutAlpha = 1;
                this.paddingBottom = 3;
                this.emptyBackgroundOutAlpha = 1;
                this.emptyBackgroundOverAlpha = 1;
                this.paddingTop = 3;
                this.paddingLeft = 3;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".spellListWidgetTabBarBackground");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".spellListWidgetTabBarBackground", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.verticalAlign = "middle";
                this.paddingBottom = 0;
                this.horizontalAlign = "left";
                this.paddingRight = 2;
                this.borderTopImage = _embed_css_images_BG_ChatTab_tileable_png_2085750710;
                this.borderMask = "top";
                this.paddingTop = 0;
                this.borderSkin = BitmapBorderSkin;
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".statusWidgetSkillProgress");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".statusWidgetSkillProgress", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.fontFamily = "Verdana";
                this.fontSize = 10;
                this.fontStyle = "normal";
                this.fontColor = 16777215;
                this.fontWeight = "bold";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("MainContentPane");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("MainContentPane", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.paddingTop = 1;
                this.verticalGap = 2;
                this.fontWeight = "bold";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".chatWidgetRightView");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".chatWidgetRightView", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderThickness = 1;
                this.borderColor = 8089164;
                this.borderAlpha = 1;
                this.borderStyle = "solid";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("ShopReponseWidget");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("ShopReponseWidget", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.buttonYesStyle = "ingameShopYesButton";
                this.buttonCancelStyle = "ingameShopNoButton";
                this.errorColor = 16711680;
                this.informationColor = 4286945;
                this.successColor = 65280;
                this.buttonOkayStyle = "ingameShopYesButton";
                this.buttonNoStyle = "ingameShopNoButton";
                this.minimumButtonWidth = 60;
                this.titleBoxStyle = "popupDialogHeaderFooter";
                this.buttonBoxStyle = "popupDialogHeaderFooter";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".statusWidgetParallelSkill");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".statusWidgetParallelSkill", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.progressBarMalusStyleName = "statusWidgetParallelMalusSkillProgress";
                this.verticalAlign = "middle";
                this.iconStyleName = "";
                this.progressBarBonusStyleName = "statusWidgetParallelBonusSkillProgress";
                this.progressBarZeroStyleName = "statusWidgetParallelZeroSkillProgress";
                this.horizontalGap = 0;
                this.progressBarStyleName = "statusWidgetParallelSkillProgress";
                this.labelStyleName = ".statusWidgetSkillProgress";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("ScrollBar");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("ScrollBar", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.thumbSkin = _embed_css_images_Scrollbar_Handler_png_754588169;
                this.backgroundColor = 65280;
                this.upArrowDownSkin = _embed_css_images_Scrollbar_Arrow_up_pressed_png_33235269;
                this.trackSkin = _embed_css_images_Scrollbar_tileable_png_1684281047;
                this.downArrowDownSkin = _embed_css_images_Scrollbar_Arrow_down_pressed_png_1586024472;
                this.upArrowDisabledSkin = _embed_css_images_Scrollbar_Arrow_up_idle_png_459269585;
                this.upArrowUpSkin = _embed_css_images_Scrollbar_Arrow_up_idle_png_459269585;
                this.backgroundAlpha = 0;
                this.downArrowDisabledSkin = _embed_css_images_Scrollbar_Arrow_down_idle_png_626586228;
                this.upArrowOverSkin = _embed_css_images_Scrollbar_Arrow_up_over_png_801461969;
                this.downArrowUpSkin = _embed_css_images_Scrollbar_Arrow_down_idle_png_626586228;
                this.downArrowOverSkin = _embed_css_images_Scrollbar_Arrow_down_over_png_2055900812;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".statusWidgetCompactZeroSkillProgress");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".statusWidgetCompactZeroSkillProgress", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.tickCenterImage = _embed_css_images_Bars_ProgressMarker_png_1964646600;
                this.backgroundRightImage = "left";
                this.barImages = "barDefault";
                this.tickMask = "center";
                this.paddingRight = -5;
                this.backgroundMask = "left center right";
                this.backgroundCenterImage = _embed_css_images_BG_BarsXP_default_tileable_png_940157883;
                this.backgroundLeftImage = _embed_css_images_BG_BarsXP_default_endpiece_png_928913106;
                this.barDefault = _embed_css_images_BarsXP_default_zero_png_1312716141;
                this.paddingBottom = 4;
                this.tickOffset = 3;
                this.paddingTop = 3;
                this.paddingLeft = -5;
                this.barLimits = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".marketWidgetTabNavigator");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".marketWidgetTabNavigator", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderThickness = 1;
                this.borderColor = 13415802;
                this.backgroundColor = 658961;
                this.paddingBottom = 1;
                this.paddingRight = 1;
                this.borderAlpha = 1;
                this.backgroundAlpha = 0.5;
                this.tabStyleName = "simpleTabNavigator";
                this.paddingTop = 1;
                this.borderStyle = "solid";
                this.paddingLeft = 1;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".transferCoinsButton");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".transferCoinsButton", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.icon = _embed_css_____assets_images_ingameshop_Icons_IngameShop_32x14_TransferCoins_png_970010606;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".embeddedDialogButtonBox");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".embeddedDialogButtonBox", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.backgroundColor = 658961;
                this.horizontalGap = 16;
                this.paddingBottom = 2;
                this.horizontalAlign = "center";
                this.paddingRight = 2;
                this.backgroundAlpha = 0.8;
                this.paddingTop = 2;
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".astralSourceLabelAmountMissing");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".astralSourceLabelAmountMissing", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.backgroundColor = 1842980;
                this.color = 13120000;
                this.textAlign = "center";
                this.fontWeight = "bold";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".sideBarHeaderContainer");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".sideBarHeaderContainer", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "center";
                this.selectedDownMask = "center";
                this.skin = BitmapButtonSkin;
                this.defaultDownMask = "center";
                this.selectedUpMask = "center";
                this.defaultUpCenterImage = _embed_css_images_Icons_WidgetMenu_Containers_idle_png_1823298914;
                this.selectedOverCenterImage = _embed_css_images_Icons_WidgetMenu_Containers_active_over_png_1891318253;
                this.defaultOverCenterImage = _embed_css_images_Icons_WidgetMenu_Containers_idle_over_png_1944340881;
                this.selectedOverMask = "center";
                this.defaultDownCenterImage = _embed_css_images_Icons_WidgetMenu_Containers_idle_over_png_1944340881;
                this.selectedDownCenterImage = _embed_css_images_Icons_WidgetMenu_Containers_active_over_png_1891318253;
                this.defaultOverMask = "center";
                this.selectedUpCenterImage = _embed_css_images_Icons_WidgetMenu_Containers_active_png_313595792;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".containerPageFooter");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".containerPageFooter", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderColor = 8089164;
                this.backgroundColor = 1977654;
                this.errorColor = 16711680;
                this.color = 13221291;
                this.paddingRight = 2;
                this.borderAlpha = 1;
                this.backgroundAlpha = 0.5;
                this.verticalGap = 1;
                this.disabledColor = 13221291;
                this.borderThickness = 1;
                this.horizontalGap = 4;
                this.paddingBottom = 2;
                this.paddingTop = 2;
                this.borderStyle = "solid";
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("ChatWidget");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("ChatWidget", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.titleRightTabStyle = "chatWidgetRightTab";
                this.titleBarStyle = "chatWidgetTitle";
                this.titleTabBarStyle = "chatWidgetTabBar";
                this.inputBarTextFieldStyle = "chatWidgetTextField";
                this.inputBarStyle = "chatWidgetInput";
                this.paddingRight = 0;
                this.titleRightHolderStyle = "chatWidgetRightHolder";
                this.titleIgnoreButtonStyle = "chatWidgetButtonIgnore";
                this.borderSkin = BitmapBorderSkin;
                this.borderTopRightImage = _embed_css_images_Border02_corners_png_2021856475;
                this.verticalGap = 0;
                this.viewBarSingleViewStyle = "chatWidgetSingleView";
                this.viewBarStyle = "chatWidgetView";
                this.horizontalGap = 0;
                this.paddingBottom = 0;
                this.titleOpenButtonStyle = "chatWidgetButtonOpen";
                this.viewBarRightViewStyle = "chatWidgetRightView";
                this.borderRightImage = _embed_css_images_Border02_png_325729410;
                this.borderMask = "left bottomLeft bottom bottomRight right center";
                this.paddingTop = 0;
                this.viewBarLeftViewStyle = "chatWidgetLeftView";
                this.paddingLeft = 0;
                this.borderCenterImage = _embed_css_images_BG_BohemianTileable_ChatConsole_png_2057178741;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".statusWidgetDefaultZeroSkillProgress");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".statusWidgetDefaultZeroSkillProgress", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.tickCenterImage = _embed_css_images_Bars_ProgressMarker_png_1964646600;
                this.backgroundRightImage = "left";
                this.barImages = "barDefault";
                this.tickMask = "center";
                this.paddingRight = -5;
                this.backgroundMask = "left center right";
                this.backgroundCenterImage = _embed_css_images_BG_BarsXP_default_tileable_png_940157883;
                this.backgroundLeftImage = _embed_css_images_BG_BarsXP_default_endpiece_png_928913106;
                this.barDefault = _embed_css_images_BarsXP_default_zero_png_1312716141;
                this.paddingBottom = 4;
                this.tickOffset = 3;
                this.paddingTop = 3;
                this.paddingLeft = -5;
                this.barLimits = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".ingameShopHistoryCredits");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".ingameShopHistoryCredits", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.verticalAlign = "middle";
                this.paddingBottom = 0;
                this.horizontalAlign = "right";
                this.paddingRight = 2;
                this.paddingTop = 0;
                this.verticalGap = 0;
                this.borderSkin = EmptySkin;
                this.paddingLeft = 2;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("CoinWidget");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("CoinWidget", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.verticalAlign = "middle";
                this.horizontalGap = 2;
                this.color = 16232264;
                this.fontWeight = "bold";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".bodySlotFeet");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".bodySlotFeet", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.emptyBackgroundImage = _embed_css_images_Slot_InventoryBoots_png_1390788408;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".actionBarTop");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".actionBarTop", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.toggleButtonStyle = "actionBarWidgetToggleTop";
                this.scrollUpButtonStyle = "actionBarWidgetScrollRight";
                this.scrollDownButtonStyle = "actionBarWidgetScrollLeft";
                this.borderMask = "left topLeft top topRight right center";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".chatWidgetTabBarDropDown");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".chatWidgetTabBarDropDown", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultDisabledRightImage = _embed_css_images_Arrow_ScrollTabs_disabled_png_1404963900;
                this.defaultUpMask = "bottom";
                this.defaultDisabledBottom = 11;
                this.defaultDownBottom = 11;
                this.skin = BitmapButtonSkin;
                this.defaultUpBottom = 11;
                this.defaultOverBottomImage = "right";
                this.defaultOverLeftImage = "right";
                this.defaultDisabledMask = "bottom";
                this.defaultDisabledLeftImage = "right";
                this.defaultDownMask = "bottom";
                this.defaultDownBottomImage = "right";
                this.defaultUpRightImage = _embed_css_images_Arrow_ScrollTabs_idle_png_1270948868;
                this.defaultDownRightImage = _embed_css_images_Arrow_ScrollTabs_pressed_png_23734072;
                this.defaultUpBottomImage = "right";
                this.defaultDownLeftImage = "right";
                this.defaultOverRightImage = _embed_css_images_Arrow_ScrollTabs_over_png_923510532;
                this.defaultOverBottom = 11;
                this.defaultUpLeftImage = "right";
                this.defaultDisabledBottomImage = "right";
                this.defaultOverMask = "bottom";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".chatWidgetLeftView");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".chatWidgetLeftView", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderThickness = 1;
                this.borderColor = 8089164;
                this.borderAlpha = 1;
                this.borderStyle = "solid";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".bodySlotLegsBlessed");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".bodySlotLegsBlessed", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.emptyBackgroundImage = _embed_css_images_Slot_InventoryLegs_protected_png_656055687;
                this.backgroundImage = _embed_css_images_slot_Hotkey_protected_png_599761708;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".combatButtonYellowHand");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".combatButtonYellowHand", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "center";
                this.selectedDownMask = "center";
                this.skin = BitmapButtonSkin;
                this.defaultDisabledMask = "center";
                this.defaultDownMask = "center";
                this.selectedUpMask = "center";
                this.defaultUpCenterImage = _embed_css_images_Icons_CombatControls_YellowHandOff_idle_png_900406131;
                this.selectedOverCenterImage = _embed_css_images_Icons_CombatControls_YellowHandOn_over_png_714949289;
                this.defaultOverCenterImage = _embed_css_images_Icons_CombatControls_YellowHandOff_over_png_1175362675;
                this.selectedOverMask = "center";
                this.defaultDownCenterImage = _embed_css_images_Icons_CombatControls_YellowHandOff_over_png_1175362675;
                this.selectedDownCenterImage = _embed_css_images_Icons_CombatControls_YellowHandOn_over_png_714949289;
                this.defaultOverMask = "center";
                this.selectedDisabledMask = "center";
                this.selectedUpCenterImage = _embed_css_images_Icons_CombatControls_YellowHandOn_idle_png_559733847;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("NicklistItemRenderer");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("NicklistItemRenderer", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.subscriberTextColor = 6355040;
                this.pendingTextColor = 16753920;
                this.inviteeTextColor = 16277600;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".preyUnlockTemporarilyButton");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".preyUnlockTemporarilyButton", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.icon = _embed_css____images_prey_prey_unlock_temporarily_png_727600544;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".statusWidgetDefaultSkillProgress");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".statusWidgetDefaultSkillProgress", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.tickCenterImage = _embed_css_images_Bars_ProgressMarker_png_1964646600;
                this.backgroundRightImage = "left";
                this.barImages = "barDefault";
                this.tickMask = "center";
                this.paddingRight = -5;
                this.backgroundMask = "left center right";
                this.backgroundCenterImage = _embed_css_images_BG_BarsXP_default_tileable_png_940157883;
                this.backgroundLeftImage = _embed_css_images_BG_BarsXP_default_endpiece_png_928913106;
                this.barDefault = _embed_css_images_BarsXP_default__png_444460763;
                this.paddingBottom = 4;
                this.tickOffset = 3;
                this.paddingTop = 3;
                this.paddingLeft = -5;
                this.barLimits = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".containerPageLeft");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".containerPageLeft", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultDisabledRightImage = _embed_css_images_Arrow_WidgetToggle_idle_png_742472731;
                this.defaultUpMask = "left";
                this.skin = BitmapButtonSkin;
                this.defaultOverBottomImage = "right";
                this.defaultOverLeftImage = "right";
                this.defaultDisabledMask = "left";
                this.defaultDisabledLeftImage = "right";
                this.defaultDownMask = "left";
                this.defaultDownBottomImage = "right";
                this.defaultUpRightImage = _embed_css_images_Arrow_WidgetToggle_idle_png_742472731;
                this.defaultDownRightImage = _embed_css_images_Arrow_WidgetToggle_pressed_png_737576647;
                this.defaultUpBottomImage = "right";
                this.defaultDownLeftImage = "right";
                this.defaultOverRightImage = _embed_css_images_Arrow_WidgetToggle_over_png_411548443;
                this.defaultUpLeftImage = "right";
                this.defaultDisabledBottomImage = "right";
                this.defaultOverMask = "left";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("CustomButton");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("CustomButton", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultDisabledRightImage = "left";
                this.defaultDisabledBottomRightImage = "bottomLeft";
                this.paddingRight = 4;
                this.selectedOverTopImage = _embed_css_images_custombutton_Button_Border_tileable_tc_over_png_2113343813;
                this.selectedDisabledBottomImage = _embed_css_images_custombutton_Button_Border_tileable_bc_disabled_png_703276661;
                this.selectedDownLeftImage = _embed_css_images_custombutton_Button_Border_tileable_ml_pressed_png_931026351;
                this.selectedOverLeftImage = _embed_css_images_custombutton_Button_Border_tileable_ml_over_png_167463477;
                this.defaultOverBottomLeftImage = _embed_css_images_custombutton_Button_Standard_tileable_bl_over_png_1063444457;
                this.defaultDisabledTopImage = _embed_css_images_custombutton_Button_Standard_tileable_tc_disabled_png_312133720;
                this.defaultDownTopImage = _embed_css_images_custombutton_Button_Standard_tileable_tc_pressed_png_1069038580;
                this.selectedOverBottomRightImage = "bottomLeft";
                this.defaultUpCenterImage = _embed_css_images_custombutton_Button_Standard_tileable_mc_idle_png_610131229;
                this.paddingBottom = 0;
                this.selectedDownTopLeftImage = _embed_css_images_custombutton_Button_Border_tileable_tl_pressed_png_1775314060;
                this.textSelectedColor = 13221291;
                this.defaultDownCenterImage = _embed_css_images_custombutton_Button_Standard_tileable_mc_pressed_png_85541895;
                this.selectedDownCenterImage = _embed_css_images_custombutton_Button_Standard_tileable_mc_pressed_png_85541895;
                this.defaultDisabledTopLeftImage = _embed_css_images_custombutton_Button_Standard_tileable_tl_disabled_png_1118743245;
                this.selectedUpBottomRightImage = "bottomLeft";
                this.height = 22;
                this.defaultUpTopRightImage = "topLeft";
                this.selectedUpTopRightImage = "topLeft";
                this.selectedUpCenterImage = _embed_css_images_custombutton_Button_Standard_tileable_mc_idle_png_610131229;
                this.selectedDisabledTopImage = _embed_css_images_custombutton_Button_Border_tileable_tc_disabled_png_1147826429;
                this.selectedDownMask = "topLeft top topRight left center right bottomLeft bottom bottomRight";
                this.selectedDisabledTopLeftImage = _embed_css_images_custombutton_Button_Border_tileable_tl_disabled_png_592849536;
                this.selectedOverTopRightImage = "topLeft";
                this.defaultOverLeftImage = _embed_css_images_custombutton_Button_Standard_tileable_ml_over_png_120760672;
                this.defaultDownMask = "topLeft top topRight left center right bottomLeft bottom bottomRight";
                this.selectedUpTopImage = _embed_css_images_custombutton_Button_Border_tileable_tc_idle_png_1295188411;
                this.selectedUpMask = "topLeft top topRight left center right bottomLeft bottom bottomRight";
                this.selectedDownBottomImage = _embed_css_images_custombutton_Button_Border_tileable_bc_pressed_png_1654848065;
                this.selectedDisabledBottomLeftImage = _embed_css_images_custombutton_Button_Border_tileable_bl_disabled_png_1526687986;
                this.selectedOverTopLeftImage = _embed_css_images_custombutton_Button_Border_tileable_tl_over_png_1999907720;
                this.focusThickness = 0;
                this.defaultDownBottomLeftImage = _embed_css_images_custombutton_Button_Standard_tileable_bl_pressed_png_1330582347;
                this.selectedDownBottomLeftImage = _embed_css_images_custombutton_Button_Border_tileable_bl_pressed_png_2020010902;
                this.defaultDownLeftImage = _embed_css_images_custombutton_Button_Standard_tileable_ml_pressed_png_228321892;
                this.defaultOverRightImage = "left";
                this.defaultOverCenterImage = _embed_css_images_custombutton_Button_Standard_tileable_mc_over_png_796679197;
                this.defaultDisabledTopRightImage = "topLeft";
                this.selectedDownTopRightImage = "topLeft";
                this.selectedOverRightImage = "left";
                this.selectedUpRightImage = "left";
                this.textRollOverColor = 15904590;
                this.defaultUpLeftImage = _embed_css_images_custombutton_Button_Standard_tileable_ml_idle_png_1920807008;
                this.paddingLeft = 4;
                this.selectedOverBottomLeftImage = _embed_css_images_custombutton_Button_Border_tileable_bl_over_png_545925962;
                this.color = 15904590;
                this.defaultDisabledBottomLeftImage = _embed_css_images_custombutton_Button_Standard_tileable_bl_disabled_png_896803423;
                this.selectedUpLeftImage = _embed_css_images_custombutton_Button_Border_tileable_ml_idle_png_633391925;
                this.skin = StyleSizedBitmapButtonSkin;
                this.defaultOverBottomRightImage = "bottomLeft";
                this.defaultOverBottomImage = _embed_css_images_custombutton_Button_Standard_tileable_bc_over_png_319428930;
                this.defaultDisabledLeftImage = _embed_css_images_custombutton_Button_Standard_tileable_ml_disabled_png_911289432;
                this.selectedUpBottomLeftImage = _embed_css_images_custombutton_Button_Border_tileable_bl_idle_png_1739897418;
                this.defaultDownBottomImage = _embed_css_images_custombutton_Button_Standard_tileable_bc_pressed_png_576805294;
                this.defaultUpRightImage = "left";
                this.defaultOverTopRightImage = "topLeft";
                this.defaultDownTopLeftImage = _embed_css_images_custombutton_Button_Standard_tileable_tl_pressed_png_1972797785;
                this.defaultDownRightImage = "left";
                this.defaultUpBottomImage = _embed_css_images_custombutton_Button_Standard_tileable_bc_idle_png_1580636226;
                this.selectedDisabledLeftImage = _embed_css_images_custombutton_Button_Border_tileable_ml_disabled_png_1336516115;
                this.defaultUpTopImage = _embed_css_images_custombutton_Button_Standard_tileable_tc_idle_png_429853040;
                this.selectedDisabledTopRightImage = "topLeft";
                this.defaultOverTopImage = _embed_css_images_custombutton_Button_Standard_tileable_tc_over_png_1706736752;
                this.selectedDownRightImage = "left";
                this.selectedOverMask = "topLeft top topRight left center right bottomLeft bottom bottomRight";
                this.paddingTop = 0;
                this.selectedUpTopLeftImage = _embed_css_images_custombutton_Button_Border_tileable_tl_idle_png_201169032;
                this.defaultDisabledBottomImage = _embed_css_images_custombutton_Button_Standard_tileable_bc_disabled_png_1997505622;
                this.defaultOverMask = "topLeft top topRight left center right bottomLeft bottom bottomRight";
                this.selectedDisabledRightImage = "left";
                this.selectedUpBottomImage = _embed_css_images_custombutton_Button_Border_tileable_bc_idle_png_450765779;
                this.selectedDownBottomRightImage = "bottomLeft";
                this.defaultUpMask = "topLeft top topRight left center right bottomLeft bottom bottomRight";
                this.selectedDisabledCenterImage = _embed_css_images_custombutton_Button_Standard_tileable_mc_disabled_png_1650806741;
                this.defaultUpBottomLeftImage = _embed_css_images_custombutton_Button_Standard_tileable_bl_idle_png_1931374825;
                this.defaultDisabledCenterImage = _embed_css_images_custombutton_Button_Standard_tileable_mc_disabled_png_1650806741;
                this.defaultDisabledMask = "topLeft top topRight left center right bottomLeft bottom bottomRight";
                this.selectedOverBottomImage = _embed_css_images_custombutton_Button_Border_tileable_bc_over_png_103072467;
                this.disabledColor = 15904590;
                this.defaultDownTopRightImage = "topLeft";
                this.defaultUpTopLeftImage = _embed_css_images_custombutton_Button_Standard_tileable_tl_idle_png_1966392453;
                this.defaultUpBottomRightImage = "bottomLeft";
                this.selectedDownTopImage = _embed_css_images_custombutton_Button_Border_tileable_tc_pressed_png_90896863;
                this.selectedOverCenterImage = _embed_css_images_custombutton_Button_Standard_tileable_mc_over_png_796679197;
                this.width = 1;
                this.defaultDownBottomRightImage = "bottomLeft";
                this.selectedDisabledBottomRightImage = "bottomLeft";
                this.defaultOverTopLeftImage = _embed_css_images_custombutton_Button_Standard_tileable_tl_over_png_687359365;
                this.selectedDisabledMask = "topLeft top topRight left center right bottomLeft bottom bottomRight";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".combatButtonOffensive");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".combatButtonOffensive", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "center";
                this.selectedDownMask = "center";
                this.skin = BitmapButtonSkin;
                this.defaultDisabledMask = "center";
                this.defaultDownMask = "center";
                this.selectedUpMask = "center";
                this.defaultUpCenterImage = _embed_css_images_Icons_CombatControls_OffensiveOff_idle_png_47876985;
                this.selectedOverCenterImage = _embed_css_images_Icons_CombatControls_OffensiveOn_over_png_1980211325;
                this.defaultOverCenterImage = _embed_css_images_Icons_CombatControls_OffensiveOff_over_png_1125321337;
                this.selectedOverMask = "center";
                this.defaultDownCenterImage = _embed_css_images_Icons_CombatControls_OffensiveOff_over_png_1125321337;
                this.selectedDownCenterImage = _embed_css_images_Icons_CombatControls_OffensiveOn_over_png_1980211325;
                this.defaultOverMask = "center";
                this.selectedDisabledMask = "center";
                this.selectedUpCenterImage = _embed_css_images_Icons_CombatControls_OffensiveOn_idle_png_644555133;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".actionBarRight");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".actionBarRight", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.toggleButtonStyle = "actionBarWidgetToggleRight";
                this.scrollUpButtonStyle = "actionBarWidgetScrollBottom";
                this.scrollDownButtonStyle = "actionBarWidgetScrollTop";
                this.borderMask = "right center";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".widgetViewCollapse");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".widgetViewCollapse", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "center";
                this.selectedDownMask = "center";
                this.selectedDisabledCenterImage = _embed_css_images_Button_Maximize_idle_png_1216450610;
                this.skin = BitmapButtonSkin;
                this.defaultDisabledCenterImage = _embed_css_images_Button_Minimize_idle_png_1252485396;
                this.defaultDisabledMask = "center";
                this.defaultDownMask = "center";
                this.selectedUpMask = "center";
                this.defaultUpCenterImage = _embed_css_images_Button_Minimize_idle_png_1252485396;
                this.selectedOverCenterImage = _embed_css_images_Button_Maximize_over_png_580574926;
                this.defaultOverCenterImage = _embed_css_images_Button_Minimize_over_png_2130500116;
                this.selectedOverMask = "center";
                this.defaultDownCenterImage = _embed_css_images_Button_Minimize_pressed_png_1610166640;
                this.selectedDownCenterImage = _embed_css_images_Button_Maximize_pressed_png_551093474;
                this.defaultOverMask = "center";
                this.selectedDisabledMask = "center";
                this.selectedUpCenterImage = _embed_css_images_Button_Maximize_idle_png_1216450610;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".sideBarHeaderBody");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".sideBarHeaderBody", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "center";
                this.selectedDownMask = "center";
                this.skin = BitmapButtonSkin;
                this.defaultDownMask = "center";
                this.selectedUpMask = "center";
                this.defaultUpCenterImage = _embed_css_images_Icons_WidgetMenu_Inventory_idle_png_1926255504;
                this.selectedOverCenterImage = _embed_css_images_Icons_WidgetMenu_Inventory_active_over_png_605598747;
                this.defaultOverCenterImage = _embed_css_images_Icons_WidgetMenu_Inventory_idle_over_png_889585267;
                this.selectedOverMask = "center";
                this.defaultDownCenterImage = _embed_css_images_Icons_WidgetMenu_Inventory_idle_over_png_889585267;
                this.selectedDownCenterImage = _embed_css_images_Icons_WidgetMenu_Inventory_active_over_png_605598747;
                this.defaultOverMask = "center";
                this.selectedUpCenterImage = _embed_css_images_Icons_WidgetMenu_Inventory_active_png_511365826;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".combatButtonDove");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".combatButtonDove", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "center";
                this.selectedDownMask = "center";
                this.skin = BitmapButtonSkin;
                this.defaultDisabledMask = "center";
                this.defaultDownMask = "center";
                this.selectedUpMask = "center";
                this.defaultUpCenterImage = _embed_css_images_Icons_CombatControls_DoveOff_idle_png_382376912;
                this.selectedOverCenterImage = _embed_css_images_Icons_CombatControls_DoveOn_over_png_1260638622;
                this.defaultOverCenterImage = _embed_css_images_Icons_CombatControls_DoveOff_over_png_897710896;
                this.selectedOverMask = "center";
                this.defaultDownCenterImage = _embed_css_images_Icons_CombatControls_DoveOff_over_png_897710896;
                this.selectedDownCenterImage = _embed_css_images_Icons_CombatControls_DoveOn_over_png_1260638622;
                this.defaultOverMask = "center";
                this.selectedDisabledMask = "center";
                this.selectedUpCenterImage = _embed_css_images_Icons_CombatControls_DoveOn_idle_png_2145862302;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("ActionButtonToolTip");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("ActionButtonToolTip", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderThickness = 1;
                this.borderColor = 13415802;
                this.backgroundColor = 658961;
                this.color = 13221291;
                this.borderAlpha = 1;
                this.backgroundAlpha = 0.8;
                this.borderSkin = VectorBorderSkin;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".statusWidgetDefaultSkill");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".statusWidgetDefaultSkill", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.progressBarMalusStyleName = "statusWidgetDefaultMalusSkillProgress";
                this.verticalAlign = "middle";
                this.iconStyleName = "";
                this.progressBarBonusStyleName = "statusWidgetDefaultBonusSkillProgress";
                this.progressBarZeroStyleName = "statusWidgetDefaultZeroSkillProgress";
                this.horizontalGap = 0;
                this.progressBarStyleName = "statusWidgetDefaultSkillProgress";
                this.labelStyleName = ".statusWidgetSkillProgress";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".statusWidgetParallelHitpoints");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".statusWidgetParallelHitpoints", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.barRedLow = _embed_css_images_BarsHealth_default_RedLow_png_1850395094;
                this.barImages = ["barRedLow2", "barRedLow", "barRedFull", "barYellow", "barGreenLow", "barGreenFull"];
                this.backgroundRightImage = _embed_css_images_BG_Bars_default_enpiece_png_521656500;
                this.barRedFull = _embed_css_images_BarsHealth_default_RedFull_png_333902423;
                this.barGreenFull = _embed_css_images_BarsHealth_default_GreenFull_png_678064153;
                this.paddingRight = 3;
                this.backgroundMask = "center";
                this.leftOrnamentMask = "left";
                this.barYellow = _embed_css_images_BarsHealth_default_Yellow_png_861014389;
                this.barGreenLow = _embed_css_images_BarsHealth_default_GreenLow_png_1611717052;
                this.rightOrnamentMask = "right";
                this.backgroundCenterImage = _embed_css_images_BG_Bars_default_tileable_png_870405027;
                this.rightOrnamentRightImage = _embed_css_images_BG_Bars_default_enpieceOrnamented_png_1899164501;
                this.backgroundLeftImage = "right";
                this.leftOrnamentLeftImage = "right";
                this.paddingBottom = 3;
                this.barRedLow2 = _embed_css_images_BarsHealth_default_RedLow2_png_1715771650;
                this.leftOrnamentOffset = -5;
                this.rightOrnamentOffset = 5;
                this.paddingTop = 1;
                this.leftOrnamentRightImage = _embed_css_images_BG_Bars_default_enpieceOrnamented_png_1899164501;
                this.paddingLeft = 3;
                this.barLimits = [0, 0.04, 0.1, 0.3, 0.6, 0.95];
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".chatWidgetTabBarScrollLeft");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".chatWidgetTabBarScrollLeft", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultDisabledRightImage = _embed_css_images_Arrow_ScrollTabs_disabled_png_1404963900;
                this.defaultUpMask = "left";
                this.skin = BitmapButtonSkin;
                this.defaultOverBottomImage = "right";
                this.defaultOverLeftImage = "right";
                this.defaultDisabledMask = "left";
                this.defaultDisabledLeftImage = "right";
                this.defaultDownMask = "left";
                this.defaultDownBottomImage = "right";
                this.defaultUpRightImage = _embed_css_images_Arrow_ScrollTabs_idle_png_1270948868;
                this.defaultDownRightImage = _embed_css_images_Arrow_ScrollTabs_pressed_png_23734072;
                this.defaultUpBottomImage = "right";
                this.defaultDownLeftImage = "right";
                this.defaultOverRightImage = _embed_css_images_Arrow_ScrollTabs_over_png_923510532;
                this.defaultUpLeftImage = "right";
                this.defaultDisabledBottomImage = "right";
                this.defaultOverMask = "left";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("ImbuementInformationPane");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("ImbuementInformationPane", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.backgroundColor = 658961;
                this.paddingBottom = 4;
                this.paddingRight = 4;
                this.backgroundAlpha = 0.5;
                this.paddingTop = 4;
                this.paddingLeft = 4;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".simpleTabNavigator");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".simpleTabNavigator", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.selectedBorderColor = 13415802;
                this.selectedBackgroundAlpha = 0.5;
                this.paddingRight = 0;
                this.skin = VectorTabSkin;
                this.selectedBorderAlpha = 1;
                this.selectedBackgroundColor = 658961;
                this.defaultBackgroundColor = 2240055;
                this.defaultBorderColor = 8089164;
                this.paddingBottom = 0;
                this.defaultBackgroundAlpha = 0.5;
                this.selectedTextColor = 13221291;
                this.defaultBorderAlpha = 1;
                this.selectedBorderThickness = 1;
                this.defaultTextColor = 15904590;
                this.paddingTop = 0;
                this.defaultBorderThickness = 1;
                this.paddingLeft = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".successRate");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".successRate", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.textAlign = "right";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".headerLabel");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".headerLabel", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.fontWeight = "bold";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".bodySlotNeckBlessed");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".bodySlotNeckBlessed", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.emptyBackgroundImage = _embed_css_images_Slot_InventoryNecklace_protected_png_1185619916;
                this.backgroundImage = _embed_css_images_slot_Hotkey_protected_png_599761708;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("ChannelView");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("ChannelView", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.dividerThickness = 5;
                this.horizontalGap = 5;
                this.dividerBackgroundMask = "left";
                this.dividerBackgroundLeftImage = _embed_css_images_Border02_WidgetSidebar_slim_png_477968117;
                this.messagesStyle = "messages";
                this.dividerAffordance = 5;
                this.verticalGap = 0;
                this.nicklistStyle = "nicklist";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".ingameShopOfferNew");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".ingameShopOfferNew", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.color = 44562;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".preyDuration");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".preyDuration", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.backgroundLeftImage = _embed_css_images_BG_BarsProgress_compact_endpiece_png_1855154097;
                this.backgroundRightImage = "left";
                this.barImages = "barDefault";
                this.paddingBottom = 2;
                this.barDefault = _embed_css_images_BarsProgress_compact_orange_png_546584162;
                this.backgroundMask = "left center right";
                this.paddingTop = 2;
                this.labelHorizontalAlign = "center";
                this.backgroundCenterImage = _embed_css_images_BG_BarsProgress_compact_tileable_png_1910104912;
                this.barLimits = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".combatButtonWhiteHand");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".combatButtonWhiteHand", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.defaultUpMask = "center";
                this.selectedDownMask = "center";
                this.skin = BitmapButtonSkin;
                this.defaultDisabledMask = "center";
                this.defaultDownMask = "center";
                this.selectedUpMask = "center";
                this.defaultUpCenterImage = _embed_css_images_Icons_CombatControls_WhiteHandOff_idle_png_809012736;
                this.selectedOverCenterImage = _embed_css_images_Icons_CombatControls_WhiteHandOn_over_png_1557482930;
                this.defaultOverCenterImage = _embed_css_images_Icons_CombatControls_WhiteHandOff_over_png_619710208;
                this.selectedOverMask = "center";
                this.defaultDownCenterImage = _embed_css_images_Icons_CombatControls_WhiteHandOff_over_png_619710208;
                this.selectedDownCenterImage = _embed_css_images_Icons_CombatControls_WhiteHandOn_over_png_1557482930;
                this.defaultOverMask = "center";
                this.selectedDisabledMask = "center";
                this.selectedUpCenterImage = _embed_css_images_Icons_CombatControls_WhiteHandOn_idle_png_1762909362;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("OfferDetails");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("OfferDetails", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.paddingBottom = 6;
                this.paddingRight = 6;
                this.paddingTop = 6;
                this.verticalGap = 6;
                this.paddingLeft = 6;
                this.fontWeight = "normal";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration("SelectOutfitWidget");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("SelectOutfitWidget", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.outfitDialogOpenStoreButtonStyle = "buttonDialogOpenStoreButton";
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".buddylist");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".buddylist", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.horizontalGap = 0;
                this.paddingBottom = 0;
                this.itemBackgroundColors = [2768716, 16711680];
                this.paddingRight = 2;
                this.itemRendererStyle = "buddylistWidgetView";
                this.itemBackgroundAlphas = [0.5, 0];
                this.paddingTop = 0;
                this.verticalGap = 2;
                this.paddingLeft = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".statusWidgetDefaultMana");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".statusWidgetDefaultMana", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.barImages = "barDefault";
                this.backgroundRightImage = _embed_css_images_BG_Bars_default_enpiece_png_521656500;
                this.paddingRight = 1;
                this.backgroundMask = "center";
                this.leftOrnamentMask = "left";
                this.rightOrnamentMask = "none";
                this.backgroundCenterImage = _embed_css_images_BG_Bars_default_tileable_png_870405027;
                this.rightOrnamentRightImage = _embed_css_images_BG_Bars_default_enpieceOrnamented_png_1899164501;
                this.backgroundLeftImage = "right";
                this.leftOrnamentLeftImage = "right";
                this.paddingBottom = 3;
                this.barDefault = _embed_css_images_BarsHealth_default_Mana_png_1278936006;
                this.leftOrnamentOffset = -5;
                this.rightOrnamentOffset = 5;
                this.paddingTop = 1;
                this.leftOrnamentRightImage = _embed_css_images_BG_Bars_default_enpieceOrnamented_png_1899164501;
                this.paddingLeft = 3;
                this.barLimits = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".statusWidgetCompactMalusSkillProgress");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".statusWidgetCompactMalusSkillProgress", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.tickCenterImage = _embed_css_images_Bars_ProgressMarker_png_1964646600;
                this.backgroundRightImage = "left";
                this.barImages = "barDefault";
                this.tickMask = "center";
                this.paddingRight = -5;
                this.backgroundMask = "left center right";
                this.backgroundCenterImage = _embed_css_images_BG_BarsXP_default_tileable_png_940157883;
                this.backgroundLeftImage = _embed_css_images_BG_BarsXP_default_endpiece_png_928913106;
                this.barDefault = _embed_css_images_BarsXP_default_malus_png_951462521;
                this.paddingBottom = 4;
                this.tickOffset = 3;
                this.paddingTop = 3;
                this.paddingLeft = -5;
                this.barLimits = 0;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".expandedView");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".expandedView", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.borderCenterMask = "all";
                this.borderFooterMask = "none";
                this.borderCenterCenterImage = _embed_css_images_BG_Combat_ExpertOn_png_1524627954;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".validationFeedbackError");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".validationFeedbackError", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.color = 13120000;
                return;
            }// end function
            ;
            }
            style = StyleManager.getStyleDeclaration(".preyUnlockPermanentlyButton");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration(".preyUnlockPermanentlyButton", style, false);
            }
            if (style.factory == null)
            {
                style.factory = function () : void
            {
                this.icon = _embed_css____images_prey_prey_unlock_permanently_png_2008737555;
                return;
            }// end function
            ;
            }
            var _loc_2:* = StyleManager;
            _loc_2.mx_internal::initProtoChainRoots();
            return;
        }// end function

        public function get m_UITibiaRootContainer() : HBox
        {
            return this._1020379552m_UITibiaRootContainer;
        }// end function

        protected function onGameWindowResize(event:ResizeEvent) : void
        {
            var _loc_2:* = NaN;
            var _loc_3:* = NaN;
            if (this.options != null && this.m_UIGameWindow != null && this.m_UIChatWidget != null && !this.m_ForceDisableGameWindowSizeCalc)
            {
                _loc_2 = this.m_UIGameWindow.height;
                _loc_3 = this.m_UIChatWidget.height;
                if (this.options.generalUIGameWindowHeight > 0.01 && this.options.generalUIGameWindowHeight < 99.99)
                {
                    this.options.generalUIGameWindowHeight = _loc_2 * 100 / (_loc_2 + _loc_3);
                }
            }
            this.m_ForceDisableGameWindowSizeCalc = false;
            return;
        }// end function

        private function _Tibia_Array1_i() : Array
        {
            var _loc_1:* = [undefined, undefined];
            this._Tibia_Array1 = _loc_1;
            BindingManager.executeBindings(this, "_Tibia_Array1", this._Tibia_Array1);
            return _loc_1;
        }// end function

        public function setSessionKey(param1:String) : void
        {
            this.m_SessionKey = param1;
            return;
        }// end function

        protected function onPreinitialise(event:FlexEvent) : void
        {
            this.m_AppearanceStorage = ApperanceStorageFactory.s_CreateAppearanceStorage();
            this.m_AppearanceStorage.addEventListener(Event.COMPLETE, this.onAppearancesLoadComplete);
            this.m_AppearanceStorage.addEventListener(ErrorEvent.ERROR, this.onAppearancesLoadError);
            this.addEventListener(ConnectionEvent.CREATED, this.onConnectionCreated);
            this.m_ChatStorage = new ChatStorage();
            this.m_ChannelsPending = new Vector.<int>;
            this.m_ContainerStorage = new ContainerStorage();
            this.m_MiniMapStorage = new MiniMapStorage();
            this.m_SpellStorage = new SpellStorage();
            this.m_WorldMapStorage = new WorldMapStorage();
            this.m_UIEffectsManager = new UIEffectsManager();
            this.m_SeconaryTimer = new Timer(50);
            this.m_SeconaryTimer.addEventListener(TimerEvent.TIMER, this.onSecondaryTimer);
            this.m_SeconaryTimer.start();
            return;
        }// end function

        public function __m_UICenterColumn_dividerRelease(event:DividerEvent) : void
        {
            this.onDividerRelease(event);
            return;
        }// end function

        public function get m_UIActionBarBottom() : HActionBarWidget
        {
            return this._629924354m_UIActionBarBottom;
        }// end function

        public function initializeGameClient(param1:Boolean, param2:Object = null) : void
        {
            this.m_TutorialMode = param1;
            this.m_TutorialData = param2;
            if (this.m_TutorialMode)
            {
                this.m_GameActionFactory = new SessiondumpHintsGameActionFactory();
            }
            else
            {
                this.m_GameActionFactory = new GameActionFactory();
            }
            s_InternalTibiaTimerFactor = 1;
            return;
        }// end function

        public function __m_UIGameWindow_resize(event:ResizeEvent) : void
        {
            this.onGameWindowResize(event);
            return;
        }// end function

        protected function onApplicationComplete(event:FlexEvent) : void
        {
            ToolTipManager.showDelay = 750;
            ToolTipManager.scrubDelay = 0;
            stage.align = StageAlign.TOP_LEFT;
            stage.frameRate = 100;
            stage.scaleMode = StageScaleMode.NO_SCALE;
            stage.showDefaultContextMenu = false;
            if (this.m_UICenterColumn != null && this.m_UICenterColumn.numDividers > 0 && this.m_UICenterColumn.getDividerAt(0) != null)
            {
                this.m_UICenterColumn.getDividerAt(0).doubleClickEnabled = true;
                this.m_UICenterColumn.getDividerAt(0).addEventListener(MouseEvent.DOUBLE_CLICK, this.onGameWindowAutofit);
            }
            if (this.m_EnableFocusNotifier && this.isActive == false)
            {
                FocusNotifier.getInstance().captureMouse = true;
                FocusNotifier.getInstance().show();
            }
            return;
        }// end function

        public function ___Tibia_Application1_deactivate(event:Event) : void
        {
            this.onActivation(event);
            return;
        }// end function

        private function updateCombatTactics() : void
        {
            if (this.m_Communication != null && this.m_Communication.isGameRunning && this.m_Options != null)
            {
                this.m_Communication.sendCSETTACTICS(this.m_Options.combatAttackMode, this.m_Options.combatChaseMode, this.m_Options.combatSecureMode, this.m_Options.combatPVPMode);
            }
            return;
        }// end function

        public function ___Tibia_Application1_applicationComplete(event:FlexEvent) : void
        {
            this.onApplicationComplete(event);
            return;
        }// end function

        protected function reloadClient(param1:AccountCharacter = null, param2:String = null) : void
        {
            var _loc_4:* = null;
            var _loc_5:* = null;
            var _loc_6:* = null;
            var _loc_3:* = null;
            if (param2 != null && param2.length > 0)
            {
                _loc_3 = new URLRequest(param2);
            }
            else
            {
                _loc_3 = new URLRequest(URLHelper.s_GetBrowserCurrentUrl());
            }
            if (param1 != null)
            {
                _loc_4 = URLHelper.s_GetBrowserCurrentBaseUrl();
                if (param2 != null)
                {
                    _loc_4 = param2;
                }
                _loc_5 = URLHelper.s_GetBrowserCurrentQuerystring();
                _loc_6 = new URLVariables(_loc_5);
                _loc_3 = new URLRequest(_loc_4);
                _loc_6.name = param1.name;
                _loc_3.data = _loc_6;
            }
            navigateToURL(_loc_3, "_self");
            return;
        }// end function

        private function updateGameWindowSize() : void
        {
            var _loc_1:* = NaN;
            if (this.options != null && this.m_UIGameWindow != null && this.m_UIChatWidget != null)
            {
                _loc_1 = this.options.generalUIGameWindowHeight;
                if (Math.abs(this.m_UIGameWindow.percentHeight - _loc_1) > 0.01)
                {
                    this.m_ForceDisableGameWindowSizeCalc = true;
                }
                this.m_UIGameWindow.percentHeight = _loc_1;
                this.m_UIChatWidget.percentHeight = 100 - _loc_1;
            }
            return;
        }// end function

        private function loadOptions() : void
        {
            if (this.options == null)
            {
                this.options = new OptionsStorage(this.m_DefaultOptionsAsset == null ? (null) : (this.m_DefaultOptionsAsset.xml), this.m_CurrentOptionsAsset == null ? (null) : (this.m_CurrentOptionsAsset.xml));
            }
            return;
        }// end function

        private function onConnectionLoginWait(event:ConnectionEvent) : void
        {
            visible = false;
            this.saveLocalData();
            this.saveOptions();
            var _loc_2:* = new LoginWaitWidget();
            _loc_2.message = event.message;
            _loc_2.timeout = Number(event.data);
            _loc_2.addEventListener(CloseEvent.CLOSE, this.onCloseLoginWait);
            _loc_2.show();
            return;
        }// end function

        private function onConnectionLost(event:ConnectionEvent) : void
        {
            this.saveLocalData();
            this.saveOptions();
            this.m_ConnectionLostDialog = new ConnectionLostWidget();
            this.m_ConnectionLostDialog.timeout = Number(60 * 1000);
            this.m_ConnectionLostDialog.addEventListener(CloseEvent.CLOSE, this.onCloseConnectionLostDialog);
            this.m_ConnectionLostDialog.show();
            return;
        }// end function

        protected function onGameWindowAutofit(event:MouseEvent) : void
        {
            this.autofitGameWindow();
            return;
        }// end function

        public function get isFocusNotifierEnabled() : Boolean
        {
            return this.m_EnableFocusNotifier;
        }// end function

        private function setCurrentOptionsFromAssets(param1:IAssetProvider) : void
        {
            if (this.m_CurrentOptionsAsset != null)
            {
                this.m_CurrentOptionsAsset.removeEventListener(Event.COMPLETE, this.onUploadOptionsComplete);
                this.m_CurrentOptionsAsset.removeEventListener(ErrorEvent.ERROR, this.onUploadOptionsError);
                this.m_CurrentOptionsAsset.removeEventListener(IOErrorEvent.IO_ERROR, this.onUploadOptionsError);
                this.m_CurrentOptionsAsset.removeEventListener(SecurityErrorEvent.SECURITY_ERROR, this.onUploadOptionsError);
            }
            this.m_CurrentOptionsAsset = this.m_AssetProvider.getCurrentOptions();
            this.m_CurrentOptionsDirty = false;
            this.m_CurrentOptionsLastUpload = 0;
            this.m_CurrentOptionsUploading = false;
            if (this.m_CurrentOptionsAsset != null)
            {
                this.m_CurrentOptionsAsset.addEventListener(Event.COMPLETE, this.onUploadOptionsComplete);
                this.m_CurrentOptionsAsset.addEventListener(ErrorEvent.ERROR, this.onUploadOptionsError);
                this.m_CurrentOptionsAsset.addEventListener(IOErrorEvent.IO_ERROR, this.onUploadOptionsError);
                this.m_CurrentOptionsAsset.addEventListener(SecurityErrorEvent.SECURITY_ERROR, this.onUploadOptionsError);
                param1.removeAsset(this.m_CurrentOptionsAsset);
            }
            return;
        }// end function

        public function set m_UIActionBarLeft(param1:VActionBarWidget) : void
        {
            var _loc_2:* = null;
            _loc_2 = this._1174474338m_UIActionBarLeft;
            if (_loc_2 !== param1)
            {
                this._1174474338m_UIActionBarLeft = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "m_UIActionBarLeft", _loc_2, param1));
            }
            return;
        }// end function

        private function _Tibia_HActionBarWidget2_i() : HActionBarWidget
        {
            var _loc_1:* = new HActionBarWidget();
            this.m_UIActionBarBottom = _loc_1;
            _loc_1.styleName = "actionBarBottom";
            _loc_1.id = "m_UIActionBarBottom";
            BindingManager.executeBindings(this, "m_UIActionBarBottom", this.m_UIActionBarBottom);
            if (!_loc_1.document)
            {
                _loc_1.document = this;
            }
            return _loc_1;
        }// end function

        public function set m_UITibiaRootContainer(param1:HBox) : void
        {
            var _loc_2:* = null;
            _loc_2 = this._1020379552m_UITibiaRootContainer;
            if (_loc_2 !== param1)
            {
                this._1020379552m_UITibiaRootContainer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "m_UITibiaRootContainer", _loc_2, param1));
            }
            return;
        }// end function

        public function get m_UIOuterRootContainer() : DividedBox
        {
            return this._1568861366m_UIOuterRootContainer;
        }// end function

        private function onConnectionLoginAdvice(event:ConnectionEvent) : void
        {
            visible = false;
            var _loc_2:* = new MessageWidget();
            _loc_2.buttonFlags = PopUpBase.BUTTON_OKAY;
            _loc_2.keyboardFlags = PopUpBase.KEY_ENTER;
            _loc_2.message = resourceManager.getString(BUNDLE, "DLG_LOGINADVICE_TEXT", [event.message]);
            _loc_2.priority = PopUpBase.DEFAULT_PRIORITY + 1;
            _loc_2.title = resourceManager.getString(BUNDLE, "DLG_LOGINADVICE_TITLE");
            _loc_2.show();
            return;
        }// end function

        public function get m_UIActionBarRight() : VActionBarWidget
        {
            return this._2043305115m_UIActionBarRight;
        }// end function

        private function onConnectionRecovered(event:ConnectionEvent) : void
        {
            this.m_ConnectionLostDialog.hide();
            return;
        }// end function

        override public function initialize() : void
        {
            var target:Tibia;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(this._documentDescriptor_);
            var bindings:* = this._Tibia_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_TibiaWatcherSetupUtil");
                var _loc_2:* = watcherSetupUtilClass;
                _loc_2["init"](null);
            }
            _watcherSetupUtil.setup(this, function (param1:String)
            {
                return target[param1];
            }// end function
            , bindings, watchers);
            var i:uint;
            while (i < bindings.length)
            {
                
                Binding(bindings[i]).execute();
                i = (i + 1);
            }
            mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
            mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
            super.initialize();
            return;
        }// end function

        protected function transferToLiveServer(param1:String) : void
        {
            var _loc_4:* = null;
            if (!this.m_TutorialMode)
            {
                throw new IllegalOperationError("Tibia.transferToLiveServer: Must be in tutorial mode");
            }
            var _loc_2:* = -1;
            var _loc_3:* = 0;
            while (_loc_3 < (this.m_ConnectionDataList.length - 1))
            {
                
                _loc_4 = this.m_ConnectionDataList[_loc_3] as AccountCharacter;
                if (_loc_4 != null && _loc_4.name == param1)
                {
                    _loc_2 = _loc_3;
                    break;
                }
                _loc_3++;
            }
            if (_loc_2 > -1)
            {
                this.initializeGameClient(false);
                this.setConnectionDataList(this.m_ConnectionDataList, _loc_2);
                this.loginCharacter();
                this.setCurrentOptionsFromAssets(this.m_AssetProvider);
                this.m_DefaultOptionsAsset = this.m_AssetProvider.getDefaultOptions();
                if (this.m_DefaultOptionsAsset != null)
                {
                    this.m_AssetProvider.removeAsset(this.m_DefaultOptionsAsset);
                }
                this.options = null;
                this.loadOptions();
            }
            else
            {
                throw new ArgumentError("No ConnectionData found for character " + param1);
            }
            return;
        }// end function

        private function _Tibia_VActionBarWidget2_i() : VActionBarWidget
        {
            var _loc_1:* = new VActionBarWidget();
            this.m_UIActionBarRight = _loc_1;
            _loc_1.styleName = "actionBarRight";
            _loc_1.id = "m_UIActionBarRight";
            BindingManager.executeBindings(this, "m_UIActionBarRight", this.m_UIActionBarRight);
            if (!_loc_1.document)
            {
                _loc_1.document = this;
            }
            return _loc_1;
        }// end function

        private function _Tibia_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = BoxDirection.VERTICAL;
            _loc_1 = SideBarSet.LOCATION_A;
            _loc_1 = SideBarSet.LOCATION_B;
            _loc_1 = SideBarSet.LOCATION_B;
            _loc_1 = SideBarSet.LOCATION_A;
            _loc_1 = BoxDirection.VERTICAL;
            _loc_1 = ActionBarSet.LOCATION_TOP;
            _loc_1 = ActionBarSet.LOCATION_BOTTOM;
            _loc_1 = ActionBarSet.LOCATION_LEFT;
            _loc_1 = ActionBarSet.LOCATION_RIGHT;
            _loc_1 = SideBarSet.LOCATION_C;
            _loc_1 = SideBarSet.LOCATION_D;
            _loc_1 = SideBarSet.LOCATION_C;
            _loc_1 = SideBarSet.LOCATION_D;
            return;
        }// end function

        private function onCloseConnectionLostDialog(event:CloseEvent) : void
        {
            if (event.detail == PopUpBase.BUTTON_ABORT || event.detail == TimeoutWaitWidget.TIMOUT_EXPIRED)
            {
                this.m_ConnectionDataPending = -1;
                this.m_Communication.disconnect(true);
            }
            return;
        }// end function

        public function set m_UIActionBarBottom(param1:HActionBarWidget) : void
        {
            var _loc_2:* = null;
            _loc_2 = this._629924354m_UIActionBarBottom;
            if (_loc_2 !== param1)
            {
                this._629924354m_UIActionBarBottom = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "m_UIActionBarBottom", _loc_2, param1));
            }
            return;
        }// end function

        public function ___Tibia_Application1_activate(event:Event) : void
        {
            this.onActivation(event);
            return;
        }// end function

        public function autofitGameWindow() : void
        {
            var _loc_1:* = NaN;
            var _loc_2:* = NaN;
            var _loc_3:* = NaN;
            var _loc_4:* = NaN;
            var _loc_5:* = null;
            var _loc_6:* = null;
            var _loc_7:* = NaN;
            if (this.options != null && this.m_UIGameWindow != null && this.m_UIChatWidget != null && this.m_UIWorldMapWidget)
            {
                _loc_1 = this.m_UIGameWindow.height + this.m_UIChatWidget.height;
                _loc_2 = this.m_UIGameWindow.width;
                _loc_3 = 0;
                _loc_4 = 0;
                _loc_5 = null;
                _loc_6 = null;
                var _loc_8:* = this.m_UIGameWindow;
                _loc_5 = this.m_UIGameWindow;
                if (_loc_8 != null)
                {
                    var _loc_8:* = _loc_5.top;
                    _loc_6 = _loc_5.top;
                    if (_loc_8 != null && _loc_6.includeInLayout)
                    {
                        _loc_3 = _loc_3 + _loc_6.getExplicitOrMeasuredHeight();
                    }
                    var _loc_8:* = _loc_5.bottom;
                    _loc_6 = _loc_5.bottom;
                    if (_loc_8 != null && _loc_6.includeInLayout)
                    {
                        _loc_3 = _loc_3 + _loc_6.getExplicitOrMeasuredHeight();
                    }
                    var _loc_8:* = _loc_5.left;
                    _loc_6 = _loc_5.left;
                    if (_loc_8 != null && _loc_6.includeInLayout)
                    {
                        _loc_4 = _loc_4 + _loc_6.getExplicitOrMeasuredWidth();
                    }
                    var _loc_8:* = _loc_5.right;
                    _loc_6 = _loc_5.right;
                    if (_loc_8 != null && _loc_6.includeInLayout)
                    {
                        _loc_4 = _loc_4 + _loc_6.getExplicitOrMeasuredWidth();
                    }
                }
                var _loc_8:* = _loc_5.center as GridContainer;
                _loc_5 = _loc_5.center as GridContainer;
                if (_loc_8 != null)
                {
                    var _loc_8:* = _loc_5.top;
                    _loc_6 = _loc_5.top;
                    if (_loc_8 != null && _loc_6.includeInLayout)
                    {
                        _loc_3 = _loc_3 + _loc_6.getExplicitOrMeasuredHeight();
                    }
                    var _loc_8:* = _loc_5.bottom;
                    _loc_6 = _loc_5.bottom;
                    if (_loc_8 != null && _loc_6.includeInLayout)
                    {
                        _loc_3 = _loc_3 + _loc_6.getExplicitOrMeasuredHeight();
                    }
                    var _loc_8:* = _loc_5.left;
                    _loc_6 = _loc_5.left;
                    if (_loc_8 != null && _loc_6.includeInLayout)
                    {
                        _loc_4 = _loc_4 + _loc_6.getExplicitOrMeasuredWidth();
                    }
                    var _loc_8:* = _loc_5.right;
                    _loc_6 = _loc_5.right;
                    if (_loc_8 != null && _loc_6.includeInLayout)
                    {
                        _loc_4 = _loc_4 + _loc_6.getExplicitOrMeasuredWidth();
                    }
                }
                _loc_7 = this.m_UIWorldMapWidget.calculateOptimalSize(_loc_2 - _loc_4, _loc_1 - _loc_3).height + _loc_3;
                this.options.generalUIGameWindowHeight = _loc_7 * 100 / _loc_1;
            }
            return;
        }// end function

        public function set m_UIBottomContainer(param1:HBox) : void
        {
            var _loc_2:* = null;
            _loc_2 = this._967396880m_UIBottomContainer;
            if (_loc_2 !== param1)
            {
                this._967396880m_UIBottomContainer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "m_UIBottomContainer", _loc_2, param1));
            }
            return;
        }// end function

        private function onOptionsChange(event:PropertyChangeEvent) : void
        {
            if (event.property == "generalUIGameWindowHeight" || event.property == "*")
            {
                this.updateGameWindowSize();
            }
            if (event.property == "*")
            {
                this.updateCombatTactics();
            }
            this.m_CurrentOptionsDirty = true;
            return;
        }// end function

        public function set m_UIWorldMapWindow(param1:GameWindowContainer) : void
        {
            var _loc_2:* = null;
            _loc_2 = this._1313911232m_UIWorldMapWindow;
            if (_loc_2 !== param1)
            {
                this._1313911232m_UIWorldMapWindow = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "m_UIWorldMapWindow", _loc_2, param1));
            }
            return;
        }// end function

        public function get m_UISideBarToggleRight() : ToggleBar
        {
            return this._665607314m_UISideBarToggleRight;
        }// end function

        public function set m_UISideBarC(param1:SideBarWidget) : void
        {
            var _loc_2:* = null;
            _loc_2 = this._64278963m_UISideBarC;
            if (_loc_2 !== param1)
            {
                this._64278963m_UISideBarC = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "m_UISideBarC", _loc_2, param1));
            }
            return;
        }// end function

        public function set m_UISideBarD(param1:SideBarWidget) : void
        {
            var _loc_2:* = null;
            _loc_2 = this._64278962m_UISideBarD;
            if (_loc_2 !== param1)
            {
                this._64278962m_UISideBarD = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "m_UISideBarD", _loc_2, param1));
            }
            return;
        }// end function

        public function get m_UIWorldMapWidget() : WorldMapWidget
        {
            return this._1314206572m_UIWorldMapWidget;
        }// end function

        public function set m_UISideBarA(param1:SideBarWidget) : void
        {
            var _loc_2:* = null;
            _loc_2 = this._64278965m_UISideBarA;
            if (_loc_2 !== param1)
            {
                this._64278965m_UISideBarA = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "m_UISideBarA", _loc_2, param1));
            }
            return;
        }// end function

        private function onCloseChangeCharacter(event:CloseEvent) : void
        {
            var _loc_4:* = null;
            var _loc_2:* = null;
            var _loc_3:* = null;
            if (event.currentTarget is CharacterSelectionWidget && event.detail == PopUpBase.BUTTON_OKAY && CharacterSelectionWidget(event.currentTarget).selectedCharacterIndex != -1)
            {
                this.m_ConnectionDataPending = CharacterSelectionWidget(event.currentTarget).selectedCharacterIndex;
                if (this.m_ConnectionDataPending >= 0 && this.m_ConnectionDataPending < this.m_ConnectionDataList.length)
                {
                    _loc_2 = this.m_ConnectionDataList[this.m_ConnectionDataPending] as AccountCharacter;
                }
            }
            if (event.detail != PopUpBase.BUTTON_OKAY && event.currentTarget is CharacterSelectionWidget && (this.m_Connection == null || !this.m_Connection.isConnected))
            {
                _loc_4 = new GameEvent(GameEvent.CLOSE, true, false);
                dispatchEvent(_loc_4);
            }
            else if (event.detail == PopUpBase.BUTTON_OKAY && event.currentTarget is CharacterSelectionWidget && _loc_2 != null && !this.isValidPreviewStateForClient(_loc_2.worldPreviewState))
            {
                event.preventDefault();
                _loc_3 = new EmbeddedDialog();
                _loc_3.name = "ConfirmClientChange";
                _loc_3.buttonFlags = PopUpBase.BUTTON_YES | PopUpBase.BUTTON_NO;
                _loc_3.text = resourceManager.getString(BUNDLE, "DLG_CLIENT_CHANGE_TEXT");
                _loc_3.title = resourceManager.getString(BUNDLE, "DLG_CLIENT_CHANGE_TITLE");
                _loc_3.addEventListener(CloseEvent.CLOSE, this.onCloseChangeCharacter);
                CharacterSelectionWidget(event.currentTarget).embeddedDialog = _loc_3;
            }
            else if ((event.detail == PopUpBase.BUTTON_YES || event.detail == PopUpBase.BUTTON_OKAY) && (event.currentTarget is CharacterSelectionWidget || event.currentTarget is EmbeddedDialog && EmbeddedDialog(event.currentTarget).name == "ConfirmClientChange") && this.m_ConnectionDataPending != -1)
            {
                if (event.currentTarget as EmbeddedDialog != null)
                {
                    ((event.currentTarget as EmbeddedDialog).parent as PopUpBase).hide(false);
                }
                if (this.m_Connection != null && this.m_Connection.isConnected)
                {
                    this.m_Communication.disconnect(false);
                }
                else if (this.m_Connection == null || !this.m_Connection.isConnected)
                {
                    this.loginCharacter();
                }
            }
            else if (event.currentTarget is CharacterSelectionWidget && event.detail == PopUpBase.BUTTON_OKAY)
            {
                event.preventDefault();
                _loc_3 = new EmbeddedDialog();
                _loc_3.name = "NoCharacterSelected";
                _loc_3.buttonFlags = PopUpBase.BUTTON_OKAY;
                _loc_3.text = resourceManager.getString(BUNDLE, "DLG_CHANGE_CHARACTER_NO_SELECTION_TEXT");
                _loc_3.title = resourceManager.getString(BUNDLE, "DLG_CHANGE_CHARACTER_NO_SELECTION_TITLE");
                _loc_3.addEventListener(CloseEvent.CLOSE, this.onCloseChangeCharacter);
                CharacterSelectionWidget(event.currentTarget).embeddedDialog = _loc_3;
            }
            return;
        }// end function

        public function set m_UISideBarB(param1:SideBarWidget) : void
        {
            var _loc_2:* = null;
            _loc_2 = this._64278964m_UISideBarB;
            if (_loc_2 !== param1)
            {
                this._64278964m_UISideBarB = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "m_UISideBarB", _loc_2, param1));
            }
            return;
        }// end function

        private function onConnectionDisconnected(event:ConnectionEvent) : void
        {
            visible = false;
            this.saveLocalData();
            this.saveOptions();
            if (this.m_TutorialMode)
            {
                this.transferToLiveServer(this.m_TutorialData["player-name"]);
            }
            else if (this.m_ConnectionDataPending == -1)
            {
                this.changeCharacter();
            }
            else
            {
                this.loginCharacter();
            }
            return;
        }// end function

        public function get isRunning() : Boolean
        {
            return this.m_Connection != null && this.m_Connection.isGameRunning || this.m_CurrentOptionsUploading;
        }// end function

        public function get currentConnection() : Object
        {
            return this.m_Connection;
        }// end function

        public function set options(param1:OptionsStorage) : void
        {
            if (this.m_Options != param1)
            {
                if (this.m_Options != null)
                {
                    this.m_Options.removeEventListener(PropertyChangeEvent.PROPERTY_CHANGE, this.onOptionsChange);
                    this.m_Options.unload();
                }
                this.m_Options = param1;
                this.m_ChatStorage.options = this.m_Options;
                if (this.m_CreatureStorage != null)
                {
                    this.m_CreatureStorage.options = this.m_Options;
                }
                this.m_WorldMapStorage.options = this.m_Options;
                this.m_UIActionBarBottom.options = this.m_Options;
                this.m_UIActionBarLeft.options = this.m_Options;
                this.m_UIActionBarRight.options = this.m_Options;
                this.m_UIActionBarTop.options = this.m_Options;
                this.m_UIChatWidget.options = this.m_Options;
                this.m_UIInputHandler.options = this.m_Options;
                this.m_UISideBarA.options = this.m_Options;
                this.m_UISideBarB.options = this.m_Options;
                this.m_UISideBarC.options = this.m_Options;
                this.m_UISideBarD.options = this.m_Options;
                this.m_UISideBarToggleLeft.options = this.m_Options;
                this.m_UISideBarToggleRight.options = this.m_Options;
                this.m_UIStatusWidget.options = this.m_Options;
                this.m_UIWorldMapWidget.options = this.m_Options;
                this.m_UIWorldMapWindow.options = this.m_Options;
                this.updateCombatTactics();
                this.updateGameWindowSize();
                if (this.m_Options != null)
                {
                    this.m_Options.addEventListener(PropertyChangeEvent.PROPERTY_CHANGE, this.onOptionsChange);
                }
                this.m_CurrentOptionsDirty = true;
            }
            return;
        }// end function

        public function reset(param1:Boolean = true) : void
        {
            var _loc_2:* = 0;
            if (this.m_ChatStorage != null)
            {
                this.m_ChatStorage.reset();
            }
            if (this.m_ContainerStorage != null)
            {
                this.m_ContainerStorage.reset();
            }
            if (this.m_CreatureStorage != null)
            {
                this.m_CreatureStorage.reset(param1);
            }
            if (this.m_Player != null && param1 == true)
            {
                this.m_Player.reset();
            }
            if (this.m_SpellStorage != null)
            {
                this.m_SpellStorage.reset();
            }
            if (this.m_WorldMapStorage != null)
            {
                this.m_WorldMapStorage.reset();
            }
            if (this.m_Options != null)
            {
                this.m_Options.combatPVPMode = OptionsStorage.COMBAT_PVP_MODE_DOVE;
                this.m_Options.combatSecureMode = OptionsStorage.COMBAT_SECURE_ON;
            }
            if (this.m_UIActionBarBottom != null)
            {
                this.m_UIActionBarBottom.containerStorage = this.m_ContainerStorage;
            }
            if (this.m_UIActionBarLeft != null)
            {
                this.m_UIActionBarLeft.containerStorage = this.m_ContainerStorage;
            }
            if (this.m_UIActionBarRight != null)
            {
                this.m_UIActionBarRight.containerStorage = this.m_ContainerStorage;
            }
            if (this.m_UIActionBarTop != null)
            {
                this.m_UIActionBarTop.containerStorage = this.m_ContainerStorage;
            }
            if (this.m_UIChatWidget != null)
            {
                this.m_UIChatWidget.chatStorage = this.m_ChatStorage;
                this.m_UIChatWidget.leftChannel = this.m_ChatStorage.getChannel(ChatStorage.LOCAL_CHANNEL_ID);
                this.m_UIChatWidget.rightChannel = null;
            }
            if (this.m_UIStatusWidget != null)
            {
                this.m_UIStatusWidget.player = this.m_Player;
            }
            if (this.m_UIWorldMapWidget != null)
            {
                this.m_UIWorldMapWidget.reset();
            }
            if (this.options != null)
            {
                _loc_2 = 0;
                for each (_loc_2 in this.options.getSideBarSetIDs())
                {
                    
                    this.options.getSideBarSet(_loc_2).closeVolatileWidgets();
                }
                for each (_loc_2 in this.options.getBuddySetIDs())
                {
                    
                    this.options.getBuddySet(_loc_2).clearBuddies();
                }
            }
            CursorManager.getInstance().removeAllCursors();
            if (ContextMenuBase.getCurrent() != null)
            {
                ContextMenuBase.getCurrent().hide();
            }
            PopUpQueue.getInstance().hideByPriority(PopUpBase.DEFAULT_PRIORITY);
            return;
        }// end function

        public function changeCharacter() : void
        {
            var _loc_2:* = null;
            var _loc_3:* = null;
            var _loc_1:* = new ArrayCollection();
            for each (_loc_2 in this.m_ConnectionDataList)
            {
                
                if (_loc_2 is AccountCharacter)
                {
                    _loc_1.addItem(_loc_2);
                }
            }
            this.m_FailedConnectionRescheduler.reset();
            if (_loc_1.length > 0)
            {
                _loc_3 = new CharacterSelectionWidget();
                _loc_3.characters = _loc_1;
                _loc_3.selectedCharacterIndex = this.m_ConnectionDataCurrent;
                _loc_3.addEventListener(CloseEvent.CLOSE, this.onCloseChangeCharacter);
                _loc_3.show();
            }
            else
            {
                this.m_ConnectionDataPending = 0;
                this.loginCharacter();
            }
            return;
        }// end function

        public function set m_UIGameWindow(param1:GridContainer) : void
        {
            var _loc_2:* = null;
            _loc_2 = this._1404294856m_UIGameWindow;
            if (_loc_2 !== param1)
            {
                this._1404294856m_UIGameWindow = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "m_UIGameWindow", _loc_2, param1));
            }
            return;
        }// end function

        private function _Tibia_Array2_i() : Array
        {
            var _loc_1:* = [undefined, undefined];
            this._Tibia_Array2 = _loc_1;
            BindingManager.executeBindings(this, "_Tibia_Array2", this._Tibia_Array2);
            return _loc_1;
        }// end function

        public function set m_UICenterColumn(param1:CustomDividedBox) : void
        {
            var _loc_2:* = null;
            _loc_2 = this._1356021457m_UICenterColumn;
            if (_loc_2 !== param1)
            {
                this._1356021457m_UICenterColumn = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "m_UICenterColumn", _loc_2, param1));
            }
            return;
        }// end function

        public function set m_UISideBarToggleLeft(param1:ToggleBar) : void
        {
            var _loc_2:* = null;
            _loc_2 = this._2056921391m_UISideBarToggleLeft;
            if (_loc_2 !== param1)
            {
                this._2056921391m_UISideBarToggleLeft = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "m_UISideBarToggleLeft", _loc_2, param1));
            }
            return;
        }// end function

        public function set m_UIInputHandler(param1:InputHandler) : void
        {
            var _loc_2:* = null;
            _loc_2 = this._748017946m_UIInputHandler;
            if (_loc_2 !== param1)
            {
                this._748017946m_UIInputHandler = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "m_UIInputHandler", _loc_2, param1));
            }
            return;
        }// end function

        private function onConnectionError(event:ConnectionEvent) : void
        {
            if (event.errorType == ERR_COULD_NOT_CONNECT && this.m_FailedConnectionRescheduler.shouldAttemptReconnect())
            {
                this.onConnectionLoginWait(this.m_FailedConnectionRescheduler.buildEventForReconnectionAndIncreaseRetries());
                return;
            }
            this.m_FailedConnectionRescheduler.reset();
            visible = false;
            this.saveLocalData();
            this.saveOptions();
            SessiondumpMouseShield.getInstance().hide();
            var _loc_2:* = new MessageWidget();
            _loc_2.buttonFlags = PopUpBase.BUTTON_OKAY;
            _loc_2.keyboardFlags = PopUpBase.KEY_ENTER;
            _loc_2.message = resourceManager.getString(BUNDLE, "DLG_ERROR_TEXT_GENERAL", [event.message]);
            _loc_2.title = resourceManager.getString(BUNDLE, "DLG_ERROR_TITLE");
            _loc_2.addEventListener(CloseEvent.CLOSE, this.onCloseError);
            _loc_2.show();
            return;
        }// end function

        private function onSecondaryTimer(event:TimerEvent) : void
        {
            var _loc_2:* = s_GetTibiaTimer();
            if (_loc_2 > this.m_CurrentOptionsLastUpload + this.m_CurrentOptionsUploadErrorDelay + OPTIONS_SAVE_INTERVAL)
            {
                this.saveOptions();
            }
            this.m_SecondaryTimestamp = _loc_2;
            return;
        }// end function

        private function onConnectionCreated(event:ConnectionEvent) : void
        {
            var _loc_3:* = null;
            var _loc_2:* = this.s_GetConnection();
            if (_loc_2 is Connection)
            {
                if (this.m_CreatureStorage == null || this.m_CreatureStorage is CreatureStorage == false)
                {
                    this.m_CreatureStorage = new CreatureStorage();
                }
                SessiondumpMouseShield.getInstance().hide();
            }
            else if (_loc_2 is Sessiondump)
            {
                _loc_3 = _loc_2 as Sessiondump;
                if (this.m_CreatureStorage == null || this.m_CreatureStorage is SessiondumpCreatureStorage == false)
                {
                    this.m_CreatureStorage = new SessiondumpCreatureStorage();
                }
                SessiondumpMouseShield.getInstance().show();
            }
            this.m_Player = this.m_CreatureStorage.player;
            if (s_TutorialData != null)
            {
                this.m_Player.name = s_TutorialData["player-name"] as String;
            }
            this.m_PremiumManager = new PremiumManager(this.m_Player);
            this.m_UIStatusWidget.player = this.m_Player;
            this.m_UIWorldMapWidget.creatureStorage = this.m_CreatureStorage;
            this.m_UIWorldMapWidget.player = this.m_Player;
            this.m_UIWorldMapWidget.worldMapStorage = this.m_WorldMapStorage;
            this.m_Communication = new Communication(this.m_Connection, this.m_AppearanceStorage, this.m_ChatStorage, this.m_ContainerStorage, this.m_CreatureStorage, this.m_MiniMapStorage, this.m_Player, this.m_SpellStorage, this.m_WorldMapStorage);
            return;
        }// end function

        public function set isFocusNotifierEnabled(param1:Boolean) : void
        {
            if (param1 != this.m_EnableFocusNotifier)
            {
                this.m_EnableFocusNotifier = param1;
                if (!this.m_EnableFocusNotifier)
                {
                    FocusNotifier.getInstance().hide();
                }
            }
            return;
        }// end function

        private function onConnectionLoginError(event:ConnectionEvent) : void
        {
            visible = false;
            this.saveLocalData();
            this.saveOptions();
            var _loc_2:* = new MessageWidget();
            _loc_2.buttonFlags = PopUpBase.BUTTON_OKAY;
            _loc_2.keyboardFlags = PopUpBase.KEY_ENTER;
            _loc_2.message = resourceManager.getString(BUNDLE, "DLG_LOGINERROR_TEXT", [event.message]);
            _loc_2.title = resourceManager.getString(BUNDLE, "DLG_LOGINERROR_TITLE");
            _loc_2.addEventListener(CloseEvent.CLOSE, this.onCloseError);
            _loc_2.show();
            return;
        }// end function

        public function get m_UIBottomContainer() : HBox
        {
            return this._967396880m_UIBottomContainer;
        }// end function

        private function _Tibia_StatusWidget1_i() : StatusWidget
        {
            var _loc_1:* = new StatusWidget();
            this.m_UIStatusWidget = _loc_1;
            _loc_1.id = "m_UIStatusWidget";
            if (!_loc_1.document)
            {
                _loc_1.document = this;
            }
            return _loc_1;
        }// end function

        private function onCloseError(event:CloseEvent) : void
        {
            var _loc_2:* = new GameEvent(GameEvent.CLOSE, true, false);
            dispatchEvent(_loc_2);
            return;
        }// end function

        public function get m_UIWorldMapWindow() : GameWindowContainer
        {
            return this._1313911232m_UIWorldMapWindow;
        }// end function

        protected function releaseConnection() : void
        {
            if (this.m_Connection != null)
            {
                this.m_Connection.removeEventListener(ConnectionEvent.PENDING, this.onConnectionPending);
                this.m_Connection.removeEventListener(ConnectionEvent.GAME, this.onConnectionGame);
                this.m_Connection.removeEventListener(ConnectionEvent.CONNECTING, this.onConnectionConnecting);
                this.m_Connection.removeEventListener(ConnectionEvent.CONNECTION_LOST, this.onConnectionLost);
                this.m_Connection.removeEventListener(ConnectionEvent.CONNECTION_RECOVERED, this.onConnectionRecovered);
                this.m_Connection.removeEventListener(ConnectionEvent.DEAD, this.onConnectionDeath);
                this.m_Connection.removeEventListener(ConnectionEvent.DISCONNECTED, this.onConnectionDisconnected);
                this.m_Connection.removeEventListener(ConnectionEvent.ERROR, this.onConnectionError);
                this.m_Connection.removeEventListener(ConnectionEvent.LOGINADVICE, this.onConnectionLoginAdvice);
                this.m_Connection.removeEventListener(ConnectionEvent.LOGINERROR, this.onConnectionLoginError);
                this.m_Connection.removeEventListener(ConnectionEvent.LOGINWAIT, this.onConnectionLoginWait);
                this.m_Connection.disconnect(false);
                this.m_Connection = null;
            }
            return;
        }// end function

        public function get m_UISideBarC() : SideBarWidget
        {
            return this._64278963m_UISideBarC;
        }// end function

        public function get m_UISideBarA() : SideBarWidget
        {
            return this._64278965m_UISideBarA;
        }// end function

        public function get m_UISideBarB() : SideBarWidget
        {
            return this._64278964m_UISideBarB;
        }// end function

        private function onConnectionDeath(event:ConnectionEvent) : void
        {
            visible = true;
            this.m_CharacterDeath = true;
            var _loc_2:* = event.data is Object ? (event.data as Object) : ({type:ConnectionEvent.DEATH_REGULAR, fairFightFactor:0});
            var _loc_3:* = new DeathMessageWidget();
            _loc_3.title = resourceManager.getString(BUNDLE, "DLG_DEAD_TITLE");
            if (_loc_2.type == ConnectionEvent.DEATH_UNFAIR)
            {
                _loc_3.message = resourceManager.getString(BUNDLE, "DLG_DEAD_TEXT_UNFAIR", [100 - _loc_2.fairFightFactor]);
            }
            else if (_loc_2.type == ConnectionEvent.DEATH_BLESSED)
            {
                _loc_3.message = resourceManager.getString(BUNDLE, "DLG_DEAD_TEXT_BLESSED");
            }
            else if (_loc_2.type == ConnectionEvent.DEATH_NOPENALTY)
            {
                _loc_3.message = resourceManager.getString(BUNDLE, "DLG_DEAD_TEXT_NOPENALTY");
            }
            else
            {
                _loc_3.message = resourceManager.getString(BUNDLE, "DLG_DEAD_TEXT_FAIR");
            }
            _loc_3.addEventListener(CloseEvent.CLOSE, this.onCloseDeath);
            _loc_3.show();
            return;
        }// end function

        public function get m_UISideBarD() : SideBarWidget
        {
            return this._64278962m_UISideBarD;
        }// end function

        public function saveOptions() : void
        {
            if (this.m_Options != null)
            {
                this.m_ChatStorage.saveChannels();
                if (this.m_CurrentOptionsAsset != null && !this.m_CurrentOptionsUploading && this.m_CurrentOptionsDirty)
                {
                    this.m_CurrentOptionsAsset.upload(this.options.marshall(), this.m_SessionKey);
                    this.m_CurrentOptionsUploading = true;
                }
            }
            return;
        }// end function

        protected function onDividerRelease(event:DividerEvent) : void
        {
            var _loc_2:* = NaN;
            var _loc_3:* = NaN;
            if (this.options != null && this.m_UIGameWindow != null && this.m_UIChatWidget != null)
            {
                _loc_2 = this.m_UIGameWindow.height;
                _loc_3 = this.m_UIChatWidget.height;
                if (!isNaN(this.m_UIChatWidget.minHeight) && Math.abs(_loc_3 - this.m_UIChatWidget.minHeight) < 0.01)
                {
                    this.options.generalUIGameWindowHeight = 100;
                }
                else if (!isNaN(this.m_UIGameWindow.minHeight) && Math.abs(_loc_2 - this.m_UIGameWindow.minHeight) < 0.01)
                {
                    this.options.generalUIGameWindowHeight = 0;
                }
                else
                {
                    this.options.generalUIGameWindowHeight = _loc_2 * 100 / (_loc_2 + _loc_3);
                }
            }
            return;
        }// end function

        public function ___Tibia_Application1_preinitialize(event:FlexEvent) : void
        {
            this.onPreinitialise(event);
            return;
        }// end function

        public function set m_UIOuterRootContainer(param1:DividedBox) : void
        {
            var _loc_2:* = null;
            _loc_2 = this._1568861366m_UIOuterRootContainer;
            if (_loc_2 !== param1)
            {
                this._1568861366m_UIOuterRootContainer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "m_UIOuterRootContainer", _loc_2, param1));
            }
            return;
        }// end function

        private function _Tibia_GameWindowContainer1_i() : GameWindowContainer
        {
            var _loc_1:* = new GameWindowContainer();
            this.m_UIWorldMapWindow = _loc_1;
            _loc_1.percentWidth = 100;
            _loc_1.percentHeight = 100;
            _loc_1.center = this._Tibia_WorldMapWidget1_i();
            _loc_1.top = this._Tibia_HActionBarWidget1_i();
            _loc_1.bottom = this._Tibia_HActionBarWidget2_i();
            _loc_1.left = this._Tibia_VActionBarWidget1_i();
            _loc_1.right = this._Tibia_VActionBarWidget2_i();
            _loc_1.id = "m_UIWorldMapWindow";
            if (!_loc_1.document)
            {
                _loc_1.document = this;
            }
            return _loc_1;
        }// end function

        private function onCloseDeath(event:CloseEvent) : void
        {
            if (event.detail == PopUpBase.BUTTON_OKAY || event.detail == DeathMessageWidget.EXTRA_BUTTON_STORE)
            {
                if (this.m_Communication != null)
                {
                    this.m_Communication.sendCENTERWORLD();
                    if (event.detail == DeathMessageWidget.EXTRA_BUTTON_STORE)
                    {
                        IngameShopManager.getInstance().openShopWindow(true, IngameShopProduct.SERVICE_TYPE_BLESSINGS, true);
                    }
                }
            }
            else
            {
                this.m_ConnectionDataPending = -1;
                if (this.m_Communication != null)
                {
                    this.m_Communication.disconnect(false);
                }
            }
            return;
        }// end function

        public function get options() : OptionsStorage
        {
            return this.m_Options;
        }// end function

        public function set m_UIActionBarRight(param1:VActionBarWidget) : void
        {
            var _loc_2:* = null;
            _loc_2 = this._2043305115m_UIActionBarRight;
            if (_loc_2 !== param1)
            {
                this._2043305115m_UIActionBarRight = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "m_UIActionBarRight", _loc_2, param1));
            }
            return;
        }// end function

        public function get m_UIGameWindow() : GridContainer
        {
            return this._1404294856m_UIGameWindow;
        }// end function

        public function get m_UICenterColumn() : CustomDividedBox
        {
            return this._1356021457m_UICenterColumn;
        }// end function

        public function get m_UISideBarToggleLeft() : ToggleBar
        {
            return this._2056921391m_UISideBarToggleLeft;
        }// end function

        public function get m_UIInputHandler() : InputHandler
        {
            return this._748017946m_UIInputHandler;
        }// end function

        private function onUploadOptionsError(event:ErrorEvent) : void
        {
            this.m_CurrentOptionsUploading = false;
            if (event.errorID == -1)
            {
                this.m_CurrentOptionsUploadErrorDelay = 1000 * 60 * 60 * 24 * 365;
            }
            else
            {
                this.m_CurrentOptionsUploadErrorDelay = this.m_CurrentOptionsUploadErrorDelay == 0 ? (2000) : (this.m_CurrentOptionsUploadErrorDelay * 2);
            }
            return;
        }// end function

        private function _Tibia_WorldMapWidget1_i() : WorldMapWidget
        {
            var _loc_1:* = new WorldMapWidget();
            this.m_UIWorldMapWidget = _loc_1;
            _loc_1.id = "m_UIWorldMapWidget";
            if (!_loc_1.document)
            {
                _loc_1.document = this;
            }
            return _loc_1;
        }// end function

        public function unload() : void
        {
            if (this.m_AppearanceStorage != null)
            {
                this.m_AppearanceStorage.removeEventListener(Event.COMPLETE, this.onAppearancesLoadComplete);
                this.m_AppearanceStorage.removeEventListener(ErrorEvent.ERROR, this.onAppearancesLoadError);
                this.m_AppearanceStorage.reset();
            }
            if (this.m_ChatStorage != null)
            {
                this.m_ChatStorage.reset();
            }
            if (this.m_ContainerStorage != null)
            {
                this.m_ContainerStorage.reset();
            }
            if (this.m_CreatureStorage != null)
            {
                this.m_CreatureStorage.reset();
            }
            if (this.m_MiniMapStorage != null)
            {
                this.m_MiniMapStorage.reset();
            }
            if (this.m_Player != null)
            {
                this.m_Player.reset();
            }
            if (this.m_SpellStorage != null)
            {
                this.m_SpellStorage.reset();
            }
            if (this.m_WorldMapStorage != null)
            {
                this.m_WorldMapStorage.reset();
            }
            this.releaseConnection();
            if (this.m_SeconaryTimer != null)
            {
                this.m_SeconaryTimer.stop();
            }
            if (this.m_UIInputHandler != null)
            {
                this.m_UIInputHandler.dispose();
            }
            CursorManager.getInstance().removeAllCursors();
            if (ContextMenuBase.getCurrent() != null)
            {
                ContextMenuBase.getCurrent().hide();
            }
            FocusNotifier.getInstance().hide();
            PopUpQueue.getInstance().hideByPriority(int.MAX_VALUE);
            return;
        }// end function

        public function set m_UIStatusWidget(param1:StatusWidget) : void
        {
            var _loc_2:* = null;
            _loc_2 = this._228925540m_UIStatusWidget;
            if (_loc_2 !== param1)
            {
                this._228925540m_UIStatusWidget = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "m_UIStatusWidget", _loc_2, param1));
            }
            return;
        }// end function

        private function _Tibia_HActionBarWidget1_i() : HActionBarWidget
        {
            var _loc_1:* = new HActionBarWidget();
            this.m_UIActionBarTop = _loc_1;
            _loc_1.styleName = "actionBarTop";
            _loc_1.id = "m_UIActionBarTop";
            BindingManager.executeBindings(this, "m_UIActionBarTop", this.m_UIActionBarTop);
            if (!_loc_1.document)
            {
                _loc_1.document = this;
            }
            return _loc_1;
        }// end function

        public function get m_UIStatusWidget() : StatusWidget
        {
            return this._228925540m_UIStatusWidget;
        }// end function

        private function onConnectionGame(event:ConnectionEvent) : void
        {
            if (this.m_ChatStorage != null)
            {
                this.m_ChatStorage.resetChannelActivationTimeout();
            }
            PopUpQueue.getInstance().hideByPriority(PopUpBase.DEFAULT_PRIORITY);
            if (ContextMenuBase.getCurrent() != null)
            {
                ContextMenuBase.getCurrent().hide();
            }
            visible = true;
            this.updateCombatTactics();
            this.m_CharacterDeath = false;
            return;
        }// end function

        public function setAssetProvider(param1:IAssetProvider) : void
        {
            if (param1 == null)
            {
                throw new Error("Tibia.setAssetProvider: asset provider must not be null.");
            }
            this.m_AssetProvider = param1;
            var _loc_2:* = this.m_TutorialMode ? (this.m_AssetProvider.getDefaultOptionsTutorial()) : (this.m_AssetProvider.getDefaultOptions());
            this.m_DefaultOptionsAsset = _loc_2;
            if (_loc_2 != null)
            {
                param1.removeAsset(_loc_2);
            }
            if (!this.m_TutorialMode)
            {
                this.setCurrentOptionsFromAssets(param1);
            }
            this.m_AppearanceStorage.setAssetProvider(param1);
            return;
        }// end function

        public static function s_GetAppearanceStorage() : AppearanceStorage
        {
            return (application as ).m_AppearanceStorage;
        }// end function

        public static function s_GetInstance() : Tibia
        {
            return application as ;
        }// end function

        public static function s_GetChatStorage() : ChatStorage
        {
            return (application as ).m_ChatStorage;
        }// end function

        public static function s_GetSecondaryTimer() : Timer
        {
            return (application as ).m_SeconaryTimer;
        }// end function

        public static function get s_GameActionFactory() : GameActionFactory
        {
            return (application as ).m_GameActionFactory;
        }// end function

        public static function s_GetMiniMapStorage() : MiniMapStorage
        {
            return (application as ).m_MiniMapStorage;
        }// end function

        public static function s_SetOptions(param1:OptionsStorage) : void
        {
            var _loc_2:* = application as ;
            if (_loc_2 != null)
            {
                _loc_2.options = param1;
            }
            return;
        }// end function

        public static function s_GetContainerStorage() : ContainerStorage
        {
            return (application as ).m_ContainerStorage;
        }// end function

        public static function s_GetStatusWidget() : StatusWidget
        {
            return (application as ).m_UIStatusWidget;
        }// end function

        public static function s_GetPremiumManager() : PremiumManager
        {
            return (application as ).m_PremiumManager;
        }// end function

        public static function s_GetUIEffectsManager() : UIEffectsManager
        {
            return (application as ).m_UIEffectsManager;
        }// end function

        public static function s_GetCreatureStorage() : CreatureStorage
        {
            return (application as ).m_CreatureStorage;
        }// end function

        public static function set s_TibiaTimerFactor(param1:Number) : void
        {
            if (!isNaN(param1))
            {
                s_LastTibiaFactorChangeTibiaTimestamp = s_GetTibiaTimer();
                s_LastTibiaFactorChangeRealTimestamp = getTimer();
                s_InternalTibiaTimerFactor = param1;
            }
            return;
        }// end function

        public static function set s_GameActionFactory(param1:GameActionFactory) : void
        {
            (application as ).m_GameActionFactory = param1;
            return;
        }// end function

        public static function s_GetFrameFlash() : Boolean
        {
            return (int(Tibia.s_FrameTibiaTimestamp / 300) & 1) != 0;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            Tibia._watcherSetupUtil = param1;
            return;
        }// end function

        public static function get s_TutorialMode() : Boolean
        {
            return (application as ).m_TutorialMode;
        }// end function

        public static function get s_TutorialData() : Object
        {
            return (application as ).m_TutorialData;
        }// end function

        public static function s_GetCommunication() : Communication
        {
            return (application as ).m_Communication;
        }// end function

        public static function s_GetInputHandler() : InputHandler
        {
            return (application as ).m_UIInputHandler;
        }// end function

        public static function s_GetAssetProvider() : IAssetProvider
        {
            return (application as ).m_AssetProvider;
        }// end function

        public static function get s_TibiaTimerFactor() : Number
        {
            return s_InternalTibiaTimerFactor;
        }// end function

        public static function s_GetSpellStorage() : SpellStorage
        {
            return (application as ).m_SpellStorage;
        }// end function

        public static function s_GetOptions() : OptionsStorage
        {
            return (application as ).m_Options;
        }// end function

        public static function s_GetChatWidget() : ChatWidget
        {
            return (application as ).m_UIChatWidget;
        }// end function

        public static function s_GetWorldMapStorage() : WorldMapStorage
        {
            return (application as ).m_WorldMapStorage;
        }// end function

        public static function s_GetConnection() : IServerConnection
        {
            return (application as ).m_Connection;
        }// end function

        public static function s_GetPlayer() : Player
        {
            return (application as ).m_Player;
        }// end function

        public static function s_GetTibiaTimer() : int
        {
            if (s_LastTibiaFactorChangeRealTimestamp == 0)
            {
                s_LastTibiaFactorChangeRealTimestamp = getTimer();
                s_LastTibiaFactorChangeTibiaTimestamp = s_LastTibiaTimestamp;
            }
            var _loc_1:* = getTimer() - s_LastTibiaFactorChangeRealTimestamp;
            s_LastTibiaTimestamp = s_LastTibiaFactorChangeTibiaTimestamp + _loc_1 * s_InternalTibiaTimerFactor;
            return s_LastTibiaTimestamp;
        }// end function

        public static function s_GetSessionKey() : String
        {
            return (application as ).m_SessionKey;
        }// end function

    }
}
