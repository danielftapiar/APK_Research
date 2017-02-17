.class public Lnet/veritran/component/view/VTListComboComponentView;
.super Landroid/widget/Spinner;
.source "VTListComboComponentView.java"

# interfaces
.implements Lnet/veritran/component/view/VTUIComponentView;


# static fields
.field private static final TAG:Ljava/lang/String; = "VListComboComponentView"


# instance fields
.field private backgroundColor:Ljava/lang/Integer;

.field private backgroundImage:Landroid/graphics/drawable/Drawable;

.field private borderColor:Ljava/lang/Integer;

.field private borderStyle:Ljava/lang/String;

.field private buttonBackgroundColor:Ljava/lang/Integer;

.field private buttonColor:Ljava/lang/Integer;

.field private buttonStyle:Ljava/lang/String;

.field fixedBottomMargin:F

.field private fixedHeight:I

.field fixedLeftMargin:F

.field fixedRightMargin:F

.field fixedTopMargin:F

.field private fixedWidth:I

.field measuredBottomMargin:I

.field measuredLeftMargin:I

.field measuredRightMargin:I

.field measuredTopMargin:I

.field percentageBottomMargin:F

.field private percentageHeight:F

.field percentageLeftMargin:F

.field percentageRightMargin:F

.field percentageTopMargin:F

.field private percentageWidth:F


# direct methods
.method public constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 4
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/high16 v0, -0x40800000    # -1.0f

    .line 59
    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 27
    iput v0, p0, Lnet/veritran/component/view/VTListComboComponentView;->percentageWidth:F

    .line 28
    iput v0, p0, Lnet/veritran/component/view/VTListComboComponentView;->percentageHeight:F

    .line 30
    iput v1, p0, Lnet/veritran/component/view/VTListComboComponentView;->percentageLeftMargin:F

    .line 31
    iput v1, p0, Lnet/veritran/component/view/VTListComboComponentView;->percentageTopMargin:F

    .line 32
    iput v1, p0, Lnet/veritran/component/view/VTListComboComponentView;->percentageRightMargin:F

    .line 33
    iput v1, p0, Lnet/veritran/component/view/VTListComboComponentView;->percentageBottomMargin:F

    .line 35
    iput v2, p0, Lnet/veritran/component/view/VTListComboComponentView;->measuredLeftMargin:I

    .line 36
    iput v2, p0, Lnet/veritran/component/view/VTListComboComponentView;->measuredRightMargin:I

    .line 37
    iput v2, p0, Lnet/veritran/component/view/VTListComboComponentView;->measuredTopMargin:I

    .line 38
    iput v2, p0, Lnet/veritran/component/view/VTListComboComponentView;->measuredBottomMargin:I

    .line 40
    iput v0, p0, Lnet/veritran/component/view/VTListComboComponentView;->fixedLeftMargin:F

    .line 41
    iput v0, p0, Lnet/veritran/component/view/VTListComboComponentView;->fixedRightMargin:F

    .line 42
    iput v0, p0, Lnet/veritran/component/view/VTListComboComponentView;->fixedTopMargin:F

    .line 43
    iput v0, p0, Lnet/veritran/component/view/VTListComboComponentView;->fixedBottomMargin:F

    .line 55
    iput v3, p0, Lnet/veritran/component/view/VTListComboComponentView;->fixedWidth:I

    .line 56
    iput v3, p0, Lnet/veritran/component/view/VTListComboComponentView;->fixedHeight:I

    .line 63
    return-void
.end method

.method private updateBackgroundAndBorders()V
    .locals 40

    .prologue
    .line 144
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    .line 145
    .local v37, "rounded":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/view/VTListComboComponentView;->borderStyle:Ljava/lang/String;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/view/VTListComboComponentView;->borderStyle:Ljava/lang/String;

    const-string v6, "rounded"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 146
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    .line 150
    :cond_0
    const/16 v25, 0x79

    .line 151
    .local v25, "DROP_DOWN_WIDTH_TEMPLATE":I
    const/16 v23, 0x49

    .line 152
    .local v23, "DROP_DOWN_HEIGHT_TEMPLATE":I
    const/16 v20, 0x500

    .line 153
    .local v20, "DEFAULT_DISPLAY_HEIGHT":I
    const/16 v21, 0x2d0

    .line 155
    .local v21, "DEFAULT_DISPLAY_WIDTH":I
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListComboComponentView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lnet/veritran/utils/VTDisplayHelper;->getDefaultRoundedBorderRadius(Landroid/content/Context;)F

    move-result v18

    .line 156
    .local v18, "DEFAULT_BORDER_RADIUS":F
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListComboComponentView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lnet/veritran/utils/VTDisplayHelper;->getDefaultBorderStrokeWidth(Landroid/content/Context;)F

    move-result v19

    .line 160
    .local v19, "DEFAULT_BORDER_STROKE_WIDTH":F
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListComboComponentView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lnet/veritran/utils/VTDisplayHelper;->getHeightPixel(Landroid/content/Context;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x49

    div-int/lit16 v0, v5, 0x500

    move/from16 v22, v0

    .line 161
    .local v22, "DROP_DOWN_HEIGHT":I
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListComboComponentView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lnet/veritran/utils/VTDisplayHelper;->getWidthPixel(Landroid/content/Context;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x79

    div-int/lit16 v0, v5, 0x2d0

    move/from16 v24, v0

    .line 163
    .local v24, "DROP_DOWN_WIDTH":I
    move/from16 v0, v24

    int-to-float v5, v0

    const/high16 v6, 0x42f20000    # 121.0f

    div-float v27, v5, v6

    .line 164
    .local v27, "WIDTH_MULTIPLIER":F
    move/from16 v0, v22

    int-to-float v5, v0

    const/high16 v6, 0x42920000    # 73.0f

    div-float v26, v5, v6

    .line 167
    .local v26, "HEIGHT_MULTIPLIER":F
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v24

    move/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 170
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 171
    .local v4, "canvas":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 174
    new-instance v28, Landroid/graphics/Paint;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Paint;-><init>()V

    .line 175
    .local v28, "backgroundLeftPaint":Landroid/graphics/Paint;
    const/4 v5, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 176
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/view/VTListComboComponentView;->backgroundColor:Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 177
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/view/VTListComboComponentView;->backgroundColor:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    :goto_0
    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 182
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 184
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 187
    new-instance v30, Landroid/graphics/RectF;

    const/high16 v5, 0x40800000    # 4.0f

    mul-float v5, v5, v27

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v6, v6, v26

    const/high16 v7, 0x41a00000    # 20.0f

    mul-float v7, v7, v27

    const/high16 v8, 0x427c0000    # 63.0f

    mul-float v8, v8, v26

    move-object/from16 v0, v30

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 189
    .local v30, "backgroundLeftRoundedRect":Landroid/graphics/RectF;
    move-object/from16 v0, v30

    move/from16 v1, v18

    move/from16 v2, v18

    move-object/from16 v3, v28

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 192
    new-instance v29, Landroid/graphics/RectF;

    const/high16 v5, 0x41400000    # 12.0f

    mul-float v5, v5, v27

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v6, v6, v26

    const/high16 v7, 0x425c0000    # 55.0f

    mul-float v7, v7, v27

    const/high16 v8, 0x427c0000    # 63.0f

    mul-float v8, v8, v26

    move-object/from16 v0, v29

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 193
    .local v29, "backgroundLeftRect":Landroid/graphics/RectF;
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 201
    .end local v30    # "backgroundLeftRoundedRect":Landroid/graphics/RectF;
    :goto_1
    new-instance v31, Landroid/graphics/Paint;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/Paint;-><init>()V

    .line 202
    .local v31, "backgroundRightPaint":Landroid/graphics/Paint;
    const/4 v5, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 203
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/view/VTListComboComponentView;->buttonBackgroundColor:Ljava/lang/Integer;

    if-eqz v5, :cond_4

    .line 204
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/view/VTListComboComponentView;->buttonBackgroundColor:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 208
    :goto_2
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 209
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 211
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 213
    new-instance v33, Landroid/graphics/RectF;

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v5, v5, v27

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v6, v6, v26

    const/high16 v7, 0x42e80000    # 116.0f

    mul-float v7, v7, v27

    const/high16 v8, 0x427c0000    # 63.0f

    mul-float v8, v8, v26

    move-object/from16 v0, v33

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 216
    .local v33, "backgroundRightRoundedRect":Landroid/graphics/RectF;
    move-object/from16 v0, v33

    move/from16 v1, v18

    move/from16 v2, v18

    move-object/from16 v3, v31

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 219
    new-instance v32, Landroid/graphics/RectF;

    const/high16 v5, 0x42600000    # 56.0f

    mul-float v5, v5, v27

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v6, v6, v26

    const/high16 v7, 0x42e80000    # 116.0f

    mul-float v7, v7, v27

    const/high16 v8, 0x427c0000    # 63.0f

    mul-float v8, v8, v26

    move-object/from16 v0, v32

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 220
    .local v32, "backgroundRightRect":Landroid/graphics/RectF;
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 228
    .end local v33    # "backgroundRightRoundedRect":Landroid/graphics/RectF;
    :goto_3
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 229
    .local v9, "borderPaint":Landroid/graphics/Paint;
    const/4 v5, 0x1

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 230
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/view/VTListComboComponentView;->borderColor:Ljava/lang/Integer;

    if-eqz v5, :cond_6

    .line 231
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/view/VTListComboComponentView;->borderColor:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    :goto_4
    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 236
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 239
    new-instance v34, Landroid/graphics/RectF;

    const/high16 v5, 0x40800000    # 4.0f

    mul-float v5, v5, v27

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v6, v6, v26

    const/high16 v7, 0x42e80000    # 116.0f

    mul-float v7, v7, v27

    const/high16 v8, 0x427c0000    # 63.0f

    mul-float v8, v8, v26

    move-object/from16 v0, v34

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 240
    .local v34, "borderRect":Landroid/graphics/RectF;
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 242
    move-object/from16 v0, v34

    move/from16 v1, v18

    move/from16 v2, v18

    invoke-virtual {v4, v0, v1, v2, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 247
    :goto_5
    const/high16 v5, 0x425c0000    # 55.0f

    mul-float v5, v5, v27

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v6, v6, v26

    const/high16 v7, 0x425c0000    # 55.0f

    mul-float v7, v7, v27

    const/high16 v8, 0x427c0000    # 63.0f

    mul-float v8, v8, v26

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 250
    new-instance v35, Landroid/graphics/Paint;

    invoke-direct/range {v35 .. v35}, Landroid/graphics/Paint;-><init>()V

    .line 251
    .local v35, "buttonPaint":Landroid/graphics/Paint;
    const/4 v5, 0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 252
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/view/VTListComboComponentView;->buttonColor:Ljava/lang/Integer;

    if-eqz v5, :cond_8

    .line 253
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/view/VTListComboComponentView;->buttonColor:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 257
    :goto_6
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 258
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 260
    new-instance v38, Landroid/graphics/Path;

    invoke-direct/range {v38 .. v38}, Landroid/graphics/Path;-><init>()V

    .line 267
    .local v38, "trianglePath":Landroid/graphics/Path;
    const/high16 v5, 0x42880000    # 68.0f

    mul-float v5, v5, v27

    const/high16 v6, 0x41d00000    # 26.0f

    mul-float v6, v6, v26

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 268
    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v5, v5, v27

    const/high16 v6, 0x41d00000    # 26.0f

    mul-float v6, v6, v26

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 269
    const/high16 v5, 0x42a90000    # 84.5f

    mul-float v5, v5, v27

    const/high16 v6, 0x42380000    # 46.0f

    mul-float v6, v6, v26

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 270
    const/high16 v5, 0x42880000    # 68.0f

    mul-float v5, v5, v27

    const/high16 v6, 0x41d00000    # 26.0f

    mul-float v6, v6, v26

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 271
    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Path;->close()V

    .line 274
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/view/VTListComboComponentView;->buttonStyle:Ljava/lang/String;

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/view/VTListComboComponentView;->buttonStyle:Ljava/lang/String;

    const-string v6, "vShape"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 275
    const/4 v5, 0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 276
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 277
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 278
    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 279
    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 281
    new-instance v39, Landroid/graphics/Path;

    invoke-direct/range {v39 .. v39}, Landroid/graphics/Path;-><init>()V

    .line 282
    .local v39, "vShapePath":Landroid/graphics/Path;
    sget-object v5, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 287
    const/high16 v5, 0x42920000    # 73.0f

    mul-float v5, v5, v27

    const/high16 v6, 0x41d00000    # 26.0f

    mul-float v6, v6, v26

    move-object/from16 v0, v39

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 288
    const/high16 v5, 0x42a90000    # 84.5f

    mul-float v5, v5, v27

    const/high16 v6, 0x42140000    # 37.0f

    mul-float v6, v6, v26

    move-object/from16 v0, v39

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 289
    const/high16 v5, 0x42be0000    # 95.0f

    mul-float v5, v5, v27

    const/high16 v6, 0x41d00000    # 26.0f

    mul-float v6, v6, v26

    move-object/from16 v0, v39

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 291
    move-object/from16 v0, v39

    move-object/from16 v1, v35

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 301
    .end local v39    # "vShapePath":Landroid/graphics/Path;
    :goto_7
    const/4 v5, 0x2

    new-array v11, v5, [I

    .line 302
    .local v11, "xAxis":[I
    const/4 v5, 0x4

    new-array v12, v5, [I

    .line 303
    .local v12, "yAxis":[I
    const/4 v5, 0x0

    const/high16 v6, 0x41e80000    # 29.0f

    mul-float v6, v6, v27

    float-to-int v6, v6

    aput v6, v11, v5

    .line 304
    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x42000000    # 32.0f

    mul-float v7, v7, v27

    add-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, v11, v5

    .line 306
    const/4 v5, 0x0

    const/high16 v6, 0x41a00000    # 20.0f

    mul-float v6, v6, v26

    float-to-int v6, v6

    aput v6, v12, v5

    .line 307
    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x41a80000    # 21.0f

    mul-float v7, v7, v26

    add-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, v12, v5

    .line 308
    const/4 v5, 0x2

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x42480000    # 50.0f

    mul-float v7, v7, v26

    add-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, v12, v5

    .line 309
    const/4 v5, 0x3

    const/high16 v6, 0x3fc00000    # 1.5f

    const/high16 v7, 0x42480000    # 50.0f

    mul-float v7, v7, v26

    add-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, v12, v5

    .line 322
    new-instance v36, Landroid/graphics/Rect;

    invoke-direct/range {v36 .. v36}, Landroid/graphics/Rect;-><init>()V

    .line 323
    .local v36, "padding":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListComboComponentView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 325
    new-instance v36, Landroid/graphics/Rect;

    .end local v36    # "padding":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListComboComponentView;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListComboComponentView;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListComboComponentView;->getPaddingRight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListComboComponentView;->getPaddingBottom()I

    move-result v8

    move-object/from16 v0, v36

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 344
    .restart local v36    # "padding":Landroid/graphics/Rect;
    :cond_1
    new-instance v5, Landroid/graphics/drawable/NinePatchDrawable;

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x41700000    # 15.0f

    mul-float v7, v7, v27

    add-float/2addr v6, v7

    float-to-int v13, v6

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x42300000    # 44.0f

    mul-float v7, v7, v26

    add-float/2addr v6, v7

    float-to-int v14, v6

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x41300000    # 11.0f

    mul-float v7, v7, v27

    add-float/2addr v6, v7

    float-to-int v15, v6

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x42600000    # 56.0f

    mul-float v7, v7, v26

    add-float/2addr v6, v7

    float-to-int v0, v6

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v10 .. v17}, Lnet/veritran/component/view/VUIComponentUtils;->createFixedNinePatch(Landroid/graphics/Bitmap;[I[IIIIILjava/lang/String;)Landroid/graphics/NinePatch;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/NinePatch;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lnet/veritran/component/view/VTListComboComponentView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 349
    move-object/from16 v0, v36

    iget v5, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v36

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v36

    iget v7, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v36

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lnet/veritran/component/view/VTListComboComponentView;->setPadding(IIII)V

    .line 350
    return-void

    .line 179
    .end local v9    # "borderPaint":Landroid/graphics/Paint;
    .end local v11    # "xAxis":[I
    .end local v12    # "yAxis":[I
    .end local v29    # "backgroundLeftRect":Landroid/graphics/RectF;
    .end local v31    # "backgroundRightPaint":Landroid/graphics/Paint;
    .end local v32    # "backgroundRightRect":Landroid/graphics/RectF;
    .end local v34    # "borderRect":Landroid/graphics/RectF;
    .end local v35    # "buttonPaint":Landroid/graphics/Paint;
    .end local v36    # "padding":Landroid/graphics/Rect;
    .end local v38    # "trianglePath":Landroid/graphics/Path;
    :cond_2
    const/4 v5, -0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    .line 196
    :cond_3
    new-instance v29, Landroid/graphics/RectF;

    const/high16 v5, 0x40800000    # 4.0f

    mul-float v5, v5, v27

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v6, v6, v26

    const/high16 v7, 0x425c0000    # 55.0f

    mul-float v7, v7, v27

    const/high16 v8, 0x427c0000    # 63.0f

    mul-float v8, v8, v26

    move-object/from16 v0, v29

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 197
    .restart local v29    # "backgroundLeftRect":Landroid/graphics/RectF;
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 206
    .restart local v31    # "backgroundRightPaint":Landroid/graphics/Paint;
    :cond_4
    move-object/from16 v31, v28

    goto/16 :goto_2

    .line 223
    :cond_5
    new-instance v32, Landroid/graphics/RectF;

    const/high16 v5, 0x42600000    # 56.0f

    mul-float v5, v5, v27

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v6, v6, v26

    const/high16 v7, 0x42e80000    # 116.0f

    mul-float v7, v7, v27

    const/high16 v8, 0x427c0000    # 63.0f

    mul-float v8, v8, v26

    move-object/from16 v0, v32

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 224
    .restart local v32    # "backgroundRightRect":Landroid/graphics/RectF;
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 233
    .restart local v9    # "borderPaint":Landroid/graphics/Paint;
    :cond_6
    const v5, -0x777778

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 244
    .restart local v34    # "borderRect":Landroid/graphics/RectF;
    :cond_7
    move-object/from16 v0, v34

    invoke-virtual {v4, v0, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 255
    .restart local v35    # "buttonPaint":Landroid/graphics/Paint;
    :cond_8
    invoke-virtual {v9}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_6

    .line 292
    .restart local v38    # "trianglePath":Landroid/graphics/Path;
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/view/VTListComboComponentView;->buttonStyle:Ljava/lang/String;

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/view/VTListComboComponentView;->buttonStyle:Ljava/lang/String;

    const-string v6, "outlined"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 293
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 294
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 295
    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 297
    :cond_a
    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_7
.end method


# virtual methods
.method public getBackgroundImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lnet/veritran/component/view/VTListComboComponentView;->backgroundImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getFixedHeight()I
    .locals 1

    .prologue
    .line 405
    iget v0, p0, Lnet/veritran/component/view/VTListComboComponentView;->fixedHeight:I

    return v0
.end method

.method public getFixedWidth()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lnet/veritran/component/view/VTListComboComponentView;->fixedWidth:I

    return v0
.end method

.method public getHeightPercentage()F
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lnet/veritran/component/view/VTListComboComponentView;->percentageHeight:F

    return v0
.end method

.method public getMeasuredBottomMargin()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lnet/veritran/component/view/VTListComboComponentView;->measuredBottomMargin:I

    return v0
.end method

.method public getMeasuredLeftMargin()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lnet/veritran/component/view/VTListComboComponentView;->measuredLeftMargin:I

    return v0
.end method

.method public getMeasuredRightMargin()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lnet/veritran/component/view/VTListComboComponentView;->measuredRightMargin:I

    return v0
.end method

.method public getMeasuredTopMargin()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lnet/veritran/component/view/VTListComboComponentView;->measuredTopMargin:I

    return v0
.end method

.method public getWidthPercentage()F
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lnet/veritran/component/view/VTListComboComponentView;->percentageWidth:F

    return v0
.end method

.method public measureAbsoluteMargins()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, -0x40800000    # -1.0f

    .line 376
    iget v0, p0, Lnet/veritran/component/view/VTListComboComponentView;->fixedLeftMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lnet/veritran/component/view/VTListComboComponentView;->percentageLeftMargin:F

    .line 377
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_0
    iput v0, p0, Lnet/veritran/component/view/VTListComboComponentView;->measuredLeftMargin:I

    .line 378
    iget v0, p0, Lnet/veritran/component/view/VTListComboComponentView;->fixedRightMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lnet/veritran/component/view/VTListComboComponentView;->percentageRightMargin:F

    .line 379
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_1
    iput v0, p0, Lnet/veritran/component/view/VTListComboComponentView;->measuredRightMargin:I

    .line 380
    iget v0, p0, Lnet/veritran/component/view/VTListComboComponentView;->fixedTopMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lnet/veritran/component/view/VTListComboComponentView;->percentageTopMargin:F

    .line 381
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_2
    iput v0, p0, Lnet/veritran/component/view/VTListComboComponentView;->measuredTopMargin:I

    .line 382
    iget v0, p0, Lnet/veritran/component/view/VTListComboComponentView;->fixedBottomMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lnet/veritran/component/view/VTListComboComponentView;->percentageBottomMargin:F

    .line 383
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_3
    iput v0, p0, Lnet/veritran/component/view/VTListComboComponentView;->measuredBottomMargin:I

    .line 384
    return-void

    .line 377
    :cond_0
    iget v0, p0, Lnet/veritran/component/view/VTListComboComponentView;->fixedLeftMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 379
    :cond_1
    iget v0, p0, Lnet/veritran/component/view/VTListComboComponentView;->fixedRightMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    .line 381
    :cond_2
    iget v0, p0, Lnet/veritran/component/view/VTListComboComponentView;->fixedTopMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_2

    .line 383
    :cond_3
    iget v0, p0, Lnet/veritran/component/view/VTListComboComponentView;->fixedBottomMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v11, 0x0

    .line 430
    const-string v9, "VListComboComponentView"

    const-string v10, "paso por aqu\u00ed"

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Lnet/veritran/component/view/VTListComboComponentView;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    .line 433
    invoke-super {p0, v11, v11}, Landroid/widget/Spinner;->setMeasuredDimension(II)V

    .line 480
    :goto_0
    return-void

    .line 437
    :cond_0
    const-string v9, "VListComboComponentView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onMeasure [COMBO] -> widthMeasureSpec: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";heightMeasureSpec:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 443
    .local v3, "mw":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 444
    .local v0, "mh":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 445
    .local v8, "sw":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 446
    .local v7, "sh":I
    invoke-static {v3}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v2

    .line 447
    .local v2, "modeWidth":Ljava/lang/String;
    invoke-static {v0}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, "modeHeight":Ljava/lang/String;
    const-string v9, "VListComboComponentView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onMeasure [COMBO] -> width("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "):"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";height("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "):"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-virtual {p0}, Lnet/veritran/component/view/VTListComboComponentView;->measureAbsoluteMargins()V

    .line 452
    const-string v9, "VListComboComponentView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onMeasure  [COMBO] -> leftMargin:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lnet/veritran/component/view/VTListComboComponentView;->measuredLeftMargin:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";rightMargin:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lnet/veritran/component/view/VTListComboComponentView;->measuredRightMargin:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";topMargin:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lnet/veritran/component/view/VTListComboComponentView;->measuredTopMargin:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";bottomMargin:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lnet/veritran/component/view/VTListComboComponentView;->measuredBottomMargin:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget v9, p0, Lnet/veritran/component/view/VTListComboComponentView;->measuredLeftMargin:I

    sub-int v9, v8, v9

    iget v10, p0, Lnet/veritran/component/view/VTListComboComponentView;->measuredRightMargin:I

    sub-int v5, v9, v10

    .line 455
    .local v5, "pixelsWidth":I
    iget v9, p0, Lnet/veritran/component/view/VTListComboComponentView;->measuredTopMargin:I

    sub-int v9, v7, v9

    iget v10, p0, Lnet/veritran/component/view/VTListComboComponentView;->measuredBottomMargin:I

    sub-int v4, v9, v10

    .line 465
    .local v4, "pixelsHeight":I
    const-string v9, "VListComboComponentView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onMeasure  [COMBO] -> pixelsWidth:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";pixelsHeight:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v9, "VListComboComponentView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onMeasure  [COMBO] -> pixelsWidth="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";pixelsHeight="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const/high16 v9, 0x40000000    # 2.0f

    .line 468
    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 467
    invoke-super {p0, v9, p2}, Landroid/widget/Spinner;->onMeasure(II)V

    .line 471
    invoke-virtual {p0}, Lnet/veritran/component/view/VTListComboComponentView;->getMeasuredHeight()I

    move-result v6

    .line 472
    .local v6, "postHeight":I
    const-string v9, "VListComboComponentView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onMeasure [COMBO] postHeight="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0, v5, v6}, Lnet/veritran/component/view/VTListComboComponentView;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 417
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Spinner;->onScrollChanged(IIII)V

    .line 418
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/Model;->restartSessionTimeout()V

    .line 419
    return-void
.end method

.method public setBackgroundImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "backgroundImage"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 102
    iput-object p1, p0, Lnet/veritran/component/view/VTListComboComponentView;->backgroundImage:Landroid/graphics/drawable/Drawable;

    .line 103
    return-void
.end method

.method public setComponentBackgroundColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 127
    iput-object p1, p0, Lnet/veritran/component/view/VTListComboComponentView;->backgroundColor:Ljava/lang/Integer;

    .line 130
    return-void
.end method

.method public setComponentBackgroundDrawable(Ljava/lang/String;)V
    .locals 0
    .param p1, "d"    # Ljava/lang/String;

    .prologue
    .line 425
    return-void
.end method

.method public setComponentBorderColors(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "borderColor"    # Ljava/lang/Integer;
    .param p2, "borderStyle"    # Ljava/lang/String;
    .param p3, "buttonStyle"    # Ljava/lang/String;
    .param p4, "buttonBackgroundColor"    # Ljava/lang/Integer;
    .param p5, "buttonColor"    # Ljava/lang/Integer;

    .prologue
    .line 134
    iput-object p1, p0, Lnet/veritran/component/view/VTListComboComponentView;->borderColor:Ljava/lang/Integer;

    .line 135
    iput-object p2, p0, Lnet/veritran/component/view/VTListComboComponentView;->borderStyle:Ljava/lang/String;

    .line 136
    iput-object p3, p0, Lnet/veritran/component/view/VTListComboComponentView;->buttonStyle:Ljava/lang/String;

    .line 137
    iput-object p4, p0, Lnet/veritran/component/view/VTListComboComponentView;->buttonBackgroundColor:Ljava/lang/Integer;

    .line 138
    iput-object p5, p0, Lnet/veritran/component/view/VTListComboComponentView;->buttonColor:Ljava/lang/Integer;

    .line 139
    invoke-direct {p0}, Lnet/veritran/component/view/VTListComboComponentView;->updateBackgroundAndBorders()V

    .line 140
    return-void
.end method

.method public setComponentInnerAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 355
    return-void
.end method

.method public setComponentVerticalAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 362
    return-void
.end method

.method public setFixedHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 412
    iput p1, p0, Lnet/veritran/component/view/VTListComboComponentView;->fixedHeight:I

    .line 413
    return-void
.end method

.method public setFixedMargins(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 67
    const-string v0, "VListComboComponentView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFixedMargins("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iput p1, p0, Lnet/veritran/component/view/VTListComboComponentView;->fixedLeftMargin:F

    .line 69
    iput p2, p0, Lnet/veritran/component/view/VTListComboComponentView;->fixedTopMargin:F

    .line 70
    iput p3, p0, Lnet/veritran/component/view/VTListComboComponentView;->fixedRightMargin:F

    .line 71
    iput p4, p0, Lnet/veritran/component/view/VTListComboComponentView;->fixedBottomMargin:F

    .line 72
    return-void
.end method

.method public setFixedWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 398
    iput p1, p0, Lnet/veritran/component/view/VTListComboComponentView;->fixedWidth:I

    .line 399
    return-void
.end method

.method public setHeightPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 371
    iput p1, p0, Lnet/veritran/component/view/VTListComboComponentView;->percentageHeight:F

    .line 372
    return-void
.end method

.method public setPercentageMargins(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 85
    iput p1, p0, Lnet/veritran/component/view/VTListComboComponentView;->percentageLeftMargin:F

    .line 86
    iput p2, p0, Lnet/veritran/component/view/VTListComboComponentView;->percentageTopMargin:F

    .line 87
    iput p3, p0, Lnet/veritran/component/view/VTListComboComponentView;->percentageRightMargin:F

    .line 88
    iput p4, p0, Lnet/veritran/component/view/VTListComboComponentView;->percentageBottomMargin:F

    .line 89
    return-void
.end method

.method public setWidthPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 366
    iput p1, p0, Lnet/veritran/component/view/VTListComboComponentView;->percentageWidth:F

    .line 367
    return-void
.end method
