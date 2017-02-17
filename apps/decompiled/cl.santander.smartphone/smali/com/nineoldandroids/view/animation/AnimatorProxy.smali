.class public final Lcom/nineoldandroids/view/animation/AnimatorProxy;
.super Landroid/view/animation/Animation;
.source "AnimatorProxy.java"


# static fields
.field public static final NEEDS_PROXY:Z

.field private static final PROXIES:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/nineoldandroids/view/animation/AnimatorProxy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlpha:F

.field private final mCamera:Landroid/graphics/Camera;

.field private mHasPivot:Z

.field private mPivotX:F

.field private mPivotY:F

.field private mRotationX:F

.field private mRotationY:F

.field private mRotationZ:F

.field private mScaleX:F

.field private mScaleY:F

.field private mTranslationX:F

.field private mTranslationY:F

.field private final mView:Landroid/view/View;

.field private final mViewParent:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    .line 21
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->PROXIES:Ljava/util/WeakHashMap;

    return-void

    .line 19
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mHasPivot:Z

    .line 46
    iput v2, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mAlpha:F

    .line 47
    iput v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mPivotX:F

    .line 48
    iput v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mPivotY:F

    .line 49
    iput v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationX:F

    .line 50
    iput v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationY:F

    .line 51
    iput v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationZ:F

    .line 52
    iput v2, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleX:F

    .line 53
    iput v2, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleY:F

    .line 54
    iput v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationX:F

    .line 55
    iput v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationY:F

    .line 58
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setDuration(J)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setFillAfter(Z)V

    .line 60
    invoke-virtual {p1, p0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 61
    iput-object p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Landroid/view/View;

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mViewParent:Landroid/view/ViewGroup;

    .line 63
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mCamera:Landroid/graphics/Camera;

    .line 64
    return-void
.end method

.method public static wrap(Landroid/view/View;)Lcom/nineoldandroids/view/animation/AnimatorProxy;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 33
    sget-object v1, Lcom/nineoldandroids/view/animation/AnimatorProxy;->PROXIES:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;

    .line 34
    .local v0, "proxy":Lcom/nineoldandroids/view/animation/AnimatorProxy;
    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;

    .end local v0    # "proxy":Lcom/nineoldandroids/view/animation/AnimatorProxy;
    invoke-direct {v0, p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;-><init>(Landroid/view/View;)V

    .line 36
    .restart local v0    # "proxy":Lcom/nineoldandroids/view/animation/AnimatorProxy;
    sget-object v1, Lcom/nineoldandroids/view/animation/AnimatorProxy;->PROXIES:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 19
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 183
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mAlpha:F

    move/from16 v17, v0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 185
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Landroid/view/View;

    .line 186
    .local v15, "view":Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    .line 187
    .local v16, "w":F
    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v5, v0

    .line 188
    .local v5, "h":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    .line 190
    .local v7, "m":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v10, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationX:F

    .line 191
    .local v10, "rX":F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationY:F

    .line 192
    .local v11, "rY":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationZ:F

    .line 193
    .local v12, "rZ":F
    const/16 v17, 0x0

    cmpl-float v17, v10, v17

    if-nez v17, :cond_0

    const/16 v17, 0x0

    cmpl-float v17, v11, v17

    if-nez v17, :cond_0

    const/16 v17, 0x0

    cmpl-float v17, v12, v17

    if-eqz v17, :cond_1

    .line 194
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mCamera:Landroid/graphics/Camera;

    .line 195
    .local v2, "camera":Landroid/graphics/Camera;
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mHasPivot:Z

    .line 196
    .local v6, "hasPivot":Z
    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mPivotX:F

    .line 197
    .local v8, "pX":F
    :goto_0
    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mPivotY:F

    .line 198
    .local v9, "pY":F
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Camera;->save()V

    .line 199
    invoke-virtual {v2, v10}, Landroid/graphics/Camera;->rotateX(F)V

    .line 200
    invoke-virtual {v2, v11}, Landroid/graphics/Camera;->rotateY(F)V

    .line 201
    neg-float v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 202
    invoke-virtual {v2, v7}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 203
    invoke-virtual {v2}, Landroid/graphics/Camera;->restore()V

    .line 204
    neg-float v0, v8

    move/from16 v17, v0

    neg-float v0, v9

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 205
    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 208
    .end local v2    # "camera":Landroid/graphics/Camera;
    .end local v6    # "hasPivot":Z
    .end local v8    # "pX":F
    .end local v9    # "pY":F
    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleX:F

    .line 209
    .local v13, "sX":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleY:F

    .line 210
    .local v14, "sY":F
    const/16 v17, 0x0

    cmpl-float v17, v13, v17

    if-nez v17, :cond_2

    const/16 v17, 0x0

    cmpl-float v17, v13, v17

    if-eqz v17, :cond_3

    .line 211
    :cond_2
    mul-float v17, v13, v16

    sub-float v17, v17, v16

    const/high16 v18, 0x40000000    # 2.0f

    div-float v3, v17, v18

    .line 212
    .local v3, "deltaSX":F
    mul-float v17, v14, v5

    sub-float v17, v17, v5

    const/high16 v18, 0x40000000    # 2.0f

    div-float v4, v17, v18

    .line 213
    .local v4, "deltaSY":F
    invoke-virtual {v7, v13, v14}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 214
    neg-float v0, v3

    move/from16 v17, v0

    neg-float v0, v4

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 216
    .end local v3    # "deltaSX":F
    .end local v4    # "deltaSY":F
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationY:F

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 217
    return-void

    .line 196
    .end local v13    # "sX":F
    .end local v14    # "sY":F
    .restart local v2    # "camera":Landroid/graphics/Camera;
    .restart local v6    # "hasPivot":Z
    :cond_4
    const/high16 v17, 0x40000000    # 2.0f

    div-float v8, v16, v17

    goto :goto_0

    .line 197
    .restart local v8    # "pX":F
    :cond_5
    const/high16 v17, 0x40000000    # 2.0f

    div-float v9, v5, v17

    goto :goto_1
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mAlpha:F

    return v0
.end method

.method public getPivotX()F
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mPivotX:F

    return v0
.end method

.method public getPivotY()F
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mPivotY:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationZ:F

    return v0
.end method

.method public getRotationX()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationX:F

    return v0
.end method

.method public getRotationY()F
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationY:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleY:F

    return v0
.end method

.method public getScrollX()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    return v0
.end method

.method public getTranslationX()F
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationX:F

    return v0
.end method

.method public getTranslationY()F
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationY:F

    return v0
.end method

.method public getX()F
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationX:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getY()F
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationY:F

    add-float/2addr v0, v1

    return v0
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 70
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mAlpha:F

    .line 71
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 72
    return-void
.end method

.method public setPivotX(F)V
    .locals 1
    .param p1, "pivotX"    # F

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mHasPivot:Z

    .line 78
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mPivotX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 79
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mPivotX:F

    .line 80
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mViewParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 82
    :cond_0
    return-void
.end method

.method public setPivotY(F)V
    .locals 1
    .param p1, "pivotY"    # F

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mHasPivot:Z

    .line 88
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mPivotY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 89
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mPivotY:F

    .line 90
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mViewParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 92
    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .param p1, "rotation"    # F

    .prologue
    .line 97
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationZ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 98
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationZ:F

    .line 99
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mViewParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 101
    :cond_0
    return-void
.end method

.method public setRotationX(F)V
    .locals 1
    .param p1, "rotationX"    # F

    .prologue
    .line 106
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 107
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationX:F

    .line 108
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mViewParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 110
    :cond_0
    return-void
.end method

.method public setRotationY(F)V
    .locals 1
    .param p1, "rotationY"    # F

    .prologue
    .line 115
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 116
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationY:F

    .line 117
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mViewParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 119
    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 1
    .param p1, "scaleX"    # F

    .prologue
    .line 124
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 125
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleX:F

    .line 126
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mViewParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 128
    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 1
    .param p1, "scaleY"    # F

    .prologue
    .line 133
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 134
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleY:F

    .line 135
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mViewParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 137
    :cond_0
    return-void
.end method

.method public setScrollX(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->scrollTo(II)V

    .line 143
    return-void
.end method

.method public setScrollY(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->scrollTo(II)V

    .line 149
    return-void
.end method

.method public setTranslationX(F)V
    .locals 1
    .param p1, "translationX"    # F

    .prologue
    .line 154
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 155
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationX:F

    .line 156
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mViewParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 158
    :cond_0
    return-void
.end method

.method public setTranslationY(F)V
    .locals 1
    .param p1, "translationY"    # F

    .prologue
    .line 163
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 164
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationY:F

    .line 165
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mViewParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 167
    :cond_0
    return-void
.end method

.method public setX(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 172
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setTranslationX(F)V

    .line 173
    return-void
.end method

.method public setY(F)V
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 178
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setTranslationY(F)V

    .line 179
    return-void
.end method
