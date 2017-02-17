.class public Lnet/veritran/component/view/VTInputTextView;
.super Landroid/widget/EditText;
.source "VTInputTextView.java"

# interfaces
.implements Lnet/veritran/component/view/VTUIComponentView;
.implements Lnet/veritran/component/view/VTTextInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "VTInputTextView"


# instance fields
.field private backgroundColor:Ljava/lang/Integer;

.field private borderColor:Ljava/lang/Integer;

.field private borderColorFocus:Ljava/lang/Integer;

.field private borderStyle:Ljava/lang/String;

.field component:Lnet/veritran/component/VTUIComponent;

.field private customDraw:Z

.field fixedBottomMargin:F

.field private fixedHeight:I

.field fixedLeftMargin:F

.field fixedRightMargin:F

.field fixedTopMargin:F

.field private fixedWidth:I

.field private inputName:Ljava/lang/String;

.field measuredBottomMargin:I

.field measuredLeftMargin:I

.field measuredRightMargin:I

.field measuredTopMargin:I

.field private onBlur:Ljava/lang/String;

.field private onFocus:Ljava/lang/String;

.field percentageBottomMargin:F

.field private percentageHeight:F

.field percentageLeftMargin:F

.field percentageRightMargin:F

.field percentageTopMargin:F

.field private percentageWidth:F

.field private textAlign:Ljava/lang/Integer;

.field private wasHintHeightPreCalculated:Z


# direct methods
.method public constructor <init>(Lnet/veritran/component/VTUIComponent;)V
    .locals 5
    .param p1, "component"    # Lnet/veritran/component/VTUIComponent;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    .line 69
    invoke-virtual {p1}, Lnet/veritran/component/VTUIComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 34
    iput v1, p0, Lnet/veritran/component/view/VTInputTextView;->percentageWidth:F

    .line 35
    iput v1, p0, Lnet/veritran/component/view/VTInputTextView;->percentageHeight:F

    .line 37
    iput v3, p0, Lnet/veritran/component/view/VTInputTextView;->percentageLeftMargin:F

    .line 38
    iput v3, p0, Lnet/veritran/component/view/VTInputTextView;->percentageTopMargin:F

    .line 39
    iput v3, p0, Lnet/veritran/component/view/VTInputTextView;->percentageRightMargin:F

    .line 40
    iput v3, p0, Lnet/veritran/component/view/VTInputTextView;->percentageBottomMargin:F

    .line 42
    iput v2, p0, Lnet/veritran/component/view/VTInputTextView;->measuredLeftMargin:I

    .line 43
    iput v2, p0, Lnet/veritran/component/view/VTInputTextView;->measuredRightMargin:I

    .line 44
    iput v2, p0, Lnet/veritran/component/view/VTInputTextView;->measuredTopMargin:I

    .line 45
    iput v2, p0, Lnet/veritran/component/view/VTInputTextView;->measuredBottomMargin:I

    .line 47
    iput v1, p0, Lnet/veritran/component/view/VTInputTextView;->fixedLeftMargin:F

    .line 48
    iput v1, p0, Lnet/veritran/component/view/VTInputTextView;->fixedRightMargin:F

    .line 49
    iput v1, p0, Lnet/veritran/component/view/VTInputTextView;->fixedTopMargin:F

    .line 50
    iput v1, p0, Lnet/veritran/component/view/VTInputTextView;->fixedBottomMargin:F

    .line 52
    iput v4, p0, Lnet/veritran/component/view/VTInputTextView;->fixedWidth:I

    .line 53
    iput v4, p0, Lnet/veritran/component/view/VTInputTextView;->fixedHeight:I

    .line 62
    iput-boolean v2, p0, Lnet/veritran/component/view/VTInputTextView;->customDraw:Z

    .line 63
    iput-boolean v2, p0, Lnet/veritran/component/view/VTInputTextView;->wasHintHeightPreCalculated:Z

    .line 70
    iput-object p1, p0, Lnet/veritran/component/view/VTInputTextView;->component:Lnet/veritran/component/VTUIComponent;

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 74
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTInputTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 75
    :cond_0
    invoke-virtual {p0}, Lnet/veritran/component/view/VTInputTextView;->setSingleLine()V

    .line 82
    invoke-virtual {p0}, Lnet/veritran/component/view/VTInputTextView;->getCustomOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTInputTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lnet/veritran/component/view/VTInputTextView;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/view/VTInputTextView;

    .prologue
    .line 26
    iget-object v0, p0, Lnet/veritran/component/view/VTInputTextView;->textAlign:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$100(Lnet/veritran/component/view/VTInputTextView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/view/VTInputTextView;

    .prologue
    .line 26
    iget-object v0, p0, Lnet/veritran/component/view/VTInputTextView;->onFocus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lnet/veritran/component/view/VTInputTextView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/view/VTInputTextView;

    .prologue
    .line 26
    iget-object v0, p0, Lnet/veritran/component/view/VTInputTextView;->onBlur:Ljava/lang/String;

    return-object v0
.end method

.method private createNinePatchDrawable(ZZ)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 36
    .param p1, "focus"    # Z
    .param p2, "disabled"    # Z

    .prologue
    .line 166
    sget v14, Lnet/veritran/VTAbstractActivity;->scale:F

    const/high16 v33, 0x40000000    # 2.0f

    cmpg-float v14, v14, v33

    if-gez v14, :cond_0

    .line 167
    const/16 v32, 0x18

    .line 168
    .local v32, "width":I
    const/16 v30, 0x32

    .line 169
    .local v30, "height":I
    const/16 v6, 0x16

    .line 170
    .local v6, "top":I
    const/16 v8, 0x17

    .line 171
    .local v8, "bottom":I
    const/16 v7, 0xb

    .line 172
    .local v7, "left":I
    const/16 v9, 0xc

    .line 173
    .local v9, "right":I
    const/16 v12, 0x8

    .line 174
    .local v12, "paddingTop":I
    const/16 v13, 0x26

    .line 175
    .local v13, "paddingBottom":I
    const/16 v10, 0xb

    .line 176
    .local v10, "paddingLeft":I
    const/16 v11, 0xc

    .line 177
    .local v11, "paddingRight":I
    const/16 v18, 0x2

    .line 178
    .local v18, "backTop":I
    const/16 v15, 0x2a

    .line 179
    .local v15, "backBottom":I
    const/16 v16, 0x4

    .line 180
    .local v16, "backLeft":I
    const/16 v17, 0x13

    .line 181
    .local v17, "backRight":I
    const/16 v28, 0x1

    .line 182
    .local v28, "borderTop":I
    const/16 v22, 0x2b

    .line 183
    .local v22, "borderBottom":I
    const/16 v23, 0x3

    .line 184
    .local v23, "borderLeft":I
    const/16 v27, 0x14

    .line 185
    .local v27, "borderRight":I
    const/16 v25, 0xa

    .line 208
    .local v25, "borderRadius":I
    :goto_0
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v32

    move/from16 v1, v30

    invoke-static {v0, v1, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 209
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    new-instance v29, Landroid/graphics/Canvas;

    move-object/from16 v0, v29

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 210
    .local v29, "canvas":Landroid/graphics/Canvas;
    const/4 v14, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 213
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    .line 214
    .local v19, "backgroundPaint":Landroid/graphics/Paint;
    const/4 v14, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 215
    if-nez p2, :cond_2

    .line 216
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/view/VTInputTextView;->backgroundColor:Ljava/lang/Integer;

    if-eqz v14, :cond_1

    .line 217
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/view/VTInputTextView;->backgroundColor:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 229
    :goto_1
    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 230
    sget-object v14, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 232
    new-instance v20, Landroid/graphics/Rect;

    move-object/from16 v0, v20

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 233
    .local v20, "backgroundRect":Landroid/graphics/Rect;
    new-instance v21, Landroid/graphics/RectF;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 234
    .local v21, "backgroundRectF":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/view/VTInputTextView;->borderStyle:Ljava/lang/String;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/view/VTInputTextView;->borderStyle:Ljava/lang/String;

    const-string v33, "rounded"

    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 235
    const/high16 v14, 0x40000000    # 2.0f

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 236
    move/from16 v0, v25

    int-to-float v14, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    move/from16 v2, v33

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 242
    :goto_2
    new-instance v24, Landroid/graphics/Paint;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Paint;-><init>()V

    .line 243
    .local v24, "borderPaint":Landroid/graphics/Paint;
    const/4 v14, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 244
    if-eqz p1, :cond_6

    .line 245
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/view/VTInputTextView;->borderColorFocus:Ljava/lang/Integer;

    if-eqz v14, :cond_5

    .line 246
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/view/VTInputTextView;->borderColorFocus:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    :goto_3
    const/high16 v14, 0x40a00000    # 5.0f

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 259
    :goto_4
    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 261
    new-instance v26, Landroid/graphics/Rect;

    move-object/from16 v0, v26

    move/from16 v1, v23

    move/from16 v2, v28

    move/from16 v3, v27

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 262
    .local v26, "borderRect":Landroid/graphics/Rect;
    new-instance v31, Landroid/graphics/RectF;

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 263
    .local v31, "rectF":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/view/VTInputTextView;->borderStyle:Ljava/lang/String;

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/view/VTInputTextView;->borderStyle:Ljava/lang/String;

    const-string v33, "square"

    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 264
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 275
    :goto_5
    new-instance v33, Landroid/graphics/drawable/NinePatchDrawable;

    const/4 v14, 0x0

    invoke-static/range {v5 .. v14}, Lnet/veritran/component/view/VUIComponentUtils;->createFixedNinePatch(Landroid/graphics/Bitmap;IIIIIIIILjava/lang/String;)Landroid/graphics/NinePatch;

    move-result-object v14

    move-object/from16 v0, v33

    invoke-direct {v0, v14}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/NinePatch;)V

    return-object v33

    .line 187
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "top":I
    .end local v7    # "left":I
    .end local v8    # "bottom":I
    .end local v9    # "right":I
    .end local v10    # "paddingLeft":I
    .end local v11    # "paddingRight":I
    .end local v12    # "paddingTop":I
    .end local v13    # "paddingBottom":I
    .end local v15    # "backBottom":I
    .end local v16    # "backLeft":I
    .end local v17    # "backRight":I
    .end local v18    # "backTop":I
    .end local v19    # "backgroundPaint":Landroid/graphics/Paint;
    .end local v20    # "backgroundRect":Landroid/graphics/Rect;
    .end local v21    # "backgroundRectF":Landroid/graphics/RectF;
    .end local v22    # "borderBottom":I
    .end local v23    # "borderLeft":I
    .end local v24    # "borderPaint":Landroid/graphics/Paint;
    .end local v25    # "borderRadius":I
    .end local v26    # "borderRect":Landroid/graphics/Rect;
    .end local v27    # "borderRight":I
    .end local v28    # "borderTop":I
    .end local v29    # "canvas":Landroid/graphics/Canvas;
    .end local v30    # "height":I
    .end local v31    # "rectF":Landroid/graphics/RectF;
    .end local v32    # "width":I
    :cond_0
    const/16 v32, 0x2e

    .line 188
    .restart local v32    # "width":I
    const/16 v30, 0x62

    .line 189
    .restart local v30    # "height":I
    const/16 v6, 0x2c

    .line 190
    .restart local v6    # "top":I
    const/16 v8, 0x2d

    .line 191
    .restart local v8    # "bottom":I
    const/16 v7, 0x16

    .line 192
    .restart local v7    # "left":I
    const/16 v9, 0x18

    .line 193
    .restart local v9    # "right":I
    const/16 v12, 0xe

    .line 194
    .restart local v12    # "paddingTop":I
    const/16 v13, 0x4a

    .line 195
    .restart local v13    # "paddingBottom":I
    const/16 v10, 0x16

    .line 196
    .restart local v10    # "paddingLeft":I
    const/16 v11, 0x18

    .line 197
    .restart local v11    # "paddingRight":I
    const/16 v18, 0x4

    .line 198
    .restart local v18    # "backTop":I
    const/16 v15, 0x54

    .line 199
    .restart local v15    # "backBottom":I
    const/16 v16, 0x7

    .line 200
    .restart local v16    # "backLeft":I
    const/16 v17, 0x27

    .line 201
    .restart local v17    # "backRight":I
    const/16 v28, 0x2

    .line 202
    .restart local v28    # "borderTop":I
    const/16 v22, 0x56

    .line 203
    .restart local v22    # "borderBottom":I
    const/16 v23, 0x5

    .line 204
    .restart local v23    # "borderLeft":I
    const/16 v27, 0x29

    .line 205
    .restart local v27    # "borderRight":I
    const/16 v25, 0x64

    .restart local v25    # "borderRadius":I
    goto/16 :goto_0

    .line 219
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v19    # "backgroundPaint":Landroid/graphics/Paint;
    .restart local v29    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    const/16 v14, 0xf2

    const/16 v33, 0xff

    const/16 v34, 0xff

    const/16 v35, 0xff

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v14, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 222
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/view/VTInputTextView;->backgroundColor:Ljava/lang/Integer;

    if-eqz v14, :cond_3

    .line 223
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/view/VTInputTextView;->backgroundColor:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    const/16 v14, 0x60

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_1

    .line 226
    :cond_3
    const/16 v14, 0x60

    const/16 v33, 0xff

    const/16 v34, 0xff

    const/16 v35, 0xff

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v14, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 238
    .restart local v20    # "backgroundRect":Landroid/graphics/Rect;
    .restart local v21    # "backgroundRectF":Landroid/graphics/RectF;
    :cond_4
    move-object/from16 v0, v29

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 248
    .restart local v24    # "borderPaint":Landroid/graphics/Paint;
    :cond_5
    const/16 v14, 0xff

    const/16 v33, 0xf9

    const/16 v34, 0x94

    const/16 v35, 0x20

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v14, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_3

    .line 252
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/view/VTInputTextView;->borderColor:Ljava/lang/Integer;

    if-eqz v14, :cond_7

    .line 253
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/view/VTInputTextView;->borderColor:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 257
    :goto_6
    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/16 :goto_4

    .line 255
    :cond_7
    const/16 v14, 0x7d

    const/16 v33, 0x91

    const/16 v34, 0x91

    const/16 v35, 0x91

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v14, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_6

    .line 265
    .restart local v26    # "borderRect":Landroid/graphics/Rect;
    .restart local v31    # "rectF":Landroid/graphics/RectF;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/view/VTInputTextView;->borderStyle:Ljava/lang/String;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/view/VTInputTextView;->borderStyle:Ljava/lang/String;

    const-string v33, "rounded"

    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 266
    move/from16 v0, v25

    int-to-float v14, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 268
    :cond_9
    if-eqz p1, :cond_a

    .line 269
    const/high16 v14, 0x41200000    # 10.0f

    const/high16 v33, 0x41200000    # 10.0f

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 271
    :cond_a
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_5
.end method

.method private updateBackgroundAndBorders()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 119
    iget-object v1, p0, Lnet/veritran/component/view/VTInputTextView;->backgroundColor:Ljava/lang/Integer;

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/veritran/component/view/VTInputTextView;->borderColor:Ljava/lang/Integer;

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/veritran/component/view/VTInputTextView;->borderColorFocus:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 123
    :cond_0
    iget-object v1, p0, Lnet/veritran/component/view/VTInputTextView;->component:Lnet/veritran/component/VTUIComponent;

    invoke-virtual {v1}, Lnet/veritran/component/VTUIComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v1

    const-string v2, "2r"

    invoke-virtual {v1, v2, v3}, Lnet/veritran/VTCommonActivity;->resolveSizeInPixels(Ljava/lang/String;Z)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 124
    .local v0, "paddingLeftRight":I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/veritran/component/view/VTInputTextView;->customDraw:Z

    .line 126
    invoke-virtual {p0, v3}, Lnet/veritran/component/view/VTInputTextView;->setBackgroundColor(I)V

    .line 127
    invoke-virtual {p0, v0, v3, v0, v3}, Lnet/veritran/component/view/VTInputTextView;->setPadding(IIII)V

    .line 133
    .end local v0    # "paddingLeftRight":I
    :goto_0
    return-void

    .line 131
    :cond_1
    iput-boolean v3, p0, Lnet/veritran/component/view/VTInputTextView;->customDraw:Z

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 535
    const-string v0, ""

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTInputTextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    return-void
.end method

.method public forceFocus()V
    .locals 3

    .prologue
    .line 528
    invoke-virtual {p0}, Lnet/veritran/component/view/VTInputTextView;->requestFocus()Z

    .line 529
    invoke-virtual {p0}, Lnet/veritran/component/view/VTInputTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 530
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 531
    return-void
.end method

.method public getCustomOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lnet/veritran/component/view/VTInputTextView$1;

    invoke-direct {v0, p0}, Lnet/veritran/component/view/VTInputTextView$1;-><init>(Lnet/veritran/component/view/VTInputTextView;)V

    return-object v0
.end method

.method public getFixedHeight()I
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Lnet/veritran/component/view/VTInputTextView;->fixedHeight:I

    return v0
.end method

.method public getFixedWidth()I
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Lnet/veritran/component/view/VTInputTextView;->fixedWidth:I

    return v0
.end method

.method public getHeightPercentage()F
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lnet/veritran/component/view/VTInputTextView;->percentageHeight:F

    return v0
.end method

.method public getInputName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lnet/veritran/component/view/VTInputTextView;->inputName:Ljava/lang/String;

    return-object v0
.end method

.method public getMeasuredBottomMargin()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lnet/veritran/component/view/VTInputTextView;->measuredBottomMargin:I

    return v0
.end method

.method public getMeasuredLeftMargin()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lnet/veritran/component/view/VTInputTextView;->measuredLeftMargin:I

    return v0
.end method

.method public getMeasuredRightMargin()I
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Lnet/veritran/component/view/VTInputTextView;->measuredRightMargin:I

    return v0
.end method

.method public getMeasuredTopMargin()I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lnet/veritran/component/view/VTInputTextView;->measuredTopMargin:I

    return v0
.end method

.method public getTextAlign()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lnet/veritran/component/view/VTInputTextView;->textAlign:Ljava/lang/Integer;

    return-object v0
.end method

.method public getVTUIComponent()Lnet/veritran/component/VTUIComponent;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lnet/veritran/component/view/VTInputTextView;->component:Lnet/veritran/component/VTUIComponent;

    return-object v0
.end method

.method public getWidthPercentage()F
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lnet/veritran/component/view/VTInputTextView;->percentageWidth:F

    return v0
.end method

.method public isWasHintHeightPreCalculated()Z
    .locals 1

    .prologue
    .line 598
    iget-boolean v0, p0, Lnet/veritran/component/view/VTInputTextView;->wasHintHeightPreCalculated:Z

    return v0
.end method

.method public measureAbsoluteMargins()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, -0x40800000    # -1.0f

    .line 475
    iget v0, p0, Lnet/veritran/component/view/VTInputTextView;->fixedLeftMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lnet/veritran/component/view/VTInputTextView;->percentageLeftMargin:F

    .line 476
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_0
    iput v0, p0, Lnet/veritran/component/view/VTInputTextView;->measuredLeftMargin:I

    .line 477
    iget v0, p0, Lnet/veritran/component/view/VTInputTextView;->fixedRightMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lnet/veritran/component/view/VTInputTextView;->percentageRightMargin:F

    .line 478
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_1
    iput v0, p0, Lnet/veritran/component/view/VTInputTextView;->measuredRightMargin:I

    .line 479
    iget v0, p0, Lnet/veritran/component/view/VTInputTextView;->fixedTopMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lnet/veritran/component/view/VTInputTextView;->percentageTopMargin:F

    .line 480
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_2
    iput v0, p0, Lnet/veritran/component/view/VTInputTextView;->measuredTopMargin:I

    .line 481
    iget v0, p0, Lnet/veritran/component/view/VTInputTextView;->fixedBottomMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lnet/veritran/component/view/VTInputTextView;->percentageBottomMargin:F

    .line 482
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_3
    iput v0, p0, Lnet/veritran/component/view/VTInputTextView;->measuredBottomMargin:I

    .line 483
    return-void

    .line 476
    :cond_0
    iget v0, p0, Lnet/veritran/component/view/VTInputTextView;->fixedLeftMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 478
    :cond_1
    iget v0, p0, Lnet/veritran/component/view/VTInputTextView;->fixedRightMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    .line 480
    :cond_2
    iget v0, p0, Lnet/veritran/component/view/VTInputTextView;->fixedTopMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_2

    .line 482
    :cond_3
    iget v0, p0, Lnet/veritran/component/view/VTInputTextView;->fixedBottomMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_3
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    const/16 v5, 0x91

    const/16 v4, 0xff

    .line 541
    iget-boolean v0, p0, Lnet/veritran/component/view/VTInputTextView;->customDraw:Z

    if-eqz v0, :cond_3

    .line 542
    const/16 v0, 0xf2

    invoke-static {v0, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    .line 544
    .local v9, "backColor":I
    iget-object v0, p0, Lnet/veritran/component/view/VTInputTextView;->backgroundColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lnet/veritran/component/view/VTInputTextView;->backgroundColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 548
    :cond_0
    invoke-virtual {p0}, Lnet/veritran/component/view/VTInputTextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 550
    const/16 v0, 0x60

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    .line 557
    :cond_1
    const/high16 v8, -0x40800000    # -1.0f

    .line 559
    .local v8, "borderSize":F
    invoke-virtual {p0}, Lnet/veritran/component/view/VTInputTextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 560
    iget-object v0, p0, Lnet/veritran/component/view/VTInputTextView;->borderColorFocus:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 562
    iget-object v0, p0, Lnet/veritran/component/view/VTInputTextView;->borderColorFocus:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 569
    .local v10, "borderColorResolved":I
    :goto_0
    invoke-virtual {p0}, Lnet/veritran/component/view/VTInputTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/utils/VTDisplayHelper;->getDefaultBorderFocusedStrokeWidth(Landroid/content/Context;)F

    move-result v8

    .line 585
    :goto_1
    invoke-virtual {p0}, Lnet/veritran/component/view/VTInputTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/utils/VTDisplayHelper;->getDefaultRoundedBorderRadius(Landroid/content/Context;)F

    move-result v7

    .line 587
    .local v7, "borderRadius":F
    iget-object v0, p0, Lnet/veritran/component/view/VTInputTextView;->borderStyle:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/veritran/component/view/VTInputTextView;->borderStyle:Ljava/lang/String;

    const-string v1, "square"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 588
    const/4 v7, 0x0

    .line 591
    :cond_2
    invoke-static {p0}, Lcom/nineoldandroids/view/ViewHelper;->getScrollX(Landroid/view/View;)F

    move-result v0

    add-float/2addr v0, v6

    float-to-int v1, v0

    invoke-static {p0}, Lcom/nineoldandroids/view/ViewHelper;->getScrollY(Landroid/view/View;)F

    move-result v0

    add-float/2addr v0, v6

    float-to-int v2, v0

    invoke-virtual {p0}, Lnet/veritran/component/view/VTInputTextView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lnet/veritran/component/view/VTInputTextView;->getHeight()I

    move-result v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lnet/veritran/utils/VTDisplayHelper;->drawBorderAndBackground(Landroid/graphics/Canvas;IIIILjava/lang/Integer;Ljava/lang/Integer;FF)V

    .line 594
    .end local v7    # "borderRadius":F
    .end local v8    # "borderSize":F
    .end local v9    # "backColor":I
    .end local v10    # "borderColorResolved":I
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 595
    return-void

    .line 566
    .restart local v8    # "borderSize":F
    .restart local v9    # "backColor":I
    :cond_4
    const/16 v0, 0xf9

    const/16 v1, 0x94

    const/16 v2, 0x20

    invoke-static {v4, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    .restart local v10    # "borderColorResolved":I
    goto :goto_0

    .line 573
    .end local v10    # "borderColorResolved":I
    :cond_5
    iget-object v0, p0, Lnet/veritran/component/view/VTInputTextView;->borderColor:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 575
    iget-object v0, p0, Lnet/veritran/component/view/VTInputTextView;->borderColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 582
    .restart local v10    # "borderColorResolved":I
    :goto_2
    invoke-virtual {p0}, Lnet/veritran/component/view/VTInputTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/utils/VTDisplayHelper;->getDefaultBorderStrokeWidth(Landroid/content/Context;)F

    move-result v8

    goto :goto_1

    .line 579
    .end local v10    # "borderColorResolved":I
    :cond_6
    const/16 v0, 0x7d

    invoke-static {v0, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    .restart local v10    # "borderColorResolved":I
    goto :goto_2
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 403
    const-string v0, "VTInputTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayout ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/component/view/VTInputTextView;->inputName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] -> getLeft():+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTInputTextView;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getTop():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTInputTextView;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getWidth():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTInputTextView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getHeight():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTInputTextView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 330
    invoke-virtual {p0}, Lnet/veritran/component/view/VTInputTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {p0, v10}, Lnet/veritran/component/view/VTInputTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 339
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lnet/veritran/component/view/VTInputTextView;->inputName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lnet/veritran/component/view/VTInputTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "inputName":Ljava/lang/String;
    const-string v10, "VTInputTextView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onMeasure ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] -> widthMeasureSpec: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";heightMeasureSpec:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 346
    .local v4, "mw":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 347
    .local v1, "mh":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 348
    .local v9, "sw":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 349
    .local v8, "sh":I
    invoke-static {v4}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v3

    .line 350
    .local v3, "modeWidth":Ljava/lang/String;
    invoke-static {v1}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, "modeHeight":Ljava/lang/String;
    const-string v10, "VTInputTextView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onMeasure ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] -> width("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "):"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";height("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "):"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Lnet/veritran/component/view/VTInputTextView;->measureAbsoluteMargins()V

    .line 355
    const-string v10, "VTInputTextView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onMeasure  ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] -> leftMargin:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lnet/veritran/component/view/VTInputTextView;->measuredLeftMargin:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";rightMargin:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lnet/veritran/component/view/VTInputTextView;->measuredRightMargin:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";topMargin:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lnet/veritran/component/view/VTInputTextView;->measuredTopMargin:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";bottomMargin:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lnet/veritran/component/view/VTInputTextView;->measuredBottomMargin:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget v10, p0, Lnet/veritran/component/view/VTInputTextView;->measuredLeftMargin:I

    sub-int v10, v9, v10

    iget v11, p0, Lnet/veritran/component/view/VTInputTextView;->measuredRightMargin:I

    sub-int v6, v10, v11

    .line 358
    .local v6, "pixelsWidth":I
    iget v10, p0, Lnet/veritran/component/view/VTInputTextView;->measuredTopMargin:I

    sub-int v10, v8, v10

    iget v11, p0, Lnet/veritran/component/view/VTInputTextView;->measuredBottomMargin:I

    sub-int v5, v10, v11

    .line 368
    .local v5, "pixelsHeight":I
    const-string v10, "VTInputTextView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onMeasure  ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] -> pixelsWidth:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";pixelsHeight:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v10, "VTInputTextView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onMeasure  ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] -> pixelsWidth="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";pixelsHeight="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const/4 v7, -0x1

    .line 373
    .local v7, "postHeight":I
    iget v10, p0, Lnet/veritran/component/view/VTInputTextView;->fixedHeight:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    .line 374
    iget v7, p0, Lnet/veritran/component/view/VTInputTextView;->fixedHeight:I

    .line 388
    :cond_0
    :goto_0
    const-string v10, "VTInputTextView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onMeasure ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] postHeight="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    if-le v7, v5, :cond_1

    if-eqz v1, :cond_1

    .line 390
    move v7, v5

    .line 393
    :cond_1
    invoke-virtual {p0, v6, v7}, Lnet/veritran/component/view/VTInputTextView;->setMeasuredDimension(II)V

    .line 397
    invoke-virtual {p0}, Lnet/veritran/component/view/VTInputTextView;->getMeasuredHeight()I

    move-result v7

    .line 398
    const-string v10, "VTInputTextView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onMeasure ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] postHeight2="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void

    .line 377
    :cond_2
    const/high16 v10, 0x40000000    # 2.0f

    .line 378
    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 377
    invoke-super {p0, v10, p2}, Landroid/widget/EditText;->onMeasure(II)V

    .line 381
    invoke-virtual {p0}, Lnet/veritran/component/view/VTInputTextView;->getMeasuredHeight()I

    move-result v7

    .line 383
    iget-boolean v10, p0, Lnet/veritran/component/view/VTInputTextView;->customDraw:Z

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lnet/veritran/component/view/VTInputTextView;->wasHintHeightPreCalculated:Z

    if-nez v10, :cond_0

    .line 385
    const/high16 v10, 0x3f000000    # 0.5f

    int-to-float v11, v7

    const v12, 0x3f19999a    # 0.6f

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    float-to-int v7, v10

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 408
    const-string v0, "VTInputTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSizeChanged ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/component/view/VTInputTextView;->inputName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] -> getLeft():+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTInputTextView;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getTop():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTInputTextView;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getWidth():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTInputTextView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getHeight():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTInputTextView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method public setComponentBackgroundColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 433
    iput-object p1, p0, Lnet/veritran/component/view/VTInputTextView;->backgroundColor:Ljava/lang/Integer;

    .line 434
    return-void
.end method

.method public setComponentBackgroundDrawable(Ljava/lang/String;)V
    .locals 0
    .param p1, "d"    # Ljava/lang/String;

    .prologue
    .line 517
    return-void
.end method

.method public setComponentBorderColors(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p1, "borderColor"    # Ljava/lang/Integer;
    .param p2, "borderColorFocus"    # Ljava/lang/Integer;
    .param p3, "borderStyle"    # Ljava/lang/String;

    .prologue
    .line 520
    iput-object p1, p0, Lnet/veritran/component/view/VTInputTextView;->borderColor:Ljava/lang/Integer;

    .line 521
    iput-object p2, p0, Lnet/veritran/component/view/VTInputTextView;->borderColorFocus:Ljava/lang/Integer;

    .line 522
    iput-object p3, p0, Lnet/veritran/component/view/VTInputTextView;->borderStyle:Ljava/lang/String;

    .line 523
    invoke-direct {p0}, Lnet/veritran/component/view/VTInputTextView;->updateBackgroundAndBorders()V

    .line 524
    return-void
.end method

.method public setComponentInnerAlignment(Ljava/lang/String;)V
    .locals 1
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 439
    if-eqz p1, :cond_0

    const-string v0, "center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTInputTextView;->setGravity(I)V

    .line 445
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTInputTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 453
    :goto_0
    invoke-virtual {p0}, Lnet/veritran/component/view/VTInputTextView;->getGravity()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/view/VTInputTextView;->textAlign:Ljava/lang/Integer;

    .line 454
    return-void

    .line 446
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTInputTextView;->setGravity(I)V

    .line 448
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTInputTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 450
    :cond_1
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTInputTextView;->setGravity(I)V

    goto :goto_0
.end method

.method public setComponentVerticalAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 460
    return-void
.end method

.method public setFixedHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 511
    iput p1, p0, Lnet/veritran/component/view/VTInputTextView;->fixedHeight:I

    .line 512
    return-void
.end method

.method public setFixedMargins(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 105
    const-string v0, "VTInputTextView"

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

    .line 106
    iput p1, p0, Lnet/veritran/component/view/VTInputTextView;->fixedLeftMargin:F

    .line 107
    iput p2, p0, Lnet/veritran/component/view/VTInputTextView;->fixedTopMargin:F

    .line 108
    iput p3, p0, Lnet/veritran/component/view/VTInputTextView;->fixedRightMargin:F

    .line 109
    iput p4, p0, Lnet/veritran/component/view/VTInputTextView;->fixedBottomMargin:F

    .line 110
    return-void
.end method

.method public setFixedWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 497
    iput p1, p0, Lnet/veritran/component/view/VTInputTextView;->fixedWidth:I

    .line 498
    return-void
.end method

.method public setFocusAndBlurActions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "onFocus"    # Ljava/lang/String;
    .param p2, "onBlur"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lnet/veritran/component/view/VTInputTextView;->onFocus:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lnet/veritran/component/view/VTInputTextView;->onBlur:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setHeightPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 470
    iput p1, p0, Lnet/veritran/component/view/VTInputTextView;->percentageHeight:F

    .line 471
    return-void
.end method

.method public setInputName(Ljava/lang/String;)V
    .locals 2
    .param p1, "inputName"    # Ljava/lang/String;

    .prologue
    .line 296
    iput-object p1, p0, Lnet/veritran/component/view/VTInputTextView;->inputName:Ljava/lang/String;

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vtinput-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTInputTextView;->setTag(Ljava/lang/Object;)V

    .line 298
    return-void
.end method

.method public setPercentageMargins(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 311
    iput p1, p0, Lnet/veritran/component/view/VTInputTextView;->percentageLeftMargin:F

    .line 312
    iput p2, p0, Lnet/veritran/component/view/VTInputTextView;->percentageTopMargin:F

    .line 313
    iput p3, p0, Lnet/veritran/component/view/VTInputTextView;->percentageRightMargin:F

    .line 314
    iput p4, p0, Lnet/veritran/component/view/VTInputTextView;->percentageBottomMargin:F

    .line 315
    return-void
.end method

.method public setWasHintHeightPreCalculated(Z)V
    .locals 0
    .param p1, "wasHintHeightPreCalculated"    # Z

    .prologue
    .line 602
    iput-boolean p1, p0, Lnet/veritran/component/view/VTInputTextView;->wasHintHeightPreCalculated:Z

    .line 603
    return-void
.end method

.method public setWidthPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 465
    iput p1, p0, Lnet/veritran/component/view/VTInputTextView;->percentageWidth:F

    .line 466
    return-void
.end method
