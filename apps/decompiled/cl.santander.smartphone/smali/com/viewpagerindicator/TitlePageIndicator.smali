.class public Lcom/viewpagerindicator/TitlePageIndicator;
.super Landroid/view/View;
.source "TitlePageIndicator.java"

# interfaces
.implements Lcom/viewpagerindicator/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;,
        Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;,
        Lcom/viewpagerindicator/TitlePageIndicator$SavedState;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$viewpagerindicator$TitlePageIndicator$IndicatorStyle:[I = null

.field private static final BOLD_FADE_PERCENTAGE:F = 0.05f

.field private static final INVALID_POINTER:I = -0x1

.field private static final SELECTION_FADE_PERCENTAGE:F = 0.25f


# instance fields
.field private mActivePointerId:I

.field private mBoldText:Z

.field private mCenterItemClickListener:Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;

.field private mClipPadding:F

.field private mColorSelected:I

.field private mColorText:I

.field private mCurrentOffset:I

.field private mCurrentPage:I

.field private mFooterIndicatorHeight:F

.field private mFooterIndicatorStyle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

.field private mFooterIndicatorUnderlinePadding:F

.field private mFooterLineHeight:F

.field private mFooterPadding:F

.field private mIsDragging:Z

.field private mLastMotionX:F

.field private mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private final mPaintFooterIndicator:Landroid/graphics/Paint;

.field private final mPaintFooterLine:Landroid/graphics/Paint;

.field private final mPaintText:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mScrollState:I

.field private mTitlePadding:F

.field private mTitleProvider:Lcom/viewpagerindicator/TitleProvider;

.field private mTopPadding:F

.field private mTouchSlop:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static synthetic $SWITCH_TABLE$com$viewpagerindicator$TitlePageIndicator$IndicatorStyle()[I
    .locals 3

    .prologue
    .line 46
    sget-object v0, Lcom/viewpagerindicator/TitlePageIndicator;->$SWITCH_TABLE$com$viewpagerindicator$TitlePageIndicator$IndicatorStyle:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->values()[Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->None:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    invoke-virtual {v1}, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->Triangle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    invoke-virtual {v1}, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->Underline:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    invoke-virtual {v1}, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/viewpagerindicator/TitlePageIndicator;->$SWITCH_TABLE$com$viewpagerindicator$TitlePageIndicator$IndicatorStyle:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/TitlePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 130
    sget v0, Lcom/viewpagerindicator/R$attr;->vpiTitlePageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/viewpagerindicator/TitlePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 134
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    new-instance v23, Landroid/graphics/Paint;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    .line 103
    new-instance v23, Landroid/graphics/Paint;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    .line 105
    new-instance v23, Landroid/graphics/Paint;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    .line 118
    const/high16 v23, -0x40800000    # -1.0f

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mLastMotionX:F

    .line 119
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 138
    .local v21, "res":Landroid/content/res/Resources;
    sget v23, Lcom/viewpagerindicator/R$color;->default_title_indicator_footer_color:I

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 139
    .local v8, "defaultFooterColor":I
    sget v23, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_footer_line_height:I

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    .line 140
    .local v12, "defaultFooterLineHeight":F
    sget v23, Lcom/viewpagerindicator/R$integer;->default_title_indicator_footer_indicator_style:I

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 141
    .local v10, "defaultFooterIndicatorStyle":I
    sget v23, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_footer_indicator_height:I

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    .line 142
    .local v9, "defaultFooterIndicatorHeight":F
    sget v23, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_footer_indicator_underline_padding:I

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    .line 143
    .local v11, "defaultFooterIndicatorUnderlinePadding":F
    sget v23, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_footer_padding:I

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    .line 144
    .local v13, "defaultFooterPadding":F
    sget v23, Lcom/viewpagerindicator/R$color;->default_title_indicator_selected_color:I

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    .line 145
    .local v15, "defaultSelectedColor":I
    sget v23, Lcom/viewpagerindicator/R$bool;->default_title_indicator_selected_bold:I

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    .line 146
    .local v14, "defaultSelectedBold":Z
    sget v23, Lcom/viewpagerindicator/R$color;->default_title_indicator_text_color:I

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    .line 147
    .local v16, "defaultTextColor":I
    sget v23, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_text_size:I

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    .line 148
    .local v17, "defaultTextSize":F
    sget v23, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_title_padding:I

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    .line 149
    .local v18, "defaultTitlePadding":F
    sget v23, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_clip_padding:I

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 150
    .local v7, "defaultClipPadding":F
    sget v23, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_top_padding:I

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    .line 153
    .local v19, "defaultTopPadding":F
    sget-object v23, Lcom/viewpagerindicator/R$styleable;->TitlePageIndicator:[I

    sget v24, Lcom/viewpagerindicator/R$style;->Widget_TitlePageIndicator:I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    move/from16 v3, p3

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 156
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v23, 0x2

    move/from16 v0, v23

    invoke-virtual {v5, v0, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    .line 157
    const/16 v23, 0x3

    move/from16 v0, v23

    invoke-virtual {v5, v0, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->fromValue(I)Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorStyle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    .line 158
    const/16 v23, 0x4

    move/from16 v0, v23

    invoke-virtual {v5, v0, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    .line 159
    const/16 v23, 0x5

    move/from16 v0, v23

    invoke-virtual {v5, v0, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorUnderlinePadding:F

    .line 160
    const/16 v23, 0x6

    move/from16 v0, v23

    invoke-virtual {v5, v0, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterPadding:F

    .line 161
    const/16 v23, 0xc

    move/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mTopPadding:F

    .line 162
    const/16 v23, 0xb

    move/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    .line 163
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    .line 164
    const/16 v23, 0x7

    move/from16 v0, v23

    invoke-virtual {v5, v0, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mColorSelected:I

    .line 165
    const/16 v23, 0x9

    move/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mColorText:I

    .line 166
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v5, v0, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mBoldText:Z

    .line 168
    const/16 v23, 0xa

    move/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v22

    .line 169
    .local v22, "textSize":F
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v5, v0, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v20

    .line 170
    .local v20, "footerColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    sget-object v24, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    sget-object v24, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 180
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 181
    .local v6, "configuration":Landroid/view/ViewConfiguration;
    invoke-static {v6}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mTouchSlop:I

    .line 182
    return-void
.end method

.method private calcBounds(ILandroid/graphics/Paint;)Landroid/graphics/RectF;
    .locals 3
    .param p1, "index"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 627
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 628
    .local v0, "bounds":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitleProvider:Lcom/viewpagerindicator/TitleProvider;

    invoke-interface {v1, p1}, Lcom/viewpagerindicator/TitleProvider;->getTitle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 629
    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 630
    return-object v0
.end method

.method private calculateAllBounds(Landroid/graphics/Paint;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "paint"    # Landroid/graphics/Paint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Paint;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 599
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 601
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
    iget-object v8, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v8}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    .line 602
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v7

    .line 603
    .local v7, "width":I
    div-int/lit8 v3, v7, 0x2

    .line 604
    .local v3, "halfWidth":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v1, :cond_0

    .line 615
    return-object v5

    .line 605
    :cond_0
    invoke-direct {p0, v4, p1}, Lcom/viewpagerindicator/TitlePageIndicator;->calcBounds(ILandroid/graphics/Paint;)Landroid/graphics/RectF;

    move-result-object v0

    .line 606
    .local v0, "bounds":Landroid/graphics/RectF;
    iget v8, v0, Landroid/graphics/RectF;->right:F

    iget v9, v0, Landroid/graphics/RectF;->left:F

    sub-float v6, v8, v9

    .line 607
    .local v6, "w":F
    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    iget v9, v0, Landroid/graphics/RectF;->top:F

    sub-float v2, v8, v9

    .line 608
    .local v2, "h":F
    int-to-float v8, v3

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v6, v9

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentOffset:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    sub-int v9, v4, v9

    mul-int/2addr v9, v7

    int-to-float v9, v9

    add-float/2addr v8, v9

    iput v8, v0, Landroid/graphics/RectF;->left:F

    .line 609
    iget v8, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v8, v6

    iput v8, v0, Landroid/graphics/RectF;->right:F

    .line 610
    const/4 v8, 0x0

    iput v8, v0, Landroid/graphics/RectF;->top:F

    .line 611
    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 612
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private clipViewOnTheLeft(Landroid/graphics/RectF;FI)V
    .locals 2
    .param p1, "curViewBound"    # Landroid/graphics/RectF;
    .param p2, "curViewWidth"    # F
    .param p3, "left"    # I

    .prologue
    .line 587
    int-to-float v0, p3

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 588
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 589
    return-void
.end method

.method private clipViewOnTheRight(Landroid/graphics/RectF;FI)V
    .locals 2
    .param p1, "curViewBound"    # Landroid/graphics/RectF;
    .param p2, "curViewWidth"    # F
    .param p3, "right"    # I

    .prologue
    .line 574
    int-to-float v0, p3

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 575
    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 576
    return-void
.end method


# virtual methods
.method public getClipPadding()F
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    return v0
.end method

.method public getFooterColor()I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getFooterIndicatorHeight()F
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    return v0
.end method

.method public getFooterIndicatorPadding()F
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterPadding:F

    return v0
.end method

.method public getFooterIndicatorStyle()Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorStyle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    return-object v0
.end method

.method public getFooterLineHeight()F
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    return v0
.end method

.method public getSelectedColor()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorSelected:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorText:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getTitlePadding()F
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    return v0
.end method

.method public getTopPadding()F
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mTopPadding:F

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public isSelectedBold()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mBoldText:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 657
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 36
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 312
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v31, v0

    if-nez v31, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v9

    .line 318
    .local v9, "count":I
    if-eqz v9, :cond_0

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->calculateAllBounds(Landroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v6

    .line 324
    .local v6, "bounds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 327
    .local v7, "boundsSize":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-lt v0, v7, :cond_2

    .line 328
    add-int/lit8 v31, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->setCurrentItem(I)V

    goto :goto_0

    .line 332
    :cond_2
    add-int/lit8 v10, v9, -0x1

    .line 333
    .local v10, "countMinusOne":I
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x40000000    # 2.0f

    div-float v16, v31, v32

    .line 334
    .local v16, "halfWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getLeft()I

    move-result v19

    .line 335
    .local v19, "left":I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    move/from16 v32, v0

    add-float v21, v31, v32

    .line 336
    .local v21, "leftClip":F
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v30

    .line 337
    .local v30, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getHeight()I

    move-result v17

    .line 338
    .local v17, "height":I
    add-int v24, v19, v30

    .line 339
    .local v24, "right":I
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    move/from16 v32, v0

    sub-float v26, v31, v32

    .line 341
    .local v26, "rightClip":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v23, v0

    .line 343
    .local v23, "page":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentOffset:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    cmpg-float v31, v31, v16

    if-gtz v31, :cond_7

    .line 344
    const/high16 v31, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentOffset:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v31, v31, v32

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v22, v31, v32

    .line 349
    .local v22, "offsetPercent":F
    :goto_1
    const/high16 v31, 0x3e800000    # 0.25f

    cmpg-float v31, v22, v31

    if-gtz v31, :cond_8

    const/4 v15, 0x1

    .line 350
    .local v15, "currentSelected":Z
    :goto_2
    const v31, 0x3d4ccccd    # 0.05f

    cmpg-float v31, v22, v31

    if-gtz v31, :cond_9

    const/4 v13, 0x1

    .line 351
    .local v13, "currentBold":Z
    :goto_3
    const/high16 v31, 0x3e800000    # 0.25f

    sub-float v31, v31, v22

    const/high16 v32, 0x3e800000    # 0.25f

    div-float v27, v31, v32

    .line 354
    .local v27, "selectedPercent":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v31, v0

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/RectF;

    .line 355
    .local v11, "curPageBound":Landroid/graphics/RectF;
    iget v0, v11, Landroid/graphics/RectF;->right:F

    move/from16 v31, v0

    iget v0, v11, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    sub-float v12, v31, v32

    .line 356
    .local v12, "curPageWidth":F
    iget v0, v11, Landroid/graphics/RectF;->left:F

    move/from16 v31, v0

    cmpg-float v31, v31, v21

    if-gez v31, :cond_3

    .line 358
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v11, v12, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->clipViewOnTheLeft(Landroid/graphics/RectF;FI)V

    .line 360
    :cond_3
    iget v0, v11, Landroid/graphics/RectF;->right:F

    move/from16 v31, v0

    cmpl-float v31, v31, v26

    if-lez v31, :cond_4

    .line 362
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v11, v12, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->clipViewOnTheRight(Landroid/graphics/RectF;FI)V

    .line 366
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v31, v0

    if-lez v31, :cond_5

    .line 367
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v31, v0

    add-int/lit8 v18, v31, -0x1

    .local v18, "i":I
    :goto_4
    if-gez v18, :cond_a

    .line 385
    .end local v18    # "i":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v0, v10, :cond_6

    .line 386
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v31, v0

    add-int/lit8 v18, v31, 0x1

    .restart local v18    # "i":I
    :goto_5
    move/from16 v0, v18

    if-lt v0, v9, :cond_c

    .line 405
    .end local v18    # "i":I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorText:I

    move/from16 v31, v0

    ushr-int/lit8 v8, v31, 0x18

    .line 406
    .local v8, "colorTextAlpha":I
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_6
    move/from16 v0, v18

    if-lt v0, v9, :cond_e

    .line 433
    new-instance v31, Landroid/graphics/Path;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    move/from16 v34, v0

    const/high16 v35, 0x40000000    # 2.0f

    div-float v34, v34, v35

    sub-float v33, v33, v34

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->moveTo(FF)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    move/from16 v34, v0

    const/high16 v35, 0x40000000    # 2.0f

    div-float v34, v34, v35

    sub-float v33, v33, v34

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->lineTo(FF)V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Path;->close()V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 439
    invoke-static {}, Lcom/viewpagerindicator/TitlePageIndicator;->$SWITCH_TABLE$com$viewpagerindicator$TitlePageIndicator$IndicatorStyle()[I

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorStyle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->ordinal()I

    move-result v32

    aget v31, v31, v32

    packed-switch v31, :pswitch_data_0

    goto/16 :goto_0

    .line 441
    :pswitch_0
    new-instance v31, Landroid/graphics/Path;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    move-object/from16 v0, v31

    move/from16 v1, v16

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    move/from16 v32, v0

    add-float v32, v32, v16

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    move/from16 v34, v0

    sub-float v33, v33, v34

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->lineTo(FF)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    move/from16 v32, v0

    sub-float v32, v16, v32

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    move/from16 v34, v0

    sub-float v33, v33, v34

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->lineTo(FF)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Path;->close()V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 346
    .end local v8    # "colorTextAlpha":I
    .end local v11    # "curPageBound":Landroid/graphics/RectF;
    .end local v12    # "curPageWidth":F
    .end local v13    # "currentBold":Z
    .end local v15    # "currentSelected":Z
    .end local v18    # "i":I
    .end local v22    # "offsetPercent":F
    .end local v27    # "selectedPercent":F
    :cond_7
    add-int/lit8 v23, v23, 0x1

    .line 347
    const/high16 v31, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentOffset:I

    move/from16 v32, v0

    sub-int v32, v30, v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v31, v31, v32

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v22, v31, v32

    .restart local v22    # "offsetPercent":F
    goto/16 :goto_1

    .line 349
    :cond_8
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 350
    .restart local v15    # "currentSelected":Z
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 368
    .restart local v11    # "curPageBound":Landroid/graphics/RectF;
    .restart local v12    # "curPageWidth":F
    .restart local v13    # "currentBold":Z
    .restart local v18    # "i":I
    .restart local v27    # "selectedPercent":F
    :cond_a
    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    .line 370
    .local v5, "bound":Landroid/graphics/RectF;
    iget v0, v5, Landroid/graphics/RectF;->left:F

    move/from16 v31, v0

    cmpg-float v31, v31, v21

    if-gez v31, :cond_b

    .line 371
    iget v0, v5, Landroid/graphics/RectF;->right:F

    move/from16 v31, v0

    iget v0, v5, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    sub-float v29, v31, v32

    .line 373
    .local v29, "w":F
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v19

    invoke-direct {v0, v5, v1, v2}, Lcom/viewpagerindicator/TitlePageIndicator;->clipViewOnTheLeft(Landroid/graphics/RectF;FI)V

    .line 375
    add-int/lit8 v31, v18, 0x1

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/graphics/RectF;

    .line 377
    .local v25, "rightBound":Landroid/graphics/RectF;
    iget v0, v5, Landroid/graphics/RectF;->right:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    move/from16 v32, v0

    add-float v31, v31, v32

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_b

    .line 378
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v31, v0

    sub-float v31, v31, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    move/from16 v32, v0

    sub-float v31, v31, v32

    move/from16 v0, v31

    iput v0, v5, Landroid/graphics/RectF;->left:F

    .line 379
    iget v0, v5, Landroid/graphics/RectF;->left:F

    move/from16 v31, v0

    add-float v31, v31, v29

    move/from16 v0, v31

    iput v0, v5, Landroid/graphics/RectF;->right:F

    .line 367
    .end local v25    # "rightBound":Landroid/graphics/RectF;
    .end local v29    # "w":F
    :cond_b
    add-int/lit8 v18, v18, -0x1

    goto/16 :goto_4

    .line 387
    .end local v5    # "bound":Landroid/graphics/RectF;
    :cond_c
    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    .line 389
    .restart local v5    # "bound":Landroid/graphics/RectF;
    iget v0, v5, Landroid/graphics/RectF;->right:F

    move/from16 v31, v0

    cmpl-float v31, v31, v26

    if-lez v31, :cond_d

    .line 390
    iget v0, v5, Landroid/graphics/RectF;->right:F

    move/from16 v31, v0

    iget v0, v5, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    sub-float v29, v31, v32

    .line 392
    .restart local v29    # "w":F
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v24

    invoke-direct {v0, v5, v1, v2}, Lcom/viewpagerindicator/TitlePageIndicator;->clipViewOnTheRight(Landroid/graphics/RectF;FI)V

    .line 394
    add-int/lit8 v31, v18, -0x1

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/graphics/RectF;

    .line 396
    .local v20, "leftBound":Landroid/graphics/RectF;
    iget v0, v5, Landroid/graphics/RectF;->left:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    move/from16 v32, v0

    sub-float v31, v31, v32

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v32, v0

    cmpg-float v31, v31, v32

    if-gez v31, :cond_d

    .line 397
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    move/from16 v32, v0

    add-float v31, v31, v32

    move/from16 v0, v31

    iput v0, v5, Landroid/graphics/RectF;->left:F

    .line 398
    iget v0, v5, Landroid/graphics/RectF;->left:F

    move/from16 v31, v0

    add-float v31, v31, v29

    move/from16 v0, v31

    iput v0, v5, Landroid/graphics/RectF;->right:F

    .line 386
    .end local v20    # "leftBound":Landroid/graphics/RectF;
    .end local v29    # "w":F
    :cond_d
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_5

    .line 408
    .end local v5    # "bound":Landroid/graphics/RectF;
    .restart local v8    # "colorTextAlpha":I
    :cond_e
    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    .line 410
    .restart local v5    # "bound":Landroid/graphics/RectF;
    iget v0, v5, Landroid/graphics/RectF;->left:F

    move/from16 v31, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v32, v0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_f

    iget v0, v5, Landroid/graphics/RectF;->left:F

    move/from16 v31, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v32, v0

    cmpg-float v31, v31, v32

    if-ltz v31, :cond_10

    :cond_f
    iget v0, v5, Landroid/graphics/RectF;->right:F

    move/from16 v31, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v32, v0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_12

    iget v0, v5, Landroid/graphics/RectF;->right:F

    move/from16 v31, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v32, v0

    cmpg-float v31, v31, v32

    if-gez v31, :cond_12

    .line 411
    :cond_10
    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    const/4 v14, 0x1

    .line 413
    .local v14, "currentPage":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    if-eqz v14, :cond_14

    if-eqz v13, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mBoldText:Z

    move/from16 v31, v0

    if-eqz v31, :cond_14

    const/16 v31, 0x1

    :goto_8
    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorText:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/graphics/Paint;->setColor(I)V

    .line 417
    if-eqz v14, :cond_11

    if-eqz v15, :cond_11

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v31, v0

    int-to-float v0, v8

    move/from16 v32, v0

    mul-float v32, v32, v27

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    sub-int v32, v8, v32

    invoke-virtual/range {v31 .. v32}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 421
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitleProvider:Lcom/viewpagerindicator/TitleProvider;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/viewpagerindicator/TitleProvider;->getTitle(I)Ljava/lang/String;

    move-result-object v31

    iget v0, v5, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTopPadding:F

    move/from16 v34, v0

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v34, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move-object/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 424
    if-eqz v14, :cond_12

    if-eqz v15, :cond_12

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorSelected:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/graphics/Paint;->setColor(I)V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorSelected:I

    move/from16 v32, v0

    ushr-int/lit8 v32, v32, 0x18

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v27

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitleProvider:Lcom/viewpagerindicator/TitleProvider;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/viewpagerindicator/TitleProvider;->getTitle(I)Ljava/lang/String;

    move-result-object v31

    iget v0, v5, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTopPadding:F

    move/from16 v34, v0

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v34, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move-object/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 406
    .end local v14    # "currentPage":Z
    :cond_12
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_6

    .line 411
    :cond_13
    const/4 v14, 0x0

    goto/16 :goto_7

    .line 413
    .restart local v14    # "currentPage":Z
    :cond_14
    const/16 v31, 0x0

    goto/16 :goto_8

    .line 450
    .end local v5    # "bound":Landroid/graphics/RectF;
    .end local v14    # "currentPage":Z
    :pswitch_1
    if-eqz v15, :cond_0

    move/from16 v0, v23

    if-ge v0, v7, :cond_0

    .line 454
    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/graphics/RectF;

    .line 455
    .local v28, "underlineBounds":Landroid/graphics/RectF;
    new-instance v31, Landroid/graphics/Path;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorUnderlinePadding:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    move/from16 v34, v0

    sub-float v33, v33, v34

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->moveTo(FF)V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorUnderlinePadding:F

    move/from16 v33, v0

    add-float v32, v32, v33

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    move/from16 v34, v0

    sub-float v33, v33, v34

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->lineTo(FF)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorUnderlinePadding:F

    move/from16 v33, v0

    add-float v32, v32, v33

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    move/from16 v34, v0

    sub-float v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    move/from16 v34, v0

    sub-float v33, v33, v34

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->lineTo(FF)V

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorUnderlinePadding:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    move/from16 v34, v0

    sub-float v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    move/from16 v34, v0

    sub-float v33, v33, v34

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->lineTo(FF)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Path;->close()V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    move-object/from16 v31, v0

    const/high16 v32, 0x437f0000    # 255.0f

    mul-float v32, v32, v27

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    move-object/from16 v31, v0

    const/16 v32, 0xff

    invoke-virtual/range {v31 .. v32}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    .line 439
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 718
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 721
    .local v4, "measuredWidth":I
    const/4 v1, 0x0

    .line 722
    .local v1, "height":F
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 723
    .local v2, "heightSpecMode":I
    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_1

    .line 725
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    int-to-float v1, v5

    .line 735
    :cond_0
    :goto_0
    float-to-int v3, v1

    .line 737
    .local v3, "measuredHeight":I
    invoke-virtual {p0, v4, v3}, Lcom/viewpagerindicator/TitlePageIndicator;->setMeasuredDimension(II)V

    .line 738
    return-void

    .line 728
    .end local v3    # "measuredHeight":I
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 729
    .local v0, "bounds":Landroid/graphics/RectF;
    iget-object v5, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    iget-object v6, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, v0, Landroid/graphics/RectF;->bottom:F

    .line 730
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget v6, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterPadding:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mTopPadding:F

    add-float v1, v5, v6

    .line 731
    iget-object v5, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorStyle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    sget-object v6, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->None:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    if-eq v5, v6, :cond_0

    .line 732
    iget v5, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    add-float/2addr v1, v5

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 680
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mScrollState:I

    .line 682
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 685
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 689
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    .line 690
    iput p3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentOffset:I

    .line 691
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 693
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 696
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 700
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mScrollState:I

    if-nez v0, :cond_0

    .line 701
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    .line 702
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 706
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 708
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 742
    move-object v0, p1

    check-cast v0, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    .line 743
    .local v0, "savedState":Lcom/viewpagerindicator/TitlePageIndicator$SavedState;
    invoke-virtual {v0}, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 744
    iget v1, v0, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;->currentPage:I

    iput v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    .line 745
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->requestLayout()V

    .line 746
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 750
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 751
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    invoke-direct {v0, v1}, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 752
    .local v0, "savedState":Lcom/viewpagerindicator/TitlePageIndicator$SavedState;
    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    iput v2, v0, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;->currentPage:I

    .line 753
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 470
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 471
    const/16 v17, 0x1

    .line 562
    :goto_0
    return v17

    .line 473
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v17

    if-nez v17, :cond_2

    .line 474
    :cond_1
    const/16 v17, 0x0

    goto :goto_0

    .line 477
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 479
    .local v2, "action":I
    and-int/lit16 v0, v2, 0xff

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 562
    :cond_3
    :goto_1
    :pswitch_0
    const/16 v17, 0x1

    goto :goto_0

    .line 481
    :pswitch_1
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    .line 482
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mLastMotionX:F

    goto :goto_1

    .line 486
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 487
    .local v3, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v16

    .line 488
    .local v16, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mLastMotionX:F

    move/from16 v17, v0

    sub-float v5, v16, v17

    .line 490
    .local v5, "deltaX":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mIsDragging:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    .line 491
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTouchSlop:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_4

    .line 492
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mIsDragging:Z

    .line 496
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mIsDragging:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v17

    if-nez v17, :cond_5

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    .line 501
    :cond_5
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mLastMotionX:F

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto/16 :goto_1

    .line 511
    .end local v3    # "activePointerIndex":I
    .end local v5    # "deltaX":F
    .end local v16    # "x":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mIsDragging:Z

    move/from16 v17, v0

    if-nez v17, :cond_8

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    .line 513
    .local v4, "count":I
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v15

    .line 514
    .local v15, "width":I
    int-to-float v0, v15

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v7, v17, v18

    .line 515
    .local v7, "halfWidth":F
    int-to-float v0, v15

    move/from16 v17, v0

    const/high16 v18, 0x40c00000    # 6.0f

    div-float v14, v17, v18

    .line 516
    .local v14, "sixthWidth":F
    sub-float v9, v7, v14

    .line 517
    .local v9, "leftThird":F
    add-float v13, v7, v14

    .line 518
    .local v13, "rightThird":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 520
    .local v6, "eventX":F
    cmpg-float v17, v6, v9

    if-gez v17, :cond_6

    .line 521
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v17, v0

    if-lez v17, :cond_8

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 523
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 525
    :cond_6
    cmpl-float v17, v6, v13

    if-lez v17, :cond_7

    .line 526
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v17, v0

    add-int/lit8 v18, v4, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 528
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 532
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCenterItemClickListener:Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCenterItemClickListener:Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;->onCenterItemClick(I)V

    .line 538
    .end local v4    # "count":I
    .end local v6    # "eventX":F
    .end local v7    # "halfWidth":F
    .end local v9    # "leftThird":F
    .end local v13    # "rightThird":F
    .end local v14    # "sixthWidth":F
    .end local v15    # "width":I
    :cond_8
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mIsDragging:Z

    .line 539
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_1

    .line 544
    :pswitch_4
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v8

    .line 545
    .local v8, "index":I
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v16

    .line 546
    .restart local v16    # "x":F
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mLastMotionX:F

    .line 547
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    goto/16 :goto_1

    .line 552
    .end local v8    # "index":I
    .end local v16    # "x":F
    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v12

    .line 553
    .local v12, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v11

    .line 554
    .local v11, "pointerId":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v11, v0, :cond_9

    .line 555
    if-nez v12, :cond_a

    const/4 v10, 0x1

    .line 556
    .local v10, "newPointerIndex":I
    :goto_2
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    .line 558
    .end local v10    # "newPointerIndex":I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mLastMotionX:F

    goto/16 :goto_1

    .line 555
    :cond_a
    const/4 v10, 0x0

    goto :goto_2

    .line 479
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setClipPadding(F)V
    .locals 0
    .param p1, "clipPadding"    # F

    .prologue
    .line 292
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    .line 293
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 294
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 670
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 671
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 674
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    .line 675
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 676
    return-void
.end method

.method public setFooterColor(I)V
    .locals 1
    .param p1, "footerColor"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 193
    return-void
.end method

.method public setFooterIndicatorHeight(F)V
    .locals 0
    .param p1, "footerTriangleHeight"    # F

    .prologue
    .line 210
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    .line 211
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 212
    return-void
.end method

.method public setFooterIndicatorPadding(F)V
    .locals 0
    .param p1, "footerIndicatorPadding"    # F

    .prologue
    .line 219
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterPadding:F

    .line 220
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 221
    return-void
.end method

.method public setFooterIndicatorStyle(Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;)V
    .locals 0
    .param p1, "indicatorStyle"    # Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorStyle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    .line 229
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 230
    return-void
.end method

.method public setFooterLineHeight(F)V
    .locals 2
    .param p1, "footerLineHeight"    # F

    .prologue
    .line 200
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    .line 201
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 202
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 203
    return-void
.end method

.method public setOnCenterItemClickListener(Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;

    .prologue
    .line 665
    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCenterItemClickListener:Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;

    .line 666
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 712
    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 713
    return-void
.end method

.method public setSelectedBold(Z)V
    .locals 0
    .param p1, "selectedBold"    # Z

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mBoldText:Z

    .line 247
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 248
    return-void
.end method

.method public setSelectedColor(I)V
    .locals 0
    .param p1, "selectedColor"    # I

    .prologue
    .line 237
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorSelected:I

    .line 238
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 239
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "textColor"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 256
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorText:I

    .line 257
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 258
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "textSize"    # F

    .prologue
    .line 265
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 266
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 267
    return-void
.end method

.method public setTitlePadding(F)V
    .locals 0
    .param p1, "titlePadding"    # F

    .prologue
    .line 274
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    .line 275
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 276
    return-void
.end method

.method public setTopPadding(F)V
    .locals 0
    .param p1, "topPadding"    # F

    .prologue
    .line 283
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mTopPadding:F

    .line 284
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 285
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 298
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 299
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 3
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 635
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 636
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    if-nez v0, :cond_0

    .line 637
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ViewPager does not have adapter instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 639
    :cond_0
    instance-of v1, v0, Lcom/viewpagerindicator/TitleProvider;

    if-nez v1, :cond_1

    .line 640
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ViewPager adapter must implement TitleProvider to be used with TitlePageIndicator."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 642
    :cond_1
    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 643
    iget-object v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 644
    check-cast v0, Lcom/viewpagerindicator/TitleProvider;

    .end local v0    # "adapter":Landroid/support/v4/view/PagerAdapter;
    iput-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitleProvider:Lcom/viewpagerindicator/TitleProvider;

    .line 645
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 646
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;
    .param p2, "initialPosition"    # I

    .prologue
    .line 650
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/TitlePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 651
    invoke-virtual {p0, p2}, Lcom/viewpagerindicator/TitlePageIndicator;->setCurrentItem(I)V

    .line 652
    return-void
.end method
