package tibia.appearances
{
   import tibia.appearances.widgetClasses.ISpriteProvider;
   import tibia.appearances.widgetClasses.CachedSpriteInformation;
   
   public class AppearanceType
   {
      
      private static const ACTION_UNSET:int = -1;
      
      private static const MOUSE_BUTTON_LEFT:int = 1;
      
      private static const MOUSE_BUTTON_BOTH:int = 4;
      
      private static const ACTION_USE_OR_OPEN:int = 101;
      
      private static const ACTION_SMARTCLICK:int = 100;
      
      private static const MOUSE_BUTTON_RIGHT:int = 2;
      
      private static const ACTION_LOOK:int = 6;
      
      private static const ACTION_TALK:int = 9;
      
      private static const ACTION_USE:int = 7;
      
      private static const MOUSE_BUTTON_MIDDLE:int = 3;
      
      private static const ACTION_NONE:int = 0;
      
      private static const ACTION_AUTOWALK:int = 3;
      
      private static const ACTION_ATTACK:int = 1;
      
      private static const ACTION_OPEN:int = 8;
      
      private static const ACTION_AUTOWALK_HIGHLIGHT:int = 4;
      
      private static const ACTION_CONTEXT_MENU:int = 5;
      
      private static const ACTION_ATTACK_OR_TALK:int = 102;
       
      public var isHookEast:Boolean = false;
      
      public var isMarket:Boolean = false;
      
      public var isUnmoveable:Boolean = false;
      
      public var isCloth:Boolean = false;
      
      public var patternDepth:int = 0;
      
      public var patternWidth:int = 0;
      
      public var isUnsight:Boolean = false;
      
      public var ID:int = 0;
      
      public var isHangable:Boolean = false;
      
      public var displacementX:int = 0;
      
      public var displacementY:int = 0;
      
      public var height:int = 0;
      
      public var isLiquidContainer:Boolean = false;
      
      public var isLight:Boolean = false;
      
      public var phaseDuration:Vector.<int>;
      
      public var clothSlot:int = 0;
      
      public var isDisplaced:Boolean = false;
      
      public var marketRestrictProfession:uint = 0;
      
      public var isAnimateAlways:Boolean = false;
      
      public var layers:int = 0;
      
      public var isLyingObject:Boolean = false;
      
      public var marketRestrictLevel:uint = 0;
      
      public var brightness:int = 0;
      
      public var isUnpassable:Boolean = false;
      
      public var phases:int = 0;
      
      public var isLiquidPool:Boolean = false;
      
      public var isIgnoreLook:Boolean = false;
      
      public var elevation:int = 0;
      
      public var lensHelp:int = 0;
      
      public var isHookSouth:Boolean = false;
      
      public var marketCategory:int = 0;
      
      public var isCachable:Boolean = false;
      
      public var isAvoid:Boolean = false;
      
      public var marketShowAs:int = 0;
      
      public var isContainer:Boolean = false;
      
      public var automapColour:int = 0;
      
      public var isAnimation:Boolean = false;
      
      public var lightColour:int = 0;
      
      public var isBank:Boolean = false;
      
      public var waypoints:int = 0;
      
      public var isClip:Boolean = false;
      
      public var isDonthide:Boolean = false;
      
      public var exactSize:int = 0;
      
      public var preventMovementAnimation:Boolean = false;
      
      public var isLensHelp:Boolean = false;
      
      public var marketNameLowerCase:String = null;
      
      public var isTakeable:Boolean = false;
      
      public var isWriteable:Boolean = false;
      
      public var isFullBank:Boolean = false;
      
      public var isCumulative:Boolean = false;
      
      public var spritesheetIDs:Vector.<uint>;
      
      public var isUsable:Boolean = false;
      
      public var isAutomap:Boolean = false;
      
      public var width:int = 0;
      
      public var isTop:Boolean = false;
      
      public var isDefaultAction:Boolean = false;
      
      public var isTranslucent:Boolean = false;
      
      public var isWriteableOnce:Boolean = false;
      
      public var spriteIDs:Vector.<uint>;
      
      public var isMultiUse:Boolean = false;
      
      public var marketTradeAs:int = 0;
      
      public var spriteProvider:ISpriteProvider = null;
      
      public var patternHeight:int = 0;
      
      public var isForceUse:Boolean = false;
      
      public var marketName:String = null;
      
      public var numSprites:int = 0;
      
      public var defaultAction:int = -1;
      
      public var isHeight:Boolean = false;
      
      public var isBottom:Boolean = false;
      
      public var maxTextLength:int = 0;
      
      public var totalDuration:int = 0;
      
      public var cachedSpriteInformations:Vector.<CachedSpriteInformation>;
      
      public var isRotateable:Boolean = false;
      
      public function AppearanceType(param1:int)
      {
         this.phaseDuration = new Vector.<int>();
         this.spriteIDs = new Vector.<uint>();
         this.spritesheetIDs = new Vector.<uint>();
         this.cachedSpriteInformations = new Vector.<CachedSpriteInformation>();
         super();
         this.ID = param1;
      }
      
      public function get isCreature() : Boolean
      {
         return this.ID == AppearanceInstance.CREATURE || this.ID == AppearanceInstance.OUTDATEDCREATURE || this.ID == AppearanceInstance.UNKNOWNCREATURE;
      }
   }
}
