.class public Lde/viktorreiser/toolbox/widget/ViewStateFlipper;
.super Landroid/widget/FrameLayout;
.source "ViewStateFlipper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$de$viktorreiser$toolbox$widget$ViewStateFlipper$AnimType:[I


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCachedState:Landroid/widget/ImageView;

.field private mInAnimation:Landroid/view/animation/Animation;

.field private mInReverseAnimation:Landroid/view/animation/Animation;

.field private mMainView:Landroid/view/View;

.field private mOutAnimation:Landroid/view/animation/Animation;

.field private mOutReverseAnimation:Landroid/view/animation/Animation;


# direct methods
.method static synthetic $SWITCH_TABLE$de$viktorreiser$toolbox$widget$ViewStateFlipper$AnimType()[I
    .locals 3

    .prologue
    .line 32
    sget-object v0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->$SWITCH_TABLE$de$viktorreiser$toolbox$widget$ViewStateFlipper$AnimType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;->values()[Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;->IN:Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;

    invoke-virtual {v1}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;->IN_REVERSE:Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;

    invoke-virtual {v1}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;->OUT:Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;

    invoke-virtual {v1}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;->OUT_REVERSE:Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;

    invoke-virtual {v1}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->$SWITCH_TABLE$de$viktorreiser$toolbox$widget$ViewStateFlipper$AnimType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->initialize(Landroid/util/AttributeSet;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 168
    invoke-direct {p0, p2}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->initialize(Landroid/util/AttributeSet;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 172
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 173
    invoke-direct {p0, p2}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->initialize(Landroid/util/AttributeSet;)V

    .line 174
    return-void
.end method

.method static synthetic access$1(Lde/viktorreiser/toolbox/widget/ViewStateFlipper;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->mCachedState:Landroid/widget/ImageView;

    return-object v0
.end method

.method private checkAddView()V
    .locals 3

    .prologue
    .line 317
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 318
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 319
    const-string v2, " allows only a single child view!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 318
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_0
    return-void
.end method

.method private initialize(Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 270
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->mCachedState:Landroid/widget/ImageView;

    .line 271
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->mCachedState:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 272
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->mCachedState:Landroid/widget/ImageView;

    const/4 v3, -0x1

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 273
    invoke-direct {v4, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 272
    invoke-super {p0, v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 275
    new-instance v2, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$1;

    invoke-direct {v2, p0}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$1;-><init>(Lde/viktorreiser/toolbox/widget/ViewStateFlipper;)V

    iput-object v2, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 292
    if-nez p1, :cond_0

    .line 313
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lde/viktorreiser/toolbox/R$styleable;->ViewStateFlipper:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 299
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .local v1, "res":I
    if-eqz v1, :cond_1

    .line 300
    sget-object v2, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;->IN:Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->setAnimation(Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;Landroid/view/animation/Animation;)V

    .line 302
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_2

    .line 303
    sget-object v2, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;->OUT:Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->setAnimation(Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;Landroid/view/animation/Animation;)V

    .line 305
    :cond_2
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_3

    .line 306
    sget-object v2, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;->IN_REVERSE:Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->setAnimation(Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;Landroid/view/animation/Animation;)V

    .line 308
    :cond_3
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_4

    .line 309
    sget-object v2, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;->OUT_REVERSE:Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->setAnimation(Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;Landroid/view/animation/Animation;)V

    .line 312
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 189
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->addView(Landroid/view/View;I)V

    .line 190
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 197
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->checkAddView()V

    .line 198
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->mMainView:Landroid/view/View;

    .line 199
    const/4 v0, 0x1

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 200
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 215
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->checkAddView()V

    .line 216
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->mMainView:Landroid/view/View;

    .line 217
    const/4 v0, 0x1

    invoke-super {p0, p1, v0, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 218
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 207
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 208
    return-void
.end method

.method public changeState(Z)V
    .locals 4
    .param p1, "forward"    # Z

    .prologue
    .line 139
    if-eqz p1, :cond_1

    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->mOutAnimation:Landroid/view/animation/Animation;

    .line 141
    .local v1, "out":Landroid/view/animation/Animation;
    :goto_0
    if-eqz v1, :cond_2

    .line 142
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->mCachedState:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->mCachedState:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 144
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->mCachedState:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 149
    :goto_1
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->mMainView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 150
    if-eqz p1, :cond_3

    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->mInAnimation:Landroid/view/animation/Animation;

    .line 152
    .local v0, "in":Landroid/view/animation/Animation;
    :goto_2
    if-eqz v0, :cond_0

    .line 153
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->mMainView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 154
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->mMainView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 157
    .end local v0    # "in":Landroid/view/animation/Animation;
    :cond_0
    return-void

    .line 139
    .end local v1    # "out":Landroid/view/animation/Animation;
    :cond_1
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->mOutReverseAnimation:Landroid/view/animation/Animation;

    goto :goto_0

    .line 146
    .restart local v1    # "out":Landroid/view/animation/Animation;
    :cond_2
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->mCachedState:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 150
    :cond_3
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->mInReverseAnimation:Landroid/view/animation/Animation;

    goto :goto_2
.end method

.method public onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 181
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 182
    return-void
.end method

.method public removeAllViews()V
    .locals 4

    .prologue
    .line 245
    const/4 v2, 0x0

    iput-object v2, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->mMainView:Landroid/view/View;

    .line 246
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->getChildCount()I

    move-result v0

    .line 248
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 253
    return-void

    .line 249
    :cond_0
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->mCachedState:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 250
    invoke-virtual {p0, v1}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->removeViewAt(I)V

    .line 248
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 225
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->mCachedState:Landroid/widget/ImageView;

    if-eq v0, p1, :cond_0

    .line 226
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 228
    :cond_0
    return-void
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->mCachedState:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 236
    invoke-virtual {p0, p1}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->removeViewAt(I)V

    .line 238
    :cond_0
    return-void
.end method

.method public removeViews(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 260
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v1, p1, p2

    if-lt v0, v1, :cond_0

    .line 265
    return-void

    .line 261
    :cond_0
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->mCachedState:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 262
    invoke-virtual {p0, v0}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->removeViewAt(I)V

    .line 260
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public saveState()V
    .locals 3

    .prologue
    .line 116
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->mMainView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->mMainView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 118
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->mMainView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 120
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 121
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->mCachedState:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 124
    :cond_0
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->mMainView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 126
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method public setAnimation(Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;I)V
    .locals 1
    .param p1, "type"    # Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;
    .param p2, "resId"    # I

    .prologue
    .line 62
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->setAnimation(Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;Landroid/view/animation/Animation;)V

    .line 63
    return-void
.end method

.method public setAnimation(Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "type"    # Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 86
    invoke-static {}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->$SWITCH_TABLE$de$viktorreiser$toolbox$widget$ViewStateFlipper$AnimType()[I

    move-result-object v0

    invoke-virtual {p1}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 101
    :goto_0
    if-eqz p2, :cond_0

    .line 102
    invoke-static {}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->$SWITCH_TABLE$de$viktorreiser$toolbox$widget$ViewStateFlipper$AnimType()[I

    move-result-object v0

    invoke-virtual {p1}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 109
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    .line 88
    :pswitch_1
    iput-object p2, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->mInAnimation:Landroid/view/animation/Animation;

    goto :goto_0

    .line 91
    :pswitch_2
    iput-object p2, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->mOutAnimation:Landroid/view/animation/Animation;

    goto :goto_0

    .line 94
    :pswitch_3
    iput-object p2, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->mInReverseAnimation:Landroid/view/animation/Animation;

    goto :goto_0

    .line 97
    :pswitch_4
    iput-object p2, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->mOutReverseAnimation:Landroid/view/animation/Animation;

    goto :goto_0

    .line 105
    :pswitch_5
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 102
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
