﻿package tibia.creatures.unjustPointsWidgetClasses
{
    import flash.display.*;
    import flash.geom.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.utils.*;
    import shared.utility.*;
    import tibia.creatures.*;
    import tibia.sidebar.sideBarWidgetClasses.*;

    public class UnjustPointsWidgetView extends WidgetView
    {
        private var m_UIOpenSituationLabel:Label;
        private var m_Player:Player = null;
        private var m_UncommitedSkullDisplay:Boolean = false;
        private var m_UIConstructed:Boolean = false;
        private var m_UncommitedUnjustPointsUpdate:Boolean = false;
        private var m_UISkullBox:HBox;
        private var m_BarRenderers:Array;
        private var m_UncommitedOpenPvpSituations:Boolean = false;
        static const BLESSING_SPARK_OF_PHOENIX:int = BLESSING_WISDOM_OF_SOLITUDE << 1;
        static const PARTY_LEADER_SEXP_ACTIVE:int = 6;
        static const PARTY_MAX_FLASHING_TIME:uint = 5000;
        static const STATE_PZ_BLOCK:int = 13;
        static const PARTY_MEMBER_SEXP_ACTIVE:int = 5;
        private static const SKULL_DISPLAY_POINT:Point = new Point(8, 25);
        static const PK_REVENGE:int = 6;
        static const SKILL_FIGHTCLUB:int = 10;
        static const NPC_SPEECH_TRAVEL:uint = 5;
        static const RISKINESS_DANGEROUS:int = 1;
        static const NUM_PVP_HELPERS_FOR_RISKINESS_DANGEROUS:uint = 5;
        static const PK_PARTYMODE:int = 2;
        static const RISKINESS_NONE:int = 0;
        static const GUILD_NONE:int = 0;
        static const PARTY_MEMBER:int = 2;
        static const STATE_DRUNK:int = 3;
        static const PARTY_OTHER:int = 11;
        static const SKILL_EXPERIENCE:int = 0;
        private static const OPEN_SITUATIONS_POINT:Point = new Point(3, 10);
        static const TYPE_SUMMON_OTHERS:int = 4;
        static const BLESSING_FIRE_OF_SUNS:int = BLESSING_EMBRACE_OF_TIBIA << 1;
        static const SKILL_STAMINA:int = 17;
        static const TYPE_NPC:int = 2;
        static const STATE_NONE:int = -1;
        static const PARTY_MEMBER_SEXP_INACTIVE_GUILTY:int = 7;
        static const SKILL_FIGHTSHIELD:int = 8;
        static const SKILL_MANA_LEECH_CHANCE:int = 23;
        static const SKILL_FIGHTDISTANCE:int = 9;
        static const PK_EXCPLAYERKILLER:int = 5;
        static const NUM_CREATURES:int = 1300;
        static const NUM_TRAPPERS:int = 8;
        static const SKILL_FED:int = 15;
        static const SKILL_MAGLEVEL:int = 2;
        static const SKILL_FISHING:int = 14;
        private static const WIDGET_VIEW_WIDTH:Number = 176;
        static const SKILL_HITPOINTS_PERCENT:int = 3;
        static const STATE_BLEEDING:int = 15;
        static const PK_PLAYERKILLER:int = 4;
        static const PROFESSION_MASK_KNIGHT:int = 1 << PROFESSION_KNIGHT;
        static const STATE_DAZZLED:int = 10;
        static const SUMMON_OTHERS:int = 2;
        static const SKILL_NONE:int = -1;
        static const NPC_SPEECH_TRADER:uint = 2;
        private static const BUNDLE:String = "UnjustPointsWidget";
        static const GUILD_MEMBER:int = 4;
        static const PROFESSION_NONE:int = 0;
        private static const WIDGET_VIEW_HEIGHT:Number = 52;
        static const MAX_NAME_LENGTH:int = 29;
        static const PARTY_LEADER:int = 1;
        static const STATE_PZ_ENTERED:int = 14;
        static const SKILL_CARRYSTRENGTH:int = 7;
        static const PK_ATTACKER:int = 1;
        static const STATE_ELECTRIFIED:int = 2;
        static const SKILL_FIGHTSWORD:int = 11;
        static const GUILD_WAR_NEUTRAL:int = 3;
        static const STATE_DROWNING:int = 8;
        static const SKILL_LIFE_LEECH_AMOUNT:int = 22;
        static const PARTY_MEMBER_SEXP_OFF:int = 3;
        static const PROFESSION_MASK_DRUID:int = 1 << PROFESSION_DRUID;
        static const PARTY_MEMBER_SEXP_INACTIVE_INNOCENT:int = 9;
        static const GUILD_WAR_ALLY:int = 1;
        static const PK_NONE:int = 0;
        static const PROFESSION_SORCERER:int = 3;
        static const STATE_SLOW:int = 5;
        static const PARTY_NONE:int = 0;
        static const SKILL_CRITICAL_HIT_CHANCE:int = 19;
        static const SUMMON_OWN:int = 1;
        static const PROFESSION_MASK_NONE:int = 1 << PROFESSION_NONE;
        static const TYPE_SUMMON_OWN:int = 3;
        static const PROFESSION_MASK_SORCERER:int = 1 << PROFESSION_SORCERER;
        static const PROFESSION_KNIGHT:int = 1;
        static const NPC_SPEECH_QUESTTRADER:uint = 4;
        static const PARTY_LEADER_SEXP_INACTIVE_GUILTY:int = 8;
        static const BLESSING_WISDOM_OF_SOLITUDE:int = BLESSING_FIRE_OF_SUNS << 1;
        static const PROFESSION_PALADIN:int = 2;
        static const SKILL_FIGHTAXE:int = 12;
        static const SKILL_CRITICAL_HIT_DAMAGE:int = 20;
        static const PARTY_LEADER_SEXP_OFF:int = 4;
        static const SKILL_SOULPOINTS:int = 16;
        static const BLESSING_EMBRACE_OF_TIBIA:int = BLESSING_SPIRITUAL_SHIELDING << 1;
        static const BLESSING_TWIST_OF_FATE:int = BLESSING_SPARK_OF_PHOENIX << 1;
        static const SKILL_MANA_LEECH_AMOUNT:int = 24;
        static const STATE_FAST:int = 6;
        static const BLESSING_NONE:int = 0;
        static const GUILD_OTHER:int = 5;
        static const TYPE_PLAYER:int = 0;
        static const SKILL_HITPOINTS:int = 4;
        static const SKILL_OFFLINETRAINING:int = 18;
        static const STATE_MANA_SHIELD:int = 4;
        static const SKILL_MANA:int = 5;
        static const PROFESSION_MASK_PALADIN:int = 1 << PROFESSION_PALADIN;
        static const STATE_CURSED:int = 11;
        static const BLESSING_ADVENTURER:int = 1;
        static const STATE_FREEZING:int = 9;
        static const PARTY_LEADER_SEXP_INACTIVE_INNOCENT:int = 10;
        static const STATE_POISONED:int = 0;
        static const SKILL_LIFE_LEECH_CHANCE:int = 21;
        static const TYPE_MONSTER:int = 1;
        static const STATE_BURNING:int = 1;
        static const SKILL_FIGHTFIST:int = 13;
        static const PK_AGGRESSOR:int = 3;
        static const GUILD_WAR_ENEMY:int = 2;
        static const SKILL_LEVEL:int = 1;
        static const STATE_STRENGTHENED:int = 12;
        static const STATE_HUNGRY:int = 31;
        static const PROFESSION_MASK_ANY:int = PROFESSION_MASK_DRUID | PROFESSION_MASK_KNIGHT | PROFESSION_MASK_PALADIN | PROFESSION_MASK_SORCERER;
        static const SUMMON_NONE:int = 0;
        static const PROFESSION_DRUID:int = 4;
        static const STATE_FIGHTING:int = 7;
        static const NPC_SPEECH_QUEST:uint = 3;
        static const NPC_SPEECH_NORMAL:uint = 1;
        static const BLESSING_SPIRITUAL_SHIELDING:int = BLESSING_ADVENTURER << 1;
        static const NPC_SPEECH_NONE:uint = 0;
        static const PK_MAX_FLASHING_TIME:uint = 5000;
        static const SKILL_GOSTRENGTH:int = 6;

        public function UnjustPointsWidgetView()
        {
            this.m_BarRenderers = [{mode:UnjustPointsBarRenderer.SCALE_DAY, toolTip:"TOOLTIP_UNJUST_POINTS_24H", marks:0, left:57, top:2, width:121, height:15, renderer:null}, {mode:UnjustPointsBarRenderer.SCALE_WEEK, toolTip:"TOOLTIP_UNJUST_POINTS_7D", marks:0, left:57, top:19, width:121, height:15, renderer:null}, {mode:UnjustPointsBarRenderer.SCALE_MONTH, toolTip:"TOOLTIP_UNJUST_POINTS_30D", marks:0, left:57, top:36, width:121, height:15, renderer:null}];
            titleText = resourceManager.getString(BUNDLE, "TITLE");
            verticalScrollPolicy = ScrollPolicy.OFF;
            horizontalScrollPolicy = ScrollPolicy.OFF;
            this.m_Player = Tibia.s_GetCreatureStorage().player;
            if (this.m_Player != null)
            {
                this.m_Player.addEventListener(PropertyChangeEvent.PROPERTY_CHANGE, this.onPlayerPropertyChange);
            }
            else
            {
                throw new Error("UnjustPointsWidgetView: Player is null");
            }
            return;
        }// end function

        private function createSkullDisplay() : void
        {
            var _loc_1:* = null;
            var _loc_2:* = null;
            var _loc_3:* = null;
            var _loc_4:* = null;
            var _loc_5:* = null;
            var _loc_6:* = null;
            var _loc_7:* = null;
            this.m_UISkullBox.removeAllChildren();
            if (this.m_Player.pkFlag == PK_PLAYERKILLER || this.m_Player.pkFlag == PK_EXCPLAYERKILLER)
            {
                _loc_1 = new Rectangle();
                _loc_2 = CreatureStorage.s_GetPKFlag(this.m_Player.pkFlag, _loc_1);
                _loc_3 = new BitmapData(_loc_1.width, _loc_1.height);
                _loc_3.copyPixels(_loc_2, _loc_1, new Point(0, 0));
                _loc_4 = new Bitmap(_loc_3);
                _loc_5 = new Image();
                _loc_5.source = _loc_4;
                _loc_5.toolTip = resourceManager.getString(BUNDLE, "TOOLTIP_REMAINING_SKULLS");
                _loc_6 = new Label();
                _loc_7 = StringHelper.s_PadWithChars(new String(this.m_Player.unjustPoints.skullDuration), "  ");
                _loc_6.text = StringUtil.substitute(resourceManager.getString(BUNDLE, "LABEL_REMAINING_SKULLS"), _loc_7);
                _loc_6.toolTip = resourceManager.getString(BUNDLE, "TOOLTIP_REMAINING_SKULLS");
                this.m_UISkullBox.addChild(_loc_5);
                this.m_UISkullBox.addChild(_loc_6);
            }
            return;
        }// end function

        override protected function commitProperties() : void
        {
            super.commitProperties();
            if (this.m_UncommitedSkullDisplay)
            {
                this.createSkullDisplay();
                this.m_UncommitedSkullDisplay = false;
            }
            if (this.m_UncommitedOpenPvpSituations)
            {
                this.updateOpenPvPSituations();
                this.m_UncommitedOpenPvpSituations = false;
            }
            if (this.m_UncommitedUnjustPointsUpdate)
            {
                this.updateBarValues(this.m_Player.unjustPoints);
                this.m_UncommitedUnjustPointsUpdate = false;
            }
            return;
        }// end function

        private function updateBarValues(param1:UnjustPointsInfo) : void
        {
            if (this.m_BarRenderers[0] != null)
            {
                this.m_BarRenderers[0].renderer.value = param1.progressDay;
                this.m_BarRenderers[0].renderer.barColor = UnjustPointsBarRenderer.getBarColorForRemainingKills(param1.killsRemainingDay);
                this.m_BarRenderers[0].renderer.toolTip = StringUtil.substitute(resourceManager.getString(BUNDLE, this.m_BarRenderers[0].toolTip), param1.killsRemainingDay, param1.killsRemainingDay != 1 ? ("s") : (""));
            }
            if (this.m_BarRenderers[1] != null)
            {
                this.m_BarRenderers[1].renderer.value = param1.progressWeek;
                this.m_BarRenderers[1].renderer.barColor = UnjustPointsBarRenderer.getBarColorForRemainingKills(param1.killsRemainingWeek);
                this.m_BarRenderers[1].renderer.toolTip = StringUtil.substitute(resourceManager.getString(BUNDLE, this.m_BarRenderers[1].toolTip), param1.killsRemainingWeek, param1.killsRemainingWeek != 1 ? ("s") : (""));
            }
            if (this.m_BarRenderers[2] != null)
            {
                this.m_BarRenderers[2].renderer.value = param1.progressMonth;
                this.m_BarRenderers[2].renderer.barColor = UnjustPointsBarRenderer.getBarColorForRemainingKills(param1.killsRemainingMonth);
                this.m_BarRenderers[2].renderer.toolTip = StringUtil.substitute(resourceManager.getString(BUNDLE, this.m_BarRenderers[2].toolTip), param1.killsRemainingMonth, param1.killsRemainingMonth != 1 ? ("s") : (""));
            }
            return;
        }// end function

        override protected function createChildren() : void
        {
            if (!this.m_UIConstructed)
            {
                super.createChildren();
                this.m_UISkullBox = new HBox();
                this.m_UISkullBox.setStyle("verticalAlign", "middle");
                this.createProgressBars();
                this.m_UIConstructed = true;
            }
            return;
        }// end function

        override protected function measure() : void
        {
            super.measure();
            var _loc_1:* = viewMetricsAndPadding;
            var _loc_2:* = _loc_1.left + WIDGET_VIEW_WIDTH + _loc_1.right;
            measuredWidth = _loc_1.left + WIDGET_VIEW_WIDTH + _loc_1.right;
            measuredMinWidth = _loc_2;
            var _loc_2:* = _loc_1.top + WIDGET_VIEW_HEIGHT + _loc_1.bottom;
            measuredHeight = _loc_1.top + WIDGET_VIEW_HEIGHT + _loc_1.bottom;
            measuredMinHeight = _loc_2;
            return;
        }// end function

        private function onPlayerPropertyChange(event:PropertyChangeEvent) : void
        {
            if (event.property == "pkFlag")
            {
                this.m_UncommitedSkullDisplay = true;
                invalidateProperties();
            }
            else if (event.property == "openPvpSituations")
            {
                this.m_UncommitedOpenPvpSituations = true;
                invalidateProperties();
            }
            else if (event.property == "unjustPoints")
            {
                this.m_UncommitedUnjustPointsUpdate = true;
                this.m_UncommitedSkullDisplay = true;
                invalidateProperties();
            }
            return;
        }// end function

        private function createProgressBars() : void
        {
            var _loc_1:* = null;
            var _loc_3:* = null;
            _loc_1 = viewMetricsAndPadding;
            this.m_UIOpenSituationLabel = new Label();
            this.m_UIOpenSituationLabel.toolTip = resourceManager.getString(BUNDLE, "TOOLTIP_OPEN_SITUATIONS");
            this.updateOpenPvPSituations();
            rawChildren.addChild(this.m_UIOpenSituationLabel);
            this.m_UIOpenSituationLabel.visible = true;
            this.m_UIOpenSituationLabel.move(_loc_1.left + OPEN_SITUATIONS_POINT.x, _loc_1.top + OPEN_SITUATIONS_POINT.y);
            this.m_UIOpenSituationLabel.setActualSize(100, 15);
            rawChildren.addChild(this.m_UISkullBox);
            this.m_UISkullBox.visible = true;
            this.m_UISkullBox.move(_loc_1.left + SKULL_DISPLAY_POINT.x, _loc_1.top + SKULL_DISPLAY_POINT.y);
            this.m_UISkullBox.setActualSize(100, 15);
            this.createSkullDisplay();
            var _loc_2:* = 0;
            while (_loc_2 < this.m_BarRenderers.length)
            {
                
                _loc_3 = new UnjustPointsBarRenderer();
                _loc_3.marks = this.m_BarRenderers[_loc_2].marks;
                _loc_3.data = this.m_Player;
                this.m_BarRenderers[_loc_2].renderer = _loc_3;
                rawChildren.addChild(_loc_3);
                _loc_3.visible = true;
                _loc_3.move(_loc_1.left + this.m_BarRenderers[_loc_2].left, _loc_1.top + this.m_BarRenderers[_loc_2].top);
                _loc_3.setActualSize(this.m_BarRenderers[_loc_2].width, this.m_BarRenderers[_loc_2].height);
                _loc_2++;
            }
            this.updateBarValues(this.m_Player.unjustPoints);
            return;
        }// end function

        private function updateOpenPvPSituations() : void
        {
            var _loc_1:* = StringHelper.s_PadWithChars(new String(this.m_Player.openPvpSituations), "  ");
            this.m_UIOpenSituationLabel.text = StringUtil.substitute(resourceManager.getString(BUNDLE, "LABEL_OPEN_SITUATIONS"), _loc_1);
            return;
        }// end function

        override protected function updateDisplayList(param1:Number, param2:Number) : void
        {
            super.updateDisplayList(param1, param2);
            var _loc_3:* = !(widgetClosed || widgetCollapsed);
            this.m_UIOpenSituationLabel.visible = _loc_3;
            this.m_UISkullBox.visible = _loc_3;
            var _loc_4:* = 0;
            while (_loc_4 < this.m_BarRenderers.length)
            {
                
                if (this.m_BarRenderers[_loc_4].renderer != null)
                {
                    this.m_BarRenderers[_loc_4].renderer.visible = _loc_3;
                }
                _loc_4++;
            }
            return;
        }// end function

        public function releaseInstance() : void
        {
            super.releaseInstance();
            if (this.m_Player != null)
            {
                this.m_Player.removeEventListener(PropertyChangeEvent.PROPERTY_CHANGE, this.onPlayerPropertyChange);
            }
            return;
        }// end function

    }
}
