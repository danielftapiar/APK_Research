.class public Lnet/veritran/component/view/VTCarousel3d;
.super Lnet/veritran/component/view/CustomGallery;
.source "VTCarousel3d.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/veritran/component/view/VTCarousel3d$CarrouselType;
    }
.end annotation


# static fields
.field public static final ACTION_DISTANCE_AUTO:I = 0x7fffffff

.field public static final SCALEDOWN_GRAVITY_BOTTOM:F = 1.0f

.field public static final SCALEDOWN_GRAVITY_CENTER:F = 0.5f

.field public static final SCALEDOWN_GRAVITY_TOP:F


# instance fields
.field private maxRotation:I

.field private scaleDownGravity:F

.field private transformationCamera:Landroid/graphics/Camera;

.field type:Lnet/veritran/component/view/VTCarousel3d$CarrouselType;

.field private unselectedScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 42
    invoke-direct {p0, p1, p2}, Lnet/veritran/component/view/CustomGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    sget-object v0, Lnet/veritran/component/view/VTCarousel3d$CarrouselType;->COVERFLOW:Lnet/veritran/component/view/VTCarousel3d$CarrouselType;

    iput-object v0, p0, Lnet/veritran/component/view/VTCarousel3d;->type:Lnet/veritran/component/view/VTCarousel3d$CarrouselType;

    .line 62
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/view/VTCarousel3d;->transformationCamera:Landroid/graphics/Camera;

    .line 67
    const/16 v0, 0x4b

    iput v0, p0, Lnet/veritran/component/view/VTCarousel3d;->maxRotation:I

    .line 73
    iput v1, p0, Lnet/veritran/component/view/VTCarousel3d;->unselectedScale:F

    .line 78
    iput v1, p0, Lnet/veritran/component/view/VTCarousel3d;->scaleDownGravity:F

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTCarousel3d;->setStaticTransformationsEnabled(Z)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lnet/veritran/component/view/CustomGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    sget-object v0, Lnet/veritran/component/view/VTCarousel3d$CarrouselType;->COVERFLOW:Lnet/veritran/component/view/VTCarousel3d$CarrouselType;

    iput-object v0, p0, Lnet/veritran/component/view/VTCarousel3d;->type:Lnet/veritran/component/view/VTCarousel3d$CarrouselType;

    .line 62
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/view/VTCarousel3d;->transformationCamera:Landroid/graphics/Camera;

    .line 67
    const/16 v0, 0x4b

    iput v0, p0, Lnet/veritran/component/view/VTCarousel3d;->maxRotation:I

    .line 73
    iput v1, p0, Lnet/veritran/component/view/VTCarousel3d;->unselectedScale:F

    .line 78
    iput v1, p0, Lnet/veritran/component/view/VTCarousel3d;->scaleDownGravity:F

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTCarousel3d;->setStaticTransformationsEnabled(Z)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/veritran/component/view/VTCarousel3d$CarrouselType;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lnet/veritran/component/view/VTCarousel3d$CarrouselType;

    .prologue
    const/16 v3, 0x4b

    const/high16 v2, 0x3f000000    # 0.5f

    .line 20
    invoke-direct {p0, p1}, Lnet/veritran/component/view/CustomGallery;-><init>(Landroid/content/Context;)V

    .line 12
    sget-object v0, Lnet/veritran/component/view/VTCarousel3d$CarrouselType;->COVERFLOW:Lnet/veritran/component/view/VTCarousel3d$CarrouselType;

    iput-object v0, p0, Lnet/veritran/component/view/VTCarousel3d;->type:Lnet/veritran/component/view/VTCarousel3d$CarrouselType;

    .line 62
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/view/VTCarousel3d;->transformationCamera:Landroid/graphics/Camera;

    .line 67
    iput v3, p0, Lnet/veritran/component/view/VTCarousel3d;->maxRotation:I

    .line 73
    iput v2, p0, Lnet/veritran/component/view/VTCarousel3d;->unselectedScale:F

    .line 78
    iput v2, p0, Lnet/veritran/component/view/VTCarousel3d;->scaleDownGravity:F

    .line 22
    iput-object p2, p0, Lnet/veritran/component/view/VTCarousel3d;->type:Lnet/veritran/component/view/VTCarousel3d$CarrouselType;

    .line 24
    sget-object v0, Lnet/veritran/component/view/VTCarousel3d$1;->$SwitchMap$net$veritran$component$view$VTCarousel3d$CarrouselType:[I

    invoke-virtual {p2}, Lnet/veritran/component/view/VTCarousel3d$CarrouselType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 38
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTCarousel3d;->setStaticTransformationsEnabled(Z)V

    .line 39
    return-void

    .line 27
    :pswitch_0
    iput v3, p0, Lnet/veritran/component/view/VTCarousel3d;->maxRotation:I

    .line 28
    iput v2, p0, Lnet/veritran/component/view/VTCarousel3d;->unselectedScale:F

    goto :goto_0

    .line 32
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lnet/veritran/component/view/VTCarousel3d;->maxRotation:I

    .line 33
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lnet/veritran/component/view/VTCarousel3d;->unselectedScale:F

    goto :goto_0

    .line 24
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 17
    .param p1, "item"    # Landroid/view/View;
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 86
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x10

    if-lt v13, v14, :cond_0

    .line 87
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->invalidate()V

    .line 90
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTCarousel3d;->getWidth()I

    move-result v6

    .line 91
    .local v6, "coverFlowWidth":I
    div-int/lit8 v5, v6, 0x2

    .line 92
    .local v5, "coverFlowCenter":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 93
    .local v4, "childWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 94
    .local v3, "childHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    div-int/lit8 v14, v4, 0x2

    add-int v2, v13, v14

    .line 99
    .local v2, "childCenter":I
    const/4 v1, 0x1

    .line 101
    .local v1, "actionDistance":I
    sget-object v13, Lnet/veritran/component/view/VTCarousel3d$1;->$SwitchMap$net$veritran$component$view$VTCarousel3d$CarrouselType:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/view/VTCarousel3d;->type:Lnet/veritran/component/view/VTCarousel3d$CarrouselType;

    invoke-virtual {v14}, Lnet/veritran/component/view/VTCarousel3d$CarrouselType;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    .line 112
    :goto_0
    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, -0x40800000    # -1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    int-to-float v0, v1

    move/from16 v16, v0

    div-float v15, v15, v16

    sub-int v16, v2, v5

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 115
    .local v7, "effectsAmount":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->clear()V

    .line 116
    const/4 v13, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    .line 134
    .local v8, "imageMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v13, v0, Lnet/veritran/component/view/VTCarousel3d;->maxRotation:I

    if-eqz v13, :cond_1

    .line 135
    neg-float v13, v7

    move-object/from16 v0, p0

    iget v14, v0, Lnet/veritran/component/view/VTCarousel3d;->maxRotation:I

    int-to-float v14, v14

    mul-float/2addr v13, v14

    float-to-int v9, v13

    .line 136
    .local v9, "rotationAngle":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/view/VTCarousel3d;->transformationCamera:Landroid/graphics/Camera;

    invoke-virtual {v13}, Landroid/graphics/Camera;->save()V

    .line 137
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/view/VTCarousel3d;->transformationCamera:Landroid/graphics/Camera;

    int-to-float v14, v9

    invoke-virtual {v13, v14}, Landroid/graphics/Camera;->rotateY(F)V

    .line 138
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/view/VTCarousel3d;->transformationCamera:Landroid/graphics/Camera;

    invoke-virtual {v13, v8}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/view/VTCarousel3d;->transformationCamera:Landroid/graphics/Camera;

    invoke-virtual {v13}, Landroid/graphics/Camera;->restore()V

    .line 143
    .end local v9    # "rotationAngle":I
    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Lnet/veritran/component/view/VTCarousel3d;->unselectedScale:F

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_2

    .line 144
    move-object/from16 v0, p0

    iget v13, v0, Lnet/veritran/component/view/VTCarousel3d;->unselectedScale:F

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v13, v14

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v14

    mul-float/2addr v13, v14

    const/high16 v14, 0x3f800000    # 1.0f

    add-float v12, v13, v14

    .line 146
    .local v12, "zoomAmount":F
    int-to-float v13, v4

    const/high16 v14, 0x40000000    # 2.0f

    div-float v10, v13, v14

    .line 147
    .local v10, "translateX":F
    int-to-float v13, v3

    move-object/from16 v0, p0

    iget v14, v0, Lnet/veritran/component/view/VTCarousel3d;->scaleDownGravity:F

    mul-float v11, v13, v14

    .line 148
    .local v11, "translateY":F
    neg-float v13, v10

    neg-float v14, v11

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 149
    invoke-virtual {v8, v12, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 150
    invoke-virtual {v8, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 153
    .end local v10    # "translateX":F
    .end local v11    # "translateY":F
    .end local v12    # "zoomAmount":F
    :cond_2
    const/4 v13, 0x1

    return v13

    .line 104
    .end local v7    # "effectsAmount":F
    .end local v8    # "imageMatrix":Landroid/graphics/Matrix;
    :pswitch_0
    add-int v13, v6, v4

    int-to-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    float-to-int v1, v13

    .line 105
    goto/16 :goto_0

    .line 107
    :pswitch_1
    int-to-float v13, v6

    const/high16 v14, 0x40800000    # 4.0f

    div-float/2addr v13, v14

    float-to-int v1, v13

    goto/16 :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Lnet/veritran/component/view/CustomGallery;->onSizeChanged(IIII)V

    .line 173
    return-void
.end method
