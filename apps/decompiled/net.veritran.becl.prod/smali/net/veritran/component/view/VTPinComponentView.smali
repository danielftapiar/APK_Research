.class public Lnet/veritran/component/view/VTPinComponentView;
.super Landroid/widget/FrameLayout;
.source "VTPinComponentView.java"

# interfaces
.implements Lnet/veritran/component/view/VTUIComponentView;
.implements Lnet/veritran/component/view/VTTextInterface;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final TAG:Ljava/lang/String; = "VTPinComponentView"


# instance fields
.field private backgroundColor:Ljava/lang/Integer;

.field private borderColor:Ljava/lang/Integer;

.field private borderColorFocus:Ljava/lang/Integer;

.field private borderStyle:Ljava/lang/String;

.field component:Lnet/veritran/component/VTUIComponent;

.field private fakeText:Landroid/widget/EditText;

.field fixedBottomMargin:F

.field private fixedHeight:I

.field fixedLeftMargin:F

.field fixedRightMargin:F

.field fixedTopMargin:F

.field private fixedWidth:I

.field private focused:Z

.field measuredBottomMargin:I

.field measuredLeftMargin:I

.field measuredRightMargin:I

.field measuredTopMargin:I

.field normalPinImage:Landroid/graphics/Bitmap;

.field private normalPinImageName:Ljava/lang/String;

.field private onBlur:Ljava/lang/String;

.field private onFocus:Ljava/lang/String;

.field percentageBottomMargin:F

.field private percentageHeight:F

.field percentageLeftMargin:F

.field percentageRightMargin:F

.field percentageTopMargin:F

.field private percentageWidth:F

.field private pinsCount:I

.field selectedPinImage:Landroid/graphics/Bitmap;

.field private selectedPinImageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/veritran/component/VTUIComponent;)V
    .locals 6
    .param p1, "component"    # Lnet/veritran/component/VTUIComponent;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    .line 76
    invoke-virtual {p1}, Lnet/veritran/component/VTUIComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 31
    iput v1, p0, Lnet/veritran/component/view/VTPinComponentView;->percentageWidth:F

    .line 32
    iput v1, p0, Lnet/veritran/component/view/VTPinComponentView;->percentageHeight:F

    .line 34
    iput v3, p0, Lnet/veritran/component/view/VTPinComponentView;->percentageLeftMargin:F

    .line 35
    iput v3, p0, Lnet/veritran/component/view/VTPinComponentView;->percentageTopMargin:F

    .line 36
    iput v3, p0, Lnet/veritran/component/view/VTPinComponentView;->percentageRightMargin:F

    .line 37
    iput v3, p0, Lnet/veritran/component/view/VTPinComponentView;->percentageBottomMargin:F

    .line 39
    iput v2, p0, Lnet/veritran/component/view/VTPinComponentView;->measuredLeftMargin:I

    .line 40
    iput v2, p0, Lnet/veritran/component/view/VTPinComponentView;->measuredRightMargin:I

    .line 41
    iput v2, p0, Lnet/veritran/component/view/VTPinComponentView;->measuredTopMargin:I

    .line 42
    iput v2, p0, Lnet/veritran/component/view/VTPinComponentView;->measuredBottomMargin:I

    .line 44
    iput v1, p0, Lnet/veritran/component/view/VTPinComponentView;->fixedLeftMargin:F

    .line 45
    iput v1, p0, Lnet/veritran/component/view/VTPinComponentView;->fixedRightMargin:F

    .line 46
    iput v1, p0, Lnet/veritran/component/view/VTPinComponentView;->fixedTopMargin:F

    .line 47
    iput v1, p0, Lnet/veritran/component/view/VTPinComponentView;->fixedBottomMargin:F

    .line 49
    iput v5, p0, Lnet/veritran/component/view/VTPinComponentView;->fixedWidth:I

    .line 50
    iput v5, p0, Lnet/veritran/component/view/VTPinComponentView;->fixedHeight:I

    .line 52
    iput-boolean v2, p0, Lnet/veritran/component/view/VTPinComponentView;->focused:Z

    .line 61
    const/4 v0, 0x4

    iput v0, p0, Lnet/veritran/component/view/VTPinComponentView;->pinsCount:I

    .line 78
    iput-object p1, p0, Lnet/veritran/component/view/VTPinComponentView;->component:Lnet/veritran/component/VTUIComponent;

    .line 81
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p1}, Lnet/veritran/component/VTUIComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/veritran/component/view/VTPinComponentView;->fakeText:Landroid/widget/EditText;

    .line 83
    iget-object v0, p0, Lnet/veritran/component/view/VTPinComponentView;->fakeText:Landroid/widget/EditText;

    new-instance v1, Lnet/veritran/component/view/VTPinComponentView$1;

    invoke-direct {v1, p0}, Lnet/veritran/component/view/VTPinComponentView$1;-><init>(Lnet/veritran/component/view/VTPinComponentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 107
    iget-object v0, p0, Lnet/veritran/component/view/VTPinComponentView;->fakeText:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 109
    iget-object v0, p0, Lnet/veritran/component/view/VTPinComponentView;->fakeText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTPinComponentView;->addView(Landroid/view/View;)V

    .line 111
    invoke-virtual {p0, v4}, Lnet/veritran/component/view/VTPinComponentView;->setFocusable(Z)V

    .line 113
    invoke-virtual {p0, v4}, Lnet/veritran/component/view/VTPinComponentView;->setClickable(Z)V

    .line 115
    new-instance v0, Lnet/veritran/component/view/VTPinComponentView$2;

    invoke-direct {v0, p0}, Lnet/veritran/component/view/VTPinComponentView$2;-><init>(Lnet/veritran/component/view/VTPinComponentView;)V

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTPinComponentView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lnet/veritran/component/view/VTPinComponentView;->fakeText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 129
    iget-object v0, p0, Lnet/veritran/component/view/VTPinComponentView;->fakeText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 130
    iget-object v0, p0, Lnet/veritran/component/view/VTPinComponentView;->fakeText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 132
    iget-object v0, p0, Lnet/veritran/component/view/VTPinComponentView;->fakeText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 133
    return-void
.end method

.method static synthetic access$000(Lnet/veritran/component/view/VTPinComponentView;)Z
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/view/VTPinComponentView;

    .prologue
    .line 25
    iget-boolean v0, p0, Lnet/veritran/component/view/VTPinComponentView;->focused:Z

    return v0
.end method

.method static synthetic access$002(Lnet/veritran/component/view/VTPinComponentView;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/veritran/component/view/VTPinComponentView;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lnet/veritran/component/view/VTPinComponentView;->focused:Z

    return p1
.end method

.method static synthetic access$100(Lnet/veritran/component/view/VTPinComponentView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/view/VTPinComponentView;

    .prologue
    .line 25
    iget-object v0, p0, Lnet/veritran/component/view/VTPinComponentView;->onFocus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lnet/veritran/component/view/VTPinComponentView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/view/VTPinComponentView;

    .prologue
    .line 25
    iget-object v0, p0, Lnet/veritran/component/view/VTPinComponentView;->onBlur:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .param p1, "textWatcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 532
    iget-object v0, p0, Lnet/veritran/component/view/VTPinComponentView;->fakeText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 533
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 604
    const-string v0, "VTPinComponentView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After text changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-virtual {p0}, Lnet/veritran/component/view/VTPinComponentView;->postInvalidate()V

    .line 606
    return-void
.end method

.method public append(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "substring"    # Ljava/lang/CharSequence;

    .prologue
    .line 575
    iget-object v0, p0, Lnet/veritran/component/view/VTPinComponentView;->fakeText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 576
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 598
    const-string v0, "VTPinComponentView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beforeTextChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    return-void
.end method

.method public beginBatchEdit()V
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lnet/veritran/component/view/VTPinComponentView;->fakeText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->beginBatchEdit()V

    .line 570
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 626
    const-string v0, ""

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTPinComponentView;->setText(Ljava/lang/CharSequence;)V

    .line 628
    iget-boolean v0, p0, Lnet/veritran/component/view/VTPinComponentView;->focused:Z

    if-eqz v0, :cond_0

    .line 630
    invoke-virtual {p0}, Lnet/veritran/component/view/VTPinComponentView;->forceFocus()V

    .line 632
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 255
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 256
    const-string v2, "VTPinComponentView"

    const-string v3, "dispatchDraw"

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/view/VTPinComponentView;->normalPinImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    .line 261
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lnet/veritran/component/view/VTPinComponentView;->focused:Z

    if-eqz v2, :cond_1

    .line 263
    const/4 v7, 0x0

    .line 265
    .local v7, "radius":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/view/VTPinComponentView;->borderStyle:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/view/VTPinComponentView;->borderStyle:Ljava/lang/String;

    const-string v3, "square"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 267
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPinComponentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lnet/veritran/utils/VTDisplayHelper;->getDefaultRoundedBorderRadius(Landroid/content/Context;)F

    move-result v7

    .line 270
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPinComponentView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPinComponentView;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/view/VTPinComponentView;->borderColorFocus:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/veritran/component/view/VTPinComponentView;->backgroundColor:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPinComponentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lnet/veritran/utils/VTDisplayHelper;->getDefaultBorderFocusedStrokeWidth(Landroid/content/Context;)F

    move-result v8

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lnet/veritran/utils/VTDisplayHelper;->drawBorderAndBackground(Landroid/graphics/Canvas;IILjava/lang/Integer;Ljava/lang/Integer;FF)V

    .line 285
    :goto_0
    new-instance v18, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/veritran/component/view/VTPinComponentView;->normalPinImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/view/VTPinComponentView;->normalPinImage:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 287
    .local v18, "src":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/view/VTPinComponentView;->normalPinImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/component/view/VTPinComponentView;->normalPinImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v15, v2, v3

    .line 290
    .local v15, "imageScale":F
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPinComponentView;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lnet/veritran/component/view/VTPinComponentView;->pinsCount:I

    div-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v17, v0

    .line 291
    .local v17, "pinWidth":F
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPinComponentView;->getHeight()I

    move-result v2

    int-to-float v0, v2

    move/from16 v16, v0

    .line 293
    .local v16, "pinHeight":F
    const v2, 0x3f4ccccd    # 0.8f

    mul-float v13, v17, v2

    .line 294
    .local v13, "dstWidth":F
    const v2, 0x3f4ccccd    # 0.8f

    mul-float v10, v16, v2

    .line 296
    .local v10, "dstHeight":F
    div-float v2, v13, v10

    cmpl-float v2, v2, v15

    if-lez v2, :cond_3

    .line 298
    mul-float v13, v15, v10

    .line 305
    :goto_1
    const/high16 v2, 0x3f000000    # 0.5f

    sub-float v3, v17, v13

    mul-float v12, v2, v3

    .line 306
    .local v12, "dstPadWidth":F
    const/high16 v2, 0x3f000000    # 0.5f

    sub-float v3, v16, v10

    mul-float v11, v2, v3

    .line 308
    .local v11, "dstPadHeight":F
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lnet/veritran/component/view/VTPinComponentView;->pinsCount:I

    if-ge v14, v2, :cond_6

    .line 310
    new-instance v9, Landroid/graphics/RectF;

    int-to-float v2, v14

    mul-float v2, v2, v17

    add-float/2addr v2, v12

    int-to-float v3, v14

    mul-float v3, v3, v17

    add-float/2addr v3, v13

    add-float/2addr v3, v12

    add-float v4, v10, v11

    invoke-direct {v9, v2, v11, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 312
    .local v9, "dst":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/view/VTPinComponentView;->fakeText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-gt v2, v14, :cond_4

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/view/VTPinComponentView;->normalPinImage:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 308
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 274
    .end local v7    # "radius":F
    .end local v9    # "dst":Landroid/graphics/RectF;
    .end local v10    # "dstHeight":F
    .end local v11    # "dstPadHeight":F
    .end local v12    # "dstPadWidth":F
    .end local v13    # "dstWidth":F
    .end local v14    # "i":I
    .end local v15    # "imageScale":F
    .end local v16    # "pinHeight":F
    .end local v17    # "pinWidth":F
    .end local v18    # "src":Landroid/graphics/Rect;
    :cond_1
    const/4 v7, 0x0

    .line 276
    .restart local v7    # "radius":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/view/VTPinComponentView;->borderStyle:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/view/VTPinComponentView;->borderStyle:Ljava/lang/String;

    const-string v3, "square"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 278
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPinComponentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lnet/veritran/utils/VTDisplayHelper;->getDefaultRoundedBorderRadius(Landroid/content/Context;)F

    move-result v7

    .line 281
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPinComponentView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPinComponentView;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/view/VTPinComponentView;->borderColor:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/veritran/component/view/VTPinComponentView;->backgroundColor:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTPinComponentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lnet/veritran/utils/VTDisplayHelper;->getDefaultBorderStrokeWidth(Landroid/content/Context;)F

    move-result v8

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lnet/veritran/utils/VTDisplayHelper;->drawBorderAndBackground(Landroid/graphics/Canvas;IILjava/lang/Integer;Ljava/lang/Integer;FF)V

    goto/16 :goto_0

    .line 302
    .restart local v10    # "dstHeight":F
    .restart local v13    # "dstWidth":F
    .restart local v15    # "imageScale":F
    .restart local v16    # "pinHeight":F
    .restart local v17    # "pinWidth":F
    .restart local v18    # "src":Landroid/graphics/Rect;
    :cond_3
    div-float v10, v13, v15

    goto :goto_1

    .line 318
    .restart local v9    # "dst":Landroid/graphics/RectF;
    .restart local v11    # "dstPadHeight":F
    .restart local v12    # "dstPadWidth":F
    .restart local v14    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/view/VTPinComponentView;->selectedPinImage:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_3

    .line 324
    .end local v7    # "radius":F
    .end local v9    # "dst":Landroid/graphics/RectF;
    .end local v10    # "dstHeight":F
    .end local v11    # "dstPadHeight":F
    .end local v12    # "dstPadWidth":F
    .end local v13    # "dstWidth":F
    .end local v14    # "i":I
    .end local v15    # "imageScale":F
    .end local v16    # "pinHeight":F
    .end local v17    # "pinWidth":F
    .end local v18    # "src":Landroid/graphics/Rect;
    :cond_5
    const-string v2, "VTPinComponentView"

    const-string v3, "normalPinImage null"

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_6
    return-void
.end method

.method public endBatchEdit()V
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lnet/veritran/component/view/VTPinComponentView;->fakeText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->endBatchEdit()V

    .line 582
    return-void
.end method

.method public forceFocus()V
    .locals 3

    .prologue
    .line 611
    iget-boolean v1, p0, Lnet/veritran/component/view/VTPinComponentView;->focused:Z

    if-nez v1, :cond_0

    .line 613
    invoke-virtual {p0}, Lnet/veritran/component/view/VTPinComponentView;->requestFocusFromTouch()Z

    .line 621
    :goto_0
    return-void

    .line 617
    :cond_0
    invoke-virtual {p0}, Lnet/veritran/component/view/VTPinComponentView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 619
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lnet/veritran/component/view/VTPinComponentView;->fakeText:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method

.method public getFixedHeight()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lnet/veritran/component/view/VTPinComponentView;->fixedHeight:I

    return v0
.end method

.method public getFixedWidth()I
    .locals 1

    .prologue
    .line 415
    iget v0, p0, Lnet/veritran/component/view/VTPinComponentView;->fixedWidth:I

    return v0
.end method

.method public getHeightPercentage()F
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Lnet/veritran/component/view/VTPinComponentView;->percentageHeight:F

    return v0
.end method

.method public getMeasuredBottomMargin()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lnet/veritran/component/view/VTPinComponentView;->measuredBottomMargin:I

    return v0
.end method

.method public getMeasuredLeftMargin()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lnet/veritran/component/view/VTPinComponentView;->measuredLeftMargin:I

    return v0
.end method

.method public getMeasuredRightMargin()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lnet/veritran/component/view/VTPinComponentView;->measuredRightMargin:I

    return v0
.end method

.method public getMeasuredTopMargin()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lnet/veritran/component/view/VTPinComponentView;->measuredTopMargin:I

    return v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lnet/veritran/component/view/VTPinComponentView;->fakeText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getVTUIComponent()Lnet/veritran/component/VTUIComponent;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lnet/veritran/component/view/VTPinComponentView;->component:Lnet/veritran/component/VTUIComponent;

    return-object v0
.end method

.method public getWidthPercentage()F
    .locals 1

    .prologue
    .line 405
    iget v0, p0, Lnet/veritran/component/view/VTPinComponentView;->percentageWidth:F

    return v0
.end method

.method public measureAbsoluteMargins()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, -0x40800000    # -1.0f

    .line 359
    iget v0, p0, Lnet/veritran/component/view/VTPinComponentView;->fixedLeftMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lnet/veritran/component/view/VTPinComponentView;->percentageLeftMargin:F

    .line 360
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_0
    iput v0, p0, Lnet/veritran/component/view/VTPinComponentView;->measuredLeftMargin:I

    .line 361
    iget v0, p0, Lnet/veritran/component/view/VTPinComponentView;->fixedRightMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lnet/veritran/component/view/VTPinComponentView;->percentageRightMargin:F

    .line 362
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_1
    iput v0, p0, Lnet/veritran/component/view/VTPinComponentView;->measuredRightMargin:I

    .line 363
    iget v0, p0, Lnet/veritran/component/view/VTPinComponentView;->fixedTopMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lnet/veritran/component/view/VTPinComponentView;->percentageTopMargin:F

    .line 364
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_2
    iput v0, p0, Lnet/veritran/component/view/VTPinComponentView;->measuredTopMargin:I

    .line 365
    iget v0, p0, Lnet/veritran/component/view/VTPinComponentView;->fixedBottomMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lnet/veritran/component/view/VTPinComponentView;->percentageBottomMargin:F

    .line 366
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_3
    iput v0, p0, Lnet/veritran/component/view/VTPinComponentView;->measuredBottomMargin:I

    .line 367
    return-void

    .line 360
    :cond_0
    iget v0, p0, Lnet/veritran/component/view/VTPinComponentView;->fixedLeftMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 362
    :cond_1
    iget v0, p0, Lnet/veritran/component/view/VTPinComponentView;->fixedRightMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    .line 364
    :cond_2
    iget v0, p0, Lnet/veritran/component/view/VTPinComponentView;->fixedTopMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_2

    .line 366
    :cond_3
    iget v0, p0, Lnet/veritran/component/view/VTPinComponentView;->fixedBottomMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_3
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 166
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 168
    if-eqz p1, :cond_0

    .line 169
    iget-object v0, p0, Lnet/veritran/component/view/VTPinComponentView;->fakeText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 171
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 175
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 178
    iget-object v0, p0, Lnet/veritran/component/view/VTPinComponentView;->fakeText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lnet/veritran/component/view/VTPinComponentView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTPinComponentView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/EditText;->layout(IIII)V

    .line 179
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 182
    invoke-virtual {p0}, Lnet/veritran/component/view/VTPinComponentView;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    .line 183
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-super {p0, v9, v10}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 245
    :goto_0
    return-void

    .line 187
    :cond_0
    const-string v9, "VTPinComponentView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onMeasure ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lnet/veritran/component/view/VTPinComponentView;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] -> widthMeasureSpec: "

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

    .line 188
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 189
    .local v4, "mw":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 190
    .local v1, "mh":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 191
    .local v8, "sw":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 192
    .local v7, "sh":I
    invoke-static {v4}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "modeWidth":Ljava/lang/String;
    invoke-static {v1}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "modeHeight":Ljava/lang/String;
    if-nez v1, :cond_1

    if-nez v7, :cond_1

    .line 195
    const/high16 v1, -0x80000000

    .line 196
    const v7, 0x7fffffff

    .line 197
    const-string v9, "VTPinComponentView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTPinComponentView;->getTag()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " onMeasure REDEF! -> width("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "):"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";height("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "):"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_1
    const-string v9, "VTPinComponentView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onMeasure ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lnet/veritran/component/view/VTPinComponentView;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] -> width("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "):"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";height("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "):"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lnet/veritran/component/view/VTPinComponentView;->measureAbsoluteMargins()V

    .line 202
    const-string v9, "VTPinComponentView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onMeasure ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lnet/veritran/component/view/VTPinComponentView;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] -> getMeasuredWidth("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lnet/veritran/component/view/VTPinComponentView;->getMeasuredWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ");getMeasuredHeight("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lnet/veritran/component/view/VTPinComponentView;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget v9, p0, Lnet/veritran/component/view/VTPinComponentView;->measuredLeftMargin:I

    sub-int v9, v8, v9

    iget v10, p0, Lnet/veritran/component/view/VTPinComponentView;->measuredRightMargin:I

    sub-int v6, v9, v10

    .line 205
    .local v6, "pixelsWidth":I
    iget v9, p0, Lnet/veritran/component/view/VTPinComponentView;->measuredTopMargin:I

    sub-int v9, v7, v9

    iget v10, p0, Lnet/veritran/component/view/VTPinComponentView;->measuredBottomMargin:I

    sub-int v5, v9, v10

    .line 209
    .local v5, "pixelsHeight":I
    iget v9, p0, Lnet/veritran/component/view/VTPinComponentView;->fixedWidth:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    .line 210
    iget v6, p0, Lnet/veritran/component/view/VTPinComponentView;->fixedWidth:I

    .line 212
    :cond_2
    iget v9, p0, Lnet/veritran/component/view/VTPinComponentView;->fixedHeight:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    .line 213
    iget v5, p0, Lnet/veritran/component/view/VTPinComponentView;->fixedHeight:I

    .line 217
    :cond_3
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v9

    invoke-virtual {v9}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v9

    iget-object v10, p0, Lnet/veritran/component/view/VTPinComponentView;->normalPinImageName:Ljava/lang/String;

    invoke-virtual {v9, v10, v6, v5}, Lnet/veritran/utils/ImageHandler;->getBitmapForSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lnet/veritran/component/view/VTPinComponentView;->normalPinImage:Landroid/graphics/Bitmap;

    .line 218
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v9

    invoke-virtual {v9}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v9

    iget-object v10, p0, Lnet/veritran/component/view/VTPinComponentView;->selectedPinImageName:Ljava/lang/String;

    invoke-virtual {v9, v10, v6, v5}, Lnet/veritran/utils/ImageHandler;->getBitmapForSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lnet/veritran/component/view/VTPinComponentView;->selectedPinImage:Landroid/graphics/Bitmap;

    .line 220
    iget-object v9, p0, Lnet/veritran/component/view/VTPinComponentView;->normalPinImage:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_8

    iget v9, p0, Lnet/veritran/component/view/VTPinComponentView;->fixedWidth:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_4

    invoke-virtual {p0}, Lnet/veritran/component/view/VTPinComponentView;->getWidthPercentage()F

    move-result v9

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_5

    :cond_4
    iget v9, p0, Lnet/veritran/component/view/VTPinComponentView;->fixedHeight:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_8

    invoke-virtual {p0}, Lnet/veritran/component/view/VTPinComponentView;->getHeightPercentage()F

    move-result v9

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_8

    .line 222
    :cond_5
    int-to-float v9, v6

    iget-object v10, p0, Lnet/veritran/component/view/VTPinComponentView;->normalPinImage:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    iget v11, p0, Lnet/veritran/component/view/VTPinComponentView;->pinsCount:I

    mul-int/2addr v10, v11

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v10, v5

    iget-object v11, p0, Lnet/veritran/component/view/VTPinComponentView;->normalPinImage:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 224
    .local v0, "imageScale":F
    iget v9, p0, Lnet/veritran/component/view/VTPinComponentView;->fixedWidth:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_6

    .line 226
    iget-object v9, p0, Lnet/veritran/component/view/VTPinComponentView;->normalPinImage:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v0

    iget v10, p0, Lnet/veritran/component/view/VTPinComponentView;->pinsCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v6, v9

    .line 229
    :cond_6
    iget v9, p0, Lnet/veritran/component/view/VTPinComponentView;->fixedHeight:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_7

    .line 231
    iget-object v9, p0, Lnet/veritran/component/view/VTPinComponentView;->normalPinImage:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v0

    float-to-int v5, v9

    .line 240
    .end local v0    # "imageScale":F
    :cond_7
    :goto_1
    const-string v9, "VTPinComponentView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onMeasure  ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lnet/veritran/component/view/VTPinComponentView;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] -> pixelsWidth="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";pixelsHeight="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-super {p0, v6, v5}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    goto/16 :goto_0

    .line 236
    :cond_8
    const-string v9, "VTPinComponentView"

    const-string v10, "onMeasure normalPinImage null"

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 592
    const-string v0, "VTPinComponentView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTextChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    return-void
.end method

.method public setComponentBackgroundColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 378
    iput-object p1, p0, Lnet/veritran/component/view/VTPinComponentView;->backgroundColor:Ljava/lang/Integer;

    .line 379
    return-void
.end method

.method public setComponentBackgroundDrawable(Ljava/lang/String;)V
    .locals 0
    .param p1, "d"    # Ljava/lang/String;

    .prologue
    .line 373
    return-void
.end method

.method public setComponentBorderColors(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p1, "borderColor"    # Ljava/lang/Integer;
    .param p2, "borderColorFocus"    # Ljava/lang/Integer;
    .param p3, "borderStyle"    # Ljava/lang/String;

    .prologue
    .line 454
    iput-object p1, p0, Lnet/veritran/component/view/VTPinComponentView;->borderColor:Ljava/lang/Integer;

    .line 455
    iput-object p2, p0, Lnet/veritran/component/view/VTPinComponentView;->borderColorFocus:Ljava/lang/Integer;

    .line 456
    iput-object p3, p0, Lnet/veritran/component/view/VTPinComponentView;->borderStyle:Ljava/lang/String;

    .line 457
    return-void
.end method

.method public setComponentInnerAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 385
    return-void
.end method

.method public setComponentVerticalAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 391
    return-void
.end method

.method public setCursorVisible(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 521
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/CharSequence;

    .prologue
    .line 503
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1
    .param p1, "inputFilters"    # [Landroid/text/InputFilter;

    .prologue
    .line 474
    iget-object v0, p0, Lnet/veritran/component/view/VTPinComponentView;->fakeText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 475
    return-void
.end method

.method public setFixedHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 430
    iput p1, p0, Lnet/veritran/component/view/VTPinComponentView;->fixedHeight:I

    .line 431
    return-void
.end method

.method public setFixedMargins(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 137
    const-string v0, "VTPinComponentView"

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

    .line 138
    iput p1, p0, Lnet/veritran/component/view/VTPinComponentView;->fixedLeftMargin:F

    .line 139
    iput p2, p0, Lnet/veritran/component/view/VTPinComponentView;->fixedTopMargin:F

    .line 140
    iput p3, p0, Lnet/veritran/component/view/VTPinComponentView;->fixedRightMargin:F

    .line 141
    iput p4, p0, Lnet/veritran/component/view/VTPinComponentView;->fixedBottomMargin:F

    .line 142
    return-void
.end method

.method public setFixedWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 420
    iput p1, p0, Lnet/veritran/component/view/VTPinComponentView;->fixedWidth:I

    .line 421
    return-void
.end method

.method public setFocusAndBlurActions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "onFocus"    # Ljava/lang/String;
    .param p2, "onBlur"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lnet/veritran/component/view/VTPinComponentView;->onFocus:Ljava/lang/String;

    .line 147
    iput-object p2, p0, Lnet/veritran/component/view/VTPinComponentView;->onBlur:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setHeightPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 400
    iput p1, p0, Lnet/veritran/component/view/VTPinComponentView;->percentageHeight:F

    .line 401
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    .line 463
    return-void
.end method

.method public setHintTextColor(I)V
    .locals 0
    .param p1, "iHintColor"    # I

    .prologue
    .line 469
    return-void
.end method

.method public setImeActionLabel(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "actionId"    # I

    .prologue
    .line 550
    iget-object v0, p0, Lnet/veritran/component/view/VTPinComponentView;->fakeText:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 551
    return-void
.end method

.method public setImeOptions(I)V
    .locals 1
    .param p1, "iMEOption"    # I

    .prologue
    .line 544
    iget-object v0, p0, Lnet/veritran/component/view/VTPinComponentView;->fakeText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 545
    return-void
.end method

.method public setInputName(Ljava/lang/String;)V
    .locals 2
    .param p1, "inputName"    # Ljava/lang/String;

    .prologue
    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vtinput-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTPinComponentView;->setTag(Ljava/lang/Object;)V

    .line 447
    return-void
.end method

.method public setInputType(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 514
    iget-object v0, p0, Lnet/veritran/component/view/VTPinComponentView;->fakeText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 515
    return-void
.end method

.method public setMinHeight(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 564
    return-void
.end method

.method public setNormalPinImageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "normalPinImageName"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lnet/veritran/component/view/VTPinComponentView;->normalPinImageName:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1
    .param p1, "onEditorActionListener"    # Landroid/widget/TextView$OnEditorActionListener;

    .prologue
    .line 557
    iget-object v0, p0, Lnet/veritran/component/view/VTPinComponentView;->fakeText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 558
    return-void
.end method

.method public setPercentageMargins(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 351
    iput p1, p0, Lnet/veritran/component/view/VTPinComponentView;->percentageLeftMargin:F

    .line 352
    iput p2, p0, Lnet/veritran/component/view/VTPinComponentView;->percentageTopMargin:F

    .line 353
    iput p3, p0, Lnet/veritran/component/view/VTPinComponentView;->percentageRightMargin:F

    .line 354
    iput p4, p0, Lnet/veritran/component/view/VTPinComponentView;->percentageBottomMargin:F

    .line 355
    return-void
.end method

.method public setPinCount(I)V
    .locals 0
    .param p1, "pinCount"    # I

    .prologue
    .line 152
    iput p1, p0, Lnet/veritran/component/view/VTPinComponentView;->pinsCount:I

    .line 153
    return-void
.end method

.method public setRawInputType(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 508
    iget-object v0, p0, Lnet/veritran/component/view/VTPinComponentView;->fakeText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 509
    return-void
.end method

.method public setSelectedPinImageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "selectedPinImageName"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lnet/veritran/component/view/VTPinComponentView;->selectedPinImageName:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 526
    iget-object v0, p0, Lnet/veritran/component/view/VTPinComponentView;->fakeText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 527
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/CharSequence;

    .prologue
    .line 439
    iget-object v0, p0, Lnet/veritran/component/view/VTPinComponentView;->fakeText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 440
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 539
    return-void
.end method

.method public setTextSize(IF)V
    .locals 0
    .param p1, "complexUnitPx"    # I
    .param p2, "pixelSize"    # F

    .prologue
    .line 489
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "iStyle"    # I

    .prologue
    .line 495
    return-void
.end method

.method public setWidthPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 395
    iput p1, p0, Lnet/veritran/component/view/VTPinComponentView;->percentageWidth:F

    .line 396
    return-void
.end method
