.class public Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;
.super Lorg/osmdroid/views/overlay/ItemizedIconOverlay;
.source "ItemizedOverlayWithFocus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Lorg/osmdroid/views/overlay/OverlayItem;",
        ">",
        "Lorg/osmdroid/views/overlay/ItemizedIconOverlay",
        "<TItem;>;"
    }
.end annotation


# static fields
.field protected static final DEFAULTMARKER_BACKGROUNDCOLOR:I

.field public static final DESCRIPTION_BOX_CORNERWIDTH:I = 0x3

.field public static final DESCRIPTION_BOX_PADDING:I = 0x3

.field public static final DESCRIPTION_LINE_HEIGHT:I = 0xc

.field protected static final DESCRIPTION_MAXWIDTH:I = 0xc8

.field public static final DESCRIPTION_TITLE_EXTRA_LINE_HEIGHT:I = 0x2


# instance fields
.field private final UNKNOWN:Ljava/lang/String;

.field protected final mDescriptionPaint:Landroid/graphics/Paint;

.field protected mFocusItemsOnTap:Z

.field protected mFocusedItemIndex:I

.field private final mFocusedScreenCoords:Landroid/graphics/Point;

.field protected final mMarkerBackgroundPaint:Landroid/graphics/Paint;

.field protected final mMarkerFocusedBackgroundColor:I

.field protected mMarkerFocusedBase:Landroid/graphics/drawable/Drawable;

.field private final mRect:Landroid/graphics/Rect;

.field protected final mTitlePaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/16 v0, 0x65

    const/16 v1, 0xb9

    const/16 v2, 0x4a

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DEFAULTMARKER_BACKGROUNDCOLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TItem;>;",
            "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener",
            "<TItem;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    .local p2, "aList":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    .local p3, "aOnItemTapListener":Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener<TItem;>;"
    new-instance v0, Lorg/osmdroid/DefaultResourceProxyImpl;

    invoke-direct {v0, p1}, Lorg/osmdroid/DefaultResourceProxyImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2, p3, v0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;-><init>(Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Lorg/osmdroid/ResourceProxy;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Lorg/osmdroid/ResourceProxy;)V
    .locals 3
    .param p2, "pMarker"    # Landroid/graphics/drawable/Drawable;
    .param p3, "pMarkerFocused"    # Landroid/graphics/drawable/Drawable;
    .param p4, "pFocusedBackgroundColor"    # I
    .param p6, "pResourceProxy"    # Lorg/osmdroid/ResourceProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener",
            "<TItem;>;",
            "Lorg/osmdroid/ResourceProxy;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    .local p1, "aList":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    .local p5, "aOnItemTapListener":Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener<TItem;>;"
    const/4 v2, 0x1

    .line 71
    invoke-direct {p0, p1, p2, p5, p6}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;-><init>(Ljava/util/List;Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Lorg/osmdroid/ResourceProxy;)V

    .line 48
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedScreenCoords:Landroid/graphics/Point;

    .line 140
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    .line 73
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mResourceProxy:Lorg/osmdroid/ResourceProxy;

    sget-object v1, Lorg/osmdroid/ResourceProxy$string;->unknown:Lorg/osmdroid/ResourceProxy$string;

    invoke-interface {v0, v1}, Lorg/osmdroid/ResourceProxy;->getString(Lorg/osmdroid/ResourceProxy$string;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->UNKNOWN:Ljava/lang/String;

    .line 75
    if-nez p3, :cond_0

    .line 76
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mResourceProxy:Lorg/osmdroid/ResourceProxy;

    sget-object v1, Lorg/osmdroid/ResourceProxy$bitmap;->marker_default_focused_base:Lorg/osmdroid/ResourceProxy$bitmap;

    invoke-interface {v0, v1}, Lorg/osmdroid/ResourceProxy;->getDrawable(Lorg/osmdroid/ResourceProxy$bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->BOTTOM_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->boundToHotspot(Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerFocusedBase:Landroid/graphics/drawable/Drawable;

    .line 82
    :goto_0
    const/high16 v0, -0x80000000

    if-eq p4, v0, :cond_1

    .end local p4    # "pFocusedBackgroundColor":I
    :goto_1
    iput p4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerFocusedBackgroundColor:I

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerBackgroundPaint:Landroid/graphics/Paint;

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    .line 88
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mTitlePaint:Landroid/graphics/Paint;

    .line 90
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 91
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 92
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->unSetFocusedItem()V

    .line 93
    return-void

    .line 80
    .restart local p4    # "pFocusedBackgroundColor":I
    :cond_0
    iput-object p3, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerFocusedBase:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 82
    :cond_1
    sget p4, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DEFAULTMARKER_BACKGROUNDCOLOR:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Lorg/osmdroid/ResourceProxy;)V
    .locals 7
    .param p3, "pResourceProxy"    # Lorg/osmdroid/ResourceProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;",
            "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener",
            "<TItem;>;",
            "Lorg/osmdroid/ResourceProxy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    .local p1, "aList":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    .local p2, "aOnItemTapListener":Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener<TItem;>;"
    sget-object v0, Lorg/osmdroid/ResourceProxy$bitmap;->marker_default:Lorg/osmdroid/ResourceProxy$bitmap;

    invoke-interface {p3, v0}, Lorg/osmdroid/ResourceProxy;->getDrawable(Lorg/osmdroid/ResourceProxy$bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;-><init>(Ljava/util/List;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Lorg/osmdroid/ResourceProxy;)V

    .line 65
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 32
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "osmv"    # Lorg/osmdroid/views/MapView;
    .param p3, "shadow"    # Z

    .prologue
    .line 145
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    invoke-super/range {p0 .. p3}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V

    .line 147
    if-eqz p3, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedItemIndex:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_0

    .line 156
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedItemIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/osmdroid/views/overlay/OverlayItem;

    .line 157
    .local v18, "focusedItem":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    const/4 v3, 0x4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/osmdroid/views/overlay/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    .line 158
    .local v26, "markerFocusedBase":Landroid/graphics/drawable/Drawable;
    if-nez v26, :cond_2

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerFocusedBase:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    .line 163
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/views/overlay/OverlayItem;->getPoint()Lorg/osmdroid/util/GeoPoint;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedScreenCoords:Landroid/graphics/Point;

    invoke-virtual {v3, v4, v5}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 165
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedScreenCoords:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedScreenCoords:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 169
    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/views/overlay/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->UNKNOWN:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 171
    .local v21, "itemTitle":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/views/overlay/OverlayItem;->getSnippet()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->UNKNOWN:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 178
    .local v20, "itemDescription":Ljava/lang/String;
    :goto_2
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v3

    new-array v0, v3, [F

    move-object/from16 v31, v0

    .line 179
    .local v31, "widths":[F
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 181
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v29, "sb":Ljava/lang/StringBuilder;
    const/16 v27, 0x0

    .line 183
    .local v27, "maxWidth":I
    const/4 v10, 0x0

    .line 184
    .local v10, "curLineWidth":I
    const/16 v23, 0x0

    .line 186
    .local v23, "lastStop":I
    const/16 v24, 0x0

    .line 191
    .local v24, "lastwhitespace":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_3
    move-object/from16 v0, v31

    array-length v3, v0

    move/from16 v0, v19

    if-ge v0, v3, :cond_8

    .line 192
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_3

    .line 193
    move/from16 v24, v19

    .line 196
    :cond_3
    aget v9, v31, v19

    .line 198
    .local v9, "charwidth":F
    int-to-float v3, v10

    add-float/2addr v3, v9

    const/high16 v4, 0x43480000    # 200.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 199
    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 200
    add-int/lit8 v19, v19, -0x1

    .line 205
    :goto_4
    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 206
    const/16 v3, 0xa

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    move/from16 v23, v19

    .line 209
    move/from16 v0, v27

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 210
    const/4 v10, 0x0

    .line 213
    :cond_4
    int-to-float v3, v10

    add-float/2addr v3, v9

    float-to-int v10, v3

    .line 191
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 169
    .end local v9    # "charwidth":F
    .end local v10    # "curLineWidth":I
    .end local v19    # "i":I
    .end local v20    # "itemDescription":Ljava/lang/String;
    .end local v21    # "itemTitle":Ljava/lang/String;
    .end local v23    # "lastStop":I
    .end local v24    # "lastwhitespace":I
    .end local v27    # "maxWidth":I
    .end local v29    # "sb":Ljava/lang/StringBuilder;
    .end local v31    # "widths":[F
    :cond_5
    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/views/overlay/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v21

    goto :goto_1

    .line 171
    .restart local v21    # "itemTitle":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/views/overlay/OverlayItem;->getSnippet()Ljava/lang/String;

    move-result-object v20

    goto :goto_2

    .line 202
    .restart local v9    # "charwidth":F
    .restart local v10    # "curLineWidth":I
    .restart local v19    # "i":I
    .restart local v20    # "itemDescription":Ljava/lang/String;
    .restart local v23    # "lastStop":I
    .restart local v24    # "lastwhitespace":I
    .restart local v27    # "maxWidth":I
    .restart local v29    # "sb":Ljava/lang/StringBuilder;
    .restart local v31    # "widths":[F
    :cond_7
    move/from16 v19, v24

    goto :goto_4

    .line 216
    .end local v9    # "charwidth":F
    :cond_8
    move/from16 v0, v19

    move/from16 v1, v23

    if-eq v0, v1, :cond_9

    .line 217
    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 218
    .local v28, "rest":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 219
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .end local v28    # "rest":Ljava/lang/String;
    :cond_9
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 226
    .local v25, "lines":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v0, v3

    move/from16 v30, v0

    .line 228
    .local v30, "titleWidth":I
    move/from16 v0, v27

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 229
    const/16 v3, 0xc8

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 232
    .local v17, "descWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    div-int/lit8 v4, v17, 0x2

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v12, v3, v4

    .line 234
    .local v12, "descBoxLeft":I
    add-int v3, v12, v17

    add-int/lit8 v13, v3, 0x6

    .line 235
    .local v13, "descBoxRight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    iget v11, v3, Landroid/graphics/Rect;->top:I

    .line 236
    .local v11, "descBoxBottom":I
    add-int/lit8 v3, v11, -0x2

    move-object/from16 v0, v25

    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0xc

    sub-int/2addr v3, v4

    add-int/lit8 v14, v3, -0x6

    .line 241
    .local v14, "descBoxTop":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    new-instance v3, Landroid/graphics/RectF;

    add-int/lit8 v4, v12, -0x1

    int-to-float v4, v4

    add-int/lit8 v5, v14, -0x1

    int-to-float v5, v5

    add-int/lit8 v6, v13, 0x1

    int-to-float v6, v6

    add-int/lit8 v7, v11, 0x1

    int-to-float v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v5, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerFocusedBackgroundColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, v12

    int-to-float v5, v14

    int-to-float v6, v13

    int-to-float v7, v11

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v5, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 250
    add-int/lit8 v15, v12, 0x3

    .line 251
    .local v15, "descLeft":I
    add-int/lit8 v16, v11, -0x3

    .line 254
    .local v16, "descTextLineBottom":I
    move-object/from16 v0, v25

    array-length v3, v0

    add-int/lit8 v22, v3, -0x1

    .local v22, "j":I
    :goto_5
    if-ltz v22, :cond_a

    .line 255
    aget-object v3, v25, v22

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    int-to-float v4, v15

    move/from16 v0, v16

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 256
    add-int/lit8 v16, v16, -0xc

    .line 254
    add-int/lit8 v22, v22, -0x1

    goto :goto_5

    .line 259
    :cond_a
    int-to-float v3, v15

    add-int/lit8 v4, v16, -0x2

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mTitlePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 261
    int-to-float v4, v12

    move/from16 v0, v16

    int-to-float v5, v0

    int-to-float v6, v13

    move/from16 v0, v16

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedScreenCoords:Landroid/graphics/Point;

    iget v5, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedScreenCoords:Landroid/graphics/Point;

    iget v6, v3, Landroid/graphics/Point;->y:I

    const/4 v7, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v8

    move-object/from16 v3, p1

    move-object/from16 v4, v26

    invoke-static/range {v3 .. v8}, Lorg/osmdroid/views/overlay/Overlay;->drawAt(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZF)V

    goto/16 :goto_0
.end method

.method public getFocusedItem()Lorg/osmdroid/views/overlay/OverlayItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TItem;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    iget v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedItemIndex:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 103
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mItemList:Ljava/util/List;

    iget v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedItemIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayItem;

    goto :goto_0
.end method

.method protected onSingleTapUpHelper(ILorg/osmdroid/views/overlay/OverlayItem;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "index"    # I
    .param p3, "mapView"    # Lorg/osmdroid/views/MapView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITItem;",
            "Lorg/osmdroid/views/MapView;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    .local p2, "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusItemsOnTap:Z

    if-eqz v0, :cond_0

    .line 134
    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedItemIndex:I

    .line 135
    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->postInvalidate()V

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mOnItemGestureListener:Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;->onItemSingleTapUp(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setFocusItemsOnTap(Z)V
    .locals 0
    .param p1, "doit"    # Z

    .prologue
    .line 124
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusItemsOnTap:Z

    .line 125
    return-void
.end method

.method public setFocusedItem(I)V
    .locals 0
    .param p1, "pIndex"    # I

    .prologue
    .line 107
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedItemIndex:I

    .line 108
    return-void
.end method

.method public setFocusedItem(Lorg/osmdroid/views/overlay/OverlayItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    .local p1, "pItem":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 116
    .local v0, "indexFound":I
    if-gez v0, :cond_0

    .line 117
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 120
    :cond_0
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->setFocusedItem(I)V

    .line 121
    return-void
.end method

.method public unSetFocusedItem()V
    .locals 1

    .prologue
    .line 111
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedItemIndex:I

    .line 112
    return-void
.end method
