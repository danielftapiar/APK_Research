.class public abstract Lnet/veritran/VTAbstractActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "VTAbstractActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/veritran/VTAbstractActivity$ProgressThread;
    }
.end annotation


# static fields
.field public static final ACCEPT_BUTTON_ID:I = 0x3ea

.field public static final EXIT_BUTTON_ID:I = 0x3e9

.field private static final HIGH_DPI_STATUS_BAR_HEIGHT:I = 0x26

.field public static final INNER_FOOTER_LAYOUT_ID:I = 0x7d1

.field private static final LOADING:Ljava/lang/String; = "Loading..."

.field private static final LOW_DPI_STATUS_BAR_HEIGHT:I = 0x13

.field private static final MEDIUM_DPI_STATUS_BAR_HEIGHT:I = 0x19

.field private static final PLEASE_WAIT:Ljava/lang/String; = "Please Wait..."

.field public static final SIZE_BASELINE_RELATION_UNIT_CODE:Ljava/lang/String; = "br"

.field public static final SIZE_MILIMETER_UNIT_CODE:Ljava/lang/String; = "mm"

.field public static final SIZE_PIXEL_UNIT_CODE:Ljava/lang/String; = "px"

.field public static final SIZE_SCREEN_HEIGHT_PERCENTAGE_CODE:Ljava/lang/String; = "rh"

.field public static final SIZE_SCREEN_PERCENTAGE_CODE:Ljava/lang/String; = "r"

.field public static final SIZE_SCREEN_WIDTH_PERCENTAGE_CODE:Ljava/lang/String; = "rw"

.field public static final STATE_CHECK_BOX_LIST:I = 0x4

.field public static final STATE_IMPLICIT_LIST:I = 0x2

.field public static final STATE_INITIAL:I = 0x0

.field public static final STATE_RADIO_BUTTON_LIST:I = 0x3

.field public static final STATE_SPLASH:I = 0x5

.field private static STATUS_BAR_AVAILABLE:I = 0x0

.field private static STATUS_BAR_DEFAULT_HEIGHT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VTAbstractActivity"

.field public static bodyLayout:Landroid/widget/LinearLayout;

.field public static scale:F

.field private static screenHeight:I

.field private static screenWidth:I

.field private static statesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static statusBarHeight:I


# instance fields
.field protected application:Lnet/veritran/VTUserApplicationSmart;

.field private defaultIntent:Landroid/content/Intent;

.field final handler:Landroid/os/Handler;

.field public mainFrameLayout:Landroid/widget/FrameLayout;

.field protected progressDialog:Landroid/app/ProgressDialog;

.field protected progressThread:Lnet/veritran/VTAbstractActivity$ProgressThread;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x19

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 48
    const/4 v0, -0x1

    sput v0, Lnet/veritran/VTAbstractActivity;->STATUS_BAR_AVAILABLE:I

    .line 49
    sput v6, Lnet/veritran/VTAbstractActivity;->STATUS_BAR_DEFAULT_HEIGHT:I

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/veritran/VTAbstractActivity;->statesMap:Ljava/util/HashMap;

    .line 74
    sget-object v0, Lnet/veritran/VTAbstractActivity;->statesMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lnet/veritran/VTAbstractActivity;->statesMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lnet/veritran/VTAbstractActivity;->statesMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lnet/veritran/VTAbstractActivity;->statesMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lnet/veritran/VTAbstractActivity;->statesMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sput v6, Lnet/veritran/VTAbstractActivity;->statusBarHeight:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 354
    new-instance v0, Lnet/veritran/VTAbstractActivity$2;

    invoke-direct {v0, p0}, Lnet/veritran/VTAbstractActivity$2;-><init>(Lnet/veritran/VTAbstractActivity;)V

    iput-object v0, p0, Lnet/veritran/VTAbstractActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static getDP(I)I
    .locals 3
    .param p0, "pixels"    # I

    .prologue
    .line 241
    int-to-float v1, p0

    sget v2, Lnet/veritran/VTAbstractActivity;->scale:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 243
    .local v0, "res":I
    return v0
.end method

.method public static getPercentageToPixels(F)I
    .locals 6
    .param p0, "percentage"    # F

    .prologue
    .line 254
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-static {}, Lnet/veritran/VTAbstractActivity;->getScreenWidth()I

    move-result v1

    invoke-static {}, Lnet/veritran/VTAbstractActivity;->getScreenHeight()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p0

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v1, v4

    float-to-double v4, v1

    add-double/2addr v2, v4

    double-to-int v0, v2

    .line 256
    .local v0, "res":I
    return v0
.end method

.method public static getPixels(I)I
    .locals 3
    .param p0, "dp"    # I

    .prologue
    .line 248
    int-to-float v1, p0

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v1, v2

    sget v2, Lnet/veritran/VTAbstractActivity;->scale:F

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 250
    .local v0, "res":I
    return v0
.end method

.method public static getScreenHeight()I
    .locals 4

    .prologue
    .line 563
    const-string v0, "VTAbstractActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScreenHeight(screenHeight)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lnet/veritran/VTAbstractActivity;->screenHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string v0, "VTAbstractActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScreenHeight(statusBarHeight)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lnet/veritran/VTAbstractActivity;->statusBarHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v0, "VTAbstractActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScreenHeight(statusBarHeight)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lnet/veritran/VTAbstractActivity;->screenHeight:I

    sget v3, Lnet/veritran/VTAbstractActivity;->statusBarHeight:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    sget v0, Lnet/veritran/VTAbstractActivity;->screenHeight:I

    sget v1, Lnet/veritran/VTAbstractActivity;->statusBarHeight:I

    sub-int v1, v0, v1

    sget-object v0, Lnet/veritran/VTAbstractActivity;->bodyLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lnet/veritran/VTAbstractActivity;->bodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public static getScreenWidth()I
    .locals 1

    .prologue
    .line 556
    sget v0, Lnet/veritran/VTAbstractActivity;->screenWidth:I

    return v0
.end method

.method public static resolveColor(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .param p0, "c"    # Ljava/lang/String;

    .prologue
    .line 474
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 480
    :goto_0
    return-object v0

    .line 477
    :catch_0
    move-exception v1

    .line 478
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "resolveColor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error with color "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 479
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 478
    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized changeState(ILandroid/content/Intent;)V
    .locals 1
    .param p1, "currentState"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 449
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/veritran/VTAbstractActivity;->changeState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {p0}, Lnet/veritran/VTAbstractActivity;->populate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    :cond_0
    monitor-exit p0

    return-void

    .line 449
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public changeState(I)Z
    .locals 4
    .param p1, "currentState"    # I

    .prologue
    .line 439
    sget-object v2, Lnet/veritran/VTAbstractActivity;->statesMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 440
    .local v0, "nextState":Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 441
    .local v1, "result":Z
    if-eqz v0, :cond_0

    .line 442
    iget-object v2, p0, Lnet/veritran/VTAbstractActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lnet/veritran/VTUserApplicationSmart;->setCurrentState(I)V

    .line 443
    const/4 v1, 0x1

    .line 445
    :cond_0
    return v1
.end method

.method protected createFooterInnerLayout()Landroid/widget/LinearLayout;
    .locals 12

    .prologue
    .line 413
    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    sget v10, Lnet/veritran/VTAbstractActivity;->scale:F

    float-to-double v10, v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v5, v8

    .line 414
    .local v5, "leftPadding":I
    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    sget v10, Lnet/veritran/VTAbstractActivity;->scale:F

    float-to-double v10, v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v6, v8

    .line 415
    .local v6, "rightPadding":I
    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    sget v10, Lnet/veritran/VTAbstractActivity;->scale:F

    float-to-double v10, v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v7, v8

    .line 416
    .local v7, "topPadding":I
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sget v10, Lnet/veritran/VTAbstractActivity;->scale:F

    float-to-double v10, v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v0, v8

    .line 418
    .local v0, "bottomPadding":I
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 419
    .local v2, "footerInnerLayout":Landroid/widget/LinearLayout;
    const/16 v8, 0x7d1

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setId(I)V

    .line 420
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 421
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    invoke-virtual {v2, v5, v7, v6, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 425
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 426
    const v4, -0x4a4a4b

    .line 427
    .local v4, "initialGradient":I
    const v1, -0xc5c5c6

    .line 430
    .local v1, "finalGradient":I
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v8, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput v4, v9, v10

    const/4 v10, 0x1

    aput v1, v9, v10

    invoke-direct {v3, v8, v9}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 433
    .local v3, "gradient":Landroid/graphics/drawable/GradientDrawable;
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 434
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 435
    return-object v2
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lnet/veritran/VTAbstractActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lnet/veritran/VTAbstractActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    invoke-virtual {v0}, Lnet/veritran/VTUserApplicationSmart;->exit()V

    .line 465
    :cond_0
    return-void
.end method

.method public getDefaultIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lnet/veritran/VTAbstractActivity;->defaultIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public initContentView()V
    .locals 3

    .prologue
    .line 260
    const-string v0, "VTAbstractActivity"

    const-string v1, "initContentView"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    const-string v1, "$layout"

    const-string v2, "main"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 261
    invoke-virtual {p0, v0}, Lnet/veritran/VTAbstractActivity;->setContentView(I)V

    .line 271
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    const-string v1, "$id"

    const-string v2, "body"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 269
    invoke-virtual {p0, v0}, Lnet/veritran/VTAbstractActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/veritran/VTLinearLayout;

    sput-object v0, Lnet/veritran/VTAbstractActivity;->bodyLayout:Landroid/widget/LinearLayout;

    .line 276
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    const-string v1, "$id"

    const-string v2, "mainFrameLayout"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 274
    invoke-virtual {p0, v0}, Lnet/veritran/VTAbstractActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lnet/veritran/VTAbstractActivity;->mainFrameLayout:Landroid/widget/FrameLayout;

    .line 282
    return-void
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lnet/veritran/VTAbstractActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lnet/veritran/VTAbstractActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    invoke-virtual {v0}, Lnet/veritran/VTUserApplicationSmart;->logout()V

    .line 470
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lnet/veritran/VTAbstractActivity;->isTaskRoot()Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    invoke-virtual {p0}, Lnet/veritran/VTAbstractActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 114
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    invoke-virtual {p0}, Lnet/veritran/VTAbstractActivity;->finish()V

    .line 130
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v2

    iput-object v2, p0, Lnet/veritran/VTAbstractActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    .line 123
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lnet/veritran/VTCommonActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v2, p0, Lnet/veritran/VTAbstractActivity;->defaultIntent:Landroid/content/Intent;

    .line 126
    invoke-virtual {p0}, Lnet/veritran/VTAbstractActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lnet/veritran/VTAbstractActivity;->scale:F

    .line 127
    const-string v2, "VTAbstractActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scale:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lnet/veritran/VTAbstractActivity;->scale:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lnet/veritran/VTAbstractActivity;->updateScreenSize()V

    .line 129
    invoke-virtual {p0}, Lnet/veritran/VTAbstractActivity;->initContentView()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 308
    const/4 v6, 0x0

    .line 309
    .local v6, "dialog":Landroid/app/Dialog;
    if-lez p1, :cond_0

    .line 310
    const/16 v0, 0x191

    if-ne p1, v0, :cond_1

    .line 311
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/veritran/VTAbstractActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 312
    iget-object v0, p0, Lnet/veritran/VTAbstractActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 313
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 314
    iget-object v0, p0, Lnet/veritran/VTAbstractActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v6, p0, Lnet/veritran/VTAbstractActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 328
    :cond_0
    :goto_0
    return-object v6

    .line 316
    :cond_1
    const/16 v0, 0x190

    if-eq p1, v0, :cond_2

    .line 317
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 318
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v0, p0, Lnet/veritran/VTAbstractActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    move-object v1, p0

    move-object v4, v3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/VTUserApplicationSmart;->configureDialogBuilder(Lnet/veritran/VTAbstractActivity;Landroid/app/AlertDialog$Builder;Landroid/view/View$OnClickListener;Landroid/view/View;I)V

    .line 320
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 321
    goto :goto_0

    .line 322
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2
    new-instance v7, Landroid/app/ProgressDialog;

    invoke-direct {v7, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 323
    .local v7, "waitDialog":Landroid/app/ProgressDialog;
    const-string v0, "Please Wait..."

    invoke-virtual {v7, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 324
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 325
    move-object v6, v7

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 333
    packed-switch p1, :pswitch_data_0

    .line 339
    .end local p2    # "dialog":Landroid/app/Dialog;
    :goto_0
    return-void

    .line 335
    .restart local p2    # "dialog":Landroid/app/Dialog;
    :pswitch_0
    check-cast p2, Landroid/app/ProgressDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 336
    new-instance v0, Lnet/veritran/VTAbstractActivity$ProgressThread;

    iget-object v1, p0, Lnet/veritran/VTAbstractActivity;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lnet/veritran/VTAbstractActivity$ProgressThread;-><init>(Lnet/veritran/VTAbstractActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lnet/veritran/VTAbstractActivity;->progressThread:Lnet/veritran/VTAbstractActivity$ProgressThread;

    .line 337
    iget-object v0, p0, Lnet/veritran/VTAbstractActivity;->progressThread:Lnet/veritran/VTAbstractActivity$ProgressThread;

    invoke-virtual {v0}, Lnet/veritran/VTAbstractActivity$ProgressThread;->start()V

    goto :goto_0

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 286
    const-string v1, "VTAbstractActivity"

    const-string v2, "VTAbstractActivity::onResume"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lnet/veritran/VTAbstractActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    invoke-virtual {v1, p0}, Lnet/veritran/VTUserApplicationSmart;->setCurrentActivitySplash(Lnet/veritran/VTAbstractActivity;)V

    .line 291
    invoke-virtual {p0}, Lnet/veritran/VTAbstractActivity;->populate()V

    .line 295
    :try_start_0
    iget-object v1, p0, Lnet/veritran/VTAbstractActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    invoke-virtual {v1, p0}, Lnet/veritran/VTUserApplicationSmart;->setCurrentActivity(Lnet/veritran/VTAbstractActivity;)V
    :try_end_0
    .catch Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 303
    invoke-virtual {p0}, Lnet/veritran/VTAbstractActivity;->updateScreenSize()V

    .line 304
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 299
    .local v0, "ex":Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/VTUserApplicationSmart;->restartApplication()V

    goto :goto_0
.end method

.method public populate()V
    .locals 2

    .prologue
    .line 342
    const-string v0, "VTAbstractActivity"

    const-string v1, "populating"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    new-instance v0, Lnet/veritran/VTAbstractActivity$1;

    invoke-direct {v0, p0}, Lnet/veritran/VTAbstractActivity$1;-><init>(Lnet/veritran/VTAbstractActivity;)V

    invoke-virtual {p0, v0}, Lnet/veritran/VTAbstractActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 348
    return-void
.end method

.method protected abstract populateActivity()V
.end method

.method public resolveSizeInPixels(Ljava/lang/String;Z)F
    .locals 12
    .param p1, "size"    # Ljava/lang/String;
    .param p2, "forWidth"    # Z

    .prologue
    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v11, 0x42c80000    # 100.0f

    const/4 v10, 0x0

    .line 492
    if-nez p1, :cond_1

    .line 547
    :cond_0
    :goto_0
    return v7

    .line 494
    :cond_1
    const-string v8, "mm"

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 495
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, "mm"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p1, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 510
    .local v3, "milimeters":Ljava/lang/Float;
    if-eqz p2, :cond_2

    .line 512
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-static {p0, v8}, Lnet/veritran/utils/VTDisplayHelper;->getWidthPixelsFromMm(Landroid/content/Context;F)F

    move-result v7

    .local v7, "result":F
    goto :goto_0

    .line 516
    .end local v7    # "result":F
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-static {p0, v8}, Lnet/veritran/utils/VTDisplayHelper;->getHeightPixelsFromMm(Landroid/content/Context;F)F

    move-result v7

    .restart local v7    # "result":F
    goto :goto_0

    .line 520
    .end local v3    # "milimeters":Ljava/lang/Float;
    .end local v7    # "result":F
    :cond_3
    const-string v8, "px"

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 521
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, "px"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p1, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 522
    .local v5, "pixels":Ljava/lang/Float;
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v7

    goto :goto_0

    .line 523
    .end local v5    # "pixels":Ljava/lang/Float;
    :cond_4
    const-string v8, "br"

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 524
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, "br"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p1, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 525
    .local v0, "br":Ljava/lang/Float;
    iget-object v8, p0, Lnet/veritran/VTAbstractActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    invoke-virtual {v8}, Lnet/veritran/VTUserApplicationSmart;->getPPIBaselineRelation()F

    move-result v6

    .line 526
    .local v6, "ppiBaseRelation":F
    const/4 v8, 0x0

    cmpg-float v8, v6, v8

    if-gtz v8, :cond_5

    .line 527
    const/high16 v6, 0x41200000    # 10.0f

    .line 529
    :cond_5
    invoke-static {p0}, Lnet/veritran/utils/VTDisplayHelper;->getDeviceYDPI(Landroid/content/Context;)F

    move-result v1

    .line 530
    .local v1, "dpi":F
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v8

    mul-float/2addr v8, v1

    div-float v7, v8, v6

    goto/16 :goto_0

    .line 531
    .end local v0    # "br":Ljava/lang/Float;
    .end local v1    # "dpi":F
    .end local v6    # "ppiBaseRelation":F
    :cond_6
    const-string v8, "rh"

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 532
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, "rh"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p1, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 533
    .local v4, "percentage":Ljava/lang/Float;
    invoke-static {}, Lnet/veritran/VTAbstractActivity;->getScreenHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v9

    mul-float/2addr v8, v9

    div-float v7, v8, v11

    goto/16 :goto_0

    .line 534
    .end local v4    # "percentage":Ljava/lang/Float;
    :cond_7
    const-string v8, "rw"

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 535
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, "rw"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p1, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 536
    .restart local v4    # "percentage":Ljava/lang/Float;
    invoke-static {}, Lnet/veritran/VTAbstractActivity;->getScreenWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v9

    mul-float/2addr v8, v9

    div-float v7, v8, v11

    goto/16 :goto_0

    .line 537
    .end local v4    # "percentage":Ljava/lang/Float;
    :cond_8
    const-string v8, "r"

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 538
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, "r"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p1, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 539
    .restart local v4    # "percentage":Ljava/lang/Float;
    invoke-static {}, Lnet/veritran/VTAbstractActivity;->getScreenWidth()I

    move-result v8

    invoke-static {}, Lnet/veritran/VTAbstractActivity;->getScreenHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v9

    mul-float/2addr v8, v9

    div-float v7, v8, v11

    goto/16 :goto_0

    .line 541
    .end local v4    # "percentage":Ljava/lang/Float;
    :cond_9
    invoke-static {p1}, Lnet/veritran/utils/VTFontHelper;->resolveTextSize(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    .line 543
    .local v2, "floatSize":Ljava/lang/Float;
    if-eqz v2, :cond_0

    .line 545
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    goto/16 :goto_0
.end method

.method public setTextSize(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "size"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 485
    invoke-virtual {p0, p2, v2}, Lnet/veritran/VTAbstractActivity;->resolveSizeInPixels(Ljava/lang/String;Z)F

    move-result v0

    .line 486
    .local v0, "pixelSize":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 489
    :goto_0
    return-void

    .line 488
    :cond_0
    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method public updateScreenSize()V
    .locals 6

    .prologue
    .line 134
    invoke-virtual {p0}, Lnet/veritran/VTAbstractActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 142
    .local v2, "w":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 143
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    sput v3, Lnet/veritran/VTAbstractActivity;->screenWidth:I

    .line 144
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    sput v3, Lnet/veritran/VTAbstractActivity;->screenHeight:I

    .line 146
    const-string v3, "VTAbstractActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Measuredwidth:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lnet/veritran/VTAbstractActivity;->getScreenWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v3, "VTAbstractActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Measuredheight:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lnet/veritran/VTAbstractActivity;->getScreenHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lnet/veritran/VTAbstractActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 150
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v3, Lnet/veritran/VTAbstractActivity;->screenWidth:I

    .line 151
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v3, Lnet/veritran/VTAbstractActivity;->screenHeight:I

    .line 152
    const-string v3, "VTAbstractActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Measuredwidth2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lnet/veritran/VTAbstractActivity;->getScreenWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v3, "VTAbstractActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Measuredheight2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lnet/veritran/VTAbstractActivity;->getScreenHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sget v3, Lnet/veritran/VTAbstractActivity;->screenHeight:I

    invoke-static {v3}, Lnet/veritran/utils/VTFontHelper;->updateFontRelativeSizes(I)V

    .line 158
    invoke-virtual {p0}, Lnet/veritran/VTAbstractActivity;->updateStatusBarHeight()V

    .line 159
    return-void
.end method

.method public updateStatusBarHeight()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v11, -0x1

    .line 163
    sget v8, Lnet/veritran/VTAbstractActivity;->STATUS_BAR_AVAILABLE:I

    if-ne v8, v11, :cond_0

    .line 165
    :try_start_0
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v8

    const-string v10, "FULLSCREEN"

    invoke-virtual {v8, v10}, Lnet/veritran/VTUserApplicationSmart;->getVTConstant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "Y"

    if-ne v8, v10, :cond_1

    move v8, v9

    :goto_0
    sput v8, Lnet/veritran/VTAbstractActivity;->STATUS_BAR_AVAILABLE:I

    .line 166
    sget v8, Lnet/veritran/VTAbstractActivity;->STATUS_BAR_AVAILABLE:I

    mul-int/lit8 v8, v8, 0x19

    sput v8, Lnet/veritran/VTAbstractActivity;->STATUS_BAR_DEFAULT_HEIGHT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_0
    :goto_1
    sget v8, Lnet/veritran/VTAbstractActivity;->STATUS_BAR_AVAILABLE:I

    if-nez v8, :cond_2

    .line 172
    sput v9, Lnet/veritran/VTAbstractActivity;->statusBarHeight:I

    .line 238
    :goto_2
    return-void

    .line 165
    :cond_1
    const/4 v8, 0x1

    goto :goto_0

    .line 167
    :catch_0
    move-exception v2

    .line 168
    .local v2, "e":Ljava/lang/Exception;
    sput v11, Lnet/veritran/VTAbstractActivity;->STATUS_BAR_AVAILABLE:I

    goto :goto_1

    .line 175
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v4, 0x0

    .line 177
    .local v4, "res":I
    :try_start_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 178
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lnet/veritran/VTAbstractActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 179
    .local v7, "window":Landroid/view/Window;
    if-eqz v7, :cond_7

    .line 180
    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 181
    iget v8, v3, Landroid/graphics/Rect;->top:I

    if-nez v8, :cond_6

    .line 182
    const-string v8, "VTAbstractActivity"

    const-string v9, "rect.top==0"

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/4 v4, 0x0

    .line 187
    invoke-virtual {p0}, Lnet/veritran/VTAbstractActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "status_bar_height"

    const-string v10, "dimen"

    const-string v11, "android"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 188
    .local v5, "resourceId":I
    if-lez v5, :cond_5

    .line 189
    invoke-virtual {p0}, Lnet/veritran/VTAbstractActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 214
    :goto_3
    const-string v8, "VTAbstractActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "res = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 236
    .end local v3    # "rect":Landroid/graphics/Rect;
    .end local v5    # "resourceId":I
    .end local v7    # "window":Landroid/view/Window;
    :cond_3
    :goto_4
    if-nez v4, :cond_4

    sget v4, Lnet/veritran/VTAbstractActivity;->STATUS_BAR_DEFAULT_HEIGHT:I

    .line 237
    :cond_4
    sput v4, Lnet/veritran/VTAbstractActivity;->statusBarHeight:I

    goto :goto_2

    .line 195
    .restart local v3    # "rect":Landroid/graphics/Rect;
    .restart local v5    # "resourceId":I
    .restart local v7    # "window":Landroid/view/Window;
    :cond_5
    :try_start_2
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 196
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    const-string v8, "window"

    invoke-virtual {p0, v8}, Lnet/veritran/VTAbstractActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 199
    iget v8, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v8, :sswitch_data_0

    .line 210
    const/16 v4, 0x19

    goto :goto_3

    .line 201
    :sswitch_0
    const/16 v4, 0x26

    .line 202
    goto :goto_3

    .line 204
    :sswitch_1
    const/16 v4, 0x19

    .line 205
    goto :goto_3

    .line 207
    :sswitch_2
    const/16 v4, 0x13

    .line 208
    goto :goto_3

    .line 216
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v5    # "resourceId":I
    :cond_6
    const v8, 0x1020002

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 217
    .local v6, "v":Landroid/view/View;
    const-string v8, "window"

    invoke-virtual {p0, v8}, Lnet/veritran/VTAbstractActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 220
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int/2addr v8, v9

    iget v9, v3, Landroid/graphics/Rect;->top:I

    add-int v4, v8, v9

    .line 221
    const-string v8, "VTAbstractActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "statusBar  display.getHeight()"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";v.getBottom()="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";rect.top="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v8, "VTAbstractActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "statusBar="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    if-gez v4, :cond_3

    .line 224
    const-string v8, "VTAbstractActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "statusBar<0! ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 229
    .end local v0    # "display":Landroid/view/Display;
    .end local v6    # "v":Landroid/view/View;
    :cond_7
    const-string v8, "VTAbstractActivity"

    const-string v9, "statusBar=0"

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 230
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 232
    .end local v3    # "rect":Landroid/graphics/Rect;
    .end local v7    # "window":Landroid/view/Window;
    :catch_1
    move-exception v2

    .line 233
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v8, "VTAbstractActivity"

    const-string v9, "statusBar=0 cause exception"

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 199
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_2
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_0
    .end sparse-switch
.end method
