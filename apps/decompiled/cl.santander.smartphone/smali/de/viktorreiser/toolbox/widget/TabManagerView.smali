.class public Lde/viktorreiser/toolbox/widget/TabManagerView;
.super Landroid/widget/LinearLayout;
.source "TabManagerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;,
        Lde/viktorreiser/toolbox/widget/TabManagerView$OnTabChangeListener;,
        Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;,
        Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;,
        Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;
    }
.end annotation


# instance fields
.field private mChangesLock:Z

.field private mCurrentTabPosition:I

.field private mDefaultLayoutSetup:Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mTabChangeListener:Lde/viktorreiser/toolbox/widget/TabManagerView$OnTabChangeListener;

.field private mTabContainer:Landroid/widget/LinearLayout;

.field private mTabData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;",
            ">;"
        }
    .end annotation
.end field

.field private mTabLayout:I

.field private mTabMinimumWidth:I

.field private mTabScrollEdgeColor:I

.field private mTabScrollEdgeWidth:I

.field private mTabSeparator:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1256
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mChangesLock:Z

    .line 190
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 191
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 193
    new-instance v0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;

    invoke-direct {v0, p0, v5}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;-><init>(Lde/viktorreiser/toolbox/widget/TabManagerView;Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mDefaultLayoutSetup:Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;

    .line 196
    const v0, 0x13579bdf

    iput v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabScrollEdgeColor:I

    .line 197
    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 197
    mul-float/2addr v0, v1

    float-to-double v0, v0

    .line 198
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabScrollEdgeWidth:I

    .line 200
    iput v4, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabMinimumWidth:I

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabData:Ljava/util/List;

    .line 204
    iput v4, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mCurrentTabPosition:I

    .line 1257
    invoke-direct {p0, v5}, Lde/viktorreiser/toolbox/widget/TabManagerView;->initialize(Landroid/util/AttributeSet;)V

    .line 1258
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, -0x1

    .line 1261
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mChangesLock:Z

    .line 190
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 191
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 193
    new-instance v0, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;-><init>(Lde/viktorreiser/toolbox/widget/TabManagerView;Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mDefaultLayoutSetup:Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;

    .line 196
    const v0, 0x13579bdf

    iput v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabScrollEdgeColor:I

    .line 197
    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 197
    mul-float/2addr v0, v1

    float-to-double v0, v0

    .line 198
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabScrollEdgeWidth:I

    .line 200
    iput v4, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabMinimumWidth:I

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabData:Ljava/util/List;

    .line 204
    iput v4, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mCurrentTabPosition:I

    .line 1262
    invoke-direct {p0, p2}, Lde/viktorreiser/toolbox/widget/TabManagerView;->initialize(Landroid/util/AttributeSet;)V

    .line 1263
    return-void
.end method

.method static synthetic access$0(Lde/viktorreiser/toolbox/widget/TabManagerView;)Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mChangesLock:Z

    return v0
.end method

.method static synthetic access$1(Lde/viktorreiser/toolbox/widget/TabManagerView;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2(Lde/viktorreiser/toolbox/widget/TabManagerView;)I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabSeparator:I

    return v0
.end method

.method static synthetic access$3(Lde/viktorreiser/toolbox/widget/TabManagerView;)I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabMinimumWidth:I

    return v0
.end method

.method static synthetic access$4(Lde/viktorreiser/toolbox/widget/TabManagerView;)I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabScrollEdgeWidth:I

    return v0
.end method

.method private generateDefaultTabProgrammatically()Landroid/view/View;
    .locals 23

    .prologue
    .line 1373
    move-object/from16 v0, p0

    iget-object v11, v0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mDefaultLayoutSetup:Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;

    .line 1375
    .local v11, "setup":Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;
    new-instance v9, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1376
    .local v9, "imageContainer":Landroid/widget/FrameLayout;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 1377
    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->image:I
    invoke-static {v11}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->access$3(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)I

    move-result v17

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->overlayOffset:I
    invoke-static {v11}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->access$4(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)I

    move-result v18

    mul-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    const/16 v18, -0x2

    .line 1376
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v7, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1378
    .local v7, "icp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1379
    invoke-virtual {v9, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1381
    new-instance v6, Landroid/widget/ProgressBar;

    .line 1382
    invoke-virtual/range {p0 .. p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getContext()Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x0

    const v19, 0x1010079

    .line 1381
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v6, v0, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1383
    .local v6, "busy":Landroid/widget/ProgressBar;
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 1384
    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->overlay:I
    invoke-static {v11}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->access$6(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)I

    move-result v17

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->overlay:I
    invoke-static {v11}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->access$6(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)I

    move-result v18

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->border:I
    invoke-static {v11}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->access$5(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)I

    move-result v19

    add-int v18, v18, v19

    .line 1383
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v5, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1385
    .local v5, "bp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v6, v5}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1386
    const v17, 0x1020007

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/ProgressBar;->setId(I)V

    .line 1387
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1388
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->border:I
    invoke-static {v11}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->access$5(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    .line 1390
    new-instance v13, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1391
    .local v13, "status":Landroid/widget/ImageView;
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 1392
    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->overlay:I
    invoke-static {v11}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->access$6(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)I

    move-result v17

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->overlay:I
    invoke-static {v11}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->access$6(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)I

    move-result v18

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->border:I
    invoke-static {v11}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->access$5(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)I

    move-result v19

    add-int v18, v18, v19

    .line 1391
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v12, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1393
    .local v12, "sp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v17, 0x35

    move/from16 v0, v17

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1394
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1395
    const v17, 0x1020008

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 1396
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1397
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->border:I
    invoke-static {v11}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->access$5(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1399
    new-instance v8, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1400
    .local v8, "image":Landroid/widget/ImageView;
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 1401
    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->image:I
    invoke-static {v11}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->access$3(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)I

    move-result v17

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->image:I
    invoke-static {v11}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->access$3(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)I

    move-result v18

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->border:I
    invoke-static {v11}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->access$5(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)I

    move-result v19

    add-int v18, v18, v19

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->overlayOffset:I
    invoke-static {v11}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->access$4(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)I

    move-result v19

    add-int v18, v18, v19

    .line 1400
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v10, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1402
    .local v10, "ip":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v17, 0x51

    move/from16 v0, v17

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1403
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1404
    const v17, 0x1020006

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 1405
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1406
    const/16 v17, 0x0

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->overlayOffset:I
    invoke-static {v11}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->access$4(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)I

    move-result v18

    const/16 v19, 0x0

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->border:I
    invoke-static {v11}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->access$5(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1408
    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1409
    invoke-virtual {v9, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1410
    invoke-virtual {v9, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1412
    new-instance v14, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1413
    .local v14, "tab":Landroid/widget/LinearLayout;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1414
    const/16 v17, 0x50

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1415
    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->border:I
    invoke-static {v11}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->access$5(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)I

    move-result v17

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->border:I
    invoke-static {v11}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->access$5(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)I

    move-result v18

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->border:I
    invoke-static {v11}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->access$5(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)I

    move-result v19

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1417
    new-instance v15, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1418
    .local v15, "title":Landroid/widget/TextView;
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    .line 1419
    const/16 v17, -0x2

    const/16 v18, -0x2

    .line 1418
    invoke-direct/range {v16 .. v18}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1420
    .local v16, "tp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1421
    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->border:I
    invoke-static {v11}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->access$5(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1422
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1423
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1424
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1425
    const v17, 0x1020016

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setId(I)V

    .line 1426
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1427
    new-instance v17, Landroid/content/res/ColorStateList;

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 1428
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const v22, 0x10100a1

    aput v22, v20, v21

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const v22, 0x10100a7

    aput v22, v20, v21

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    .line 1429
    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->titleColors:[I
    invoke-static {v11}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->access$7(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)[I

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1427
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1431
    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1432
    .local v4, "background":Landroid/graphics/drawable/StateListDrawable;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const v19, 0x10100a1

    aput v19, v17, v18

    .line 1433
    new-instance v18, Landroid/graphics/drawable/GradientDrawable;

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->selectedOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;
    invoke-static {v11}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->access$8(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v19

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->selectedColors:[I
    invoke-static {v11}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->access$9(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)[I

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1432
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1434
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const v19, 0x10100a7

    aput v19, v17, v18

    .line 1435
    new-instance v18, Landroid/graphics/drawable/GradientDrawable;

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->pressedOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;
    invoke-static {v11}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->access$10(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v19

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->pressedColors:[I
    invoke-static {v11}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->access$11(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)[I

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1434
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1436
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 1437
    new-instance v18, Landroid/graphics/drawable/GradientDrawable;

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->normalOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;
    invoke-static {v11}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->access$12(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v19

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->noramlColors:[I
    invoke-static {v11}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->access$13(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)[I

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1436
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1439
    invoke-virtual {v14, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1440
    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1441
    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1443
    return-object v14
.end method

.method private initialize(Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 1332
    invoke-virtual {p0, v6}, Lde/viktorreiser/toolbox/widget/TabManagerView;->setOrientation(I)V

    .line 1333
    new-instance v1, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;-><init>(Lde/viktorreiser/toolbox/widget/TabManagerView;Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1334
    const/4 v3, -0x2

    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1333
    invoke-super {p0, v1, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1336
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;

    .line 1337
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1339
    if-nez p1, :cond_0

    .line 1369
    :goto_0
    return-void

    .line 1343
    :cond_0
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lde/viktorreiser/toolbox/R$styleable;->TabManagerView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1345
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabLayout:I

    .line 1346
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabSeparator:I

    .line 1348
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1350
    const/4 v1, 0x5

    .line 1349
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabMinimumWidth:I

    .line 1353
    :cond_1
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1354
    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabScrollEdgeColor:I

    .line 1358
    :cond_2
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1360
    const/4 v1, 0x4

    .line 1359
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabScrollEdgeWidth:I

    .line 1363
    :cond_3
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1364
    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lde/viktorreiser/toolbox/widget/TabManagerView;->setTabContentSeparator(I)V

    .line 1368
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public addTab(Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;)V
    .locals 23
    .param p1, "tab"    # Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;

    .prologue
    .line 219
    move-object/from16 v0, p1

    iget-object v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;->content:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 220
    new-instance v19, Ljava/lang/NullPointerException;

    const-string v20, "Content not defined!"

    invoke-direct/range {v19 .. v20}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 223
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;->tag:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabData:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_8

    .line 231
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getTabCount()I

    move-result v15

    .line 233
    .local v15, "tabCount":I
    new-instance v16, Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;-><init>(Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;)V

    .line 234
    .local v16, "tabData":Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;
    move-object/from16 v0, p1

    iget-object v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;->tag:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;->tag:Ljava/lang/String;

    .line 235
    move-object/from16 v0, p1

    iget-object v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;->content:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;->content:Landroid/view/View;

    .line 238
    move-object/from16 v0, p1

    iget v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;->position:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v0, v15, :cond_3

    move-object/from16 v0, p1

    iget v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;->position:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_9

    .line 239
    :cond_3
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;->position:I

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabData:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mChangesLock:Z

    move/from16 v19, v0

    if-nez v19, :cond_7

    .line 247
    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabLayout:I

    move/from16 v19, v0

    if-nez v19, :cond_a

    .line 248
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mDefaultLayoutSetup:Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;

    .line 250
    .local v13, "setup":Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;
    invoke-virtual/range {p0 .. p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getChildCount()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 251
    new-instance v12, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 252
    .local v12, "separator":Landroid/view/View;
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    .line 253
    const/16 v20, -0x1

    .line 254
    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->tabContentSeparatorHeight:I
    invoke-static {v13}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->access$1(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)I

    move-result v21

    invoke-direct/range {v19 .. v21}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 252
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->tabContentSeperatorColor:I
    invoke-static {v13}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->access$2(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 256
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lde/viktorreiser/toolbox/widget/TabManagerView;->setTabContentSeparator(Landroid/view/View;)V

    .line 259
    .end local v12    # "separator":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabMinimumWidth:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 260
    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->image:I
    invoke-static {v13}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->access$3(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)I

    move-result v19

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->overlayOffset:I
    invoke-static {v13}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->access$4(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)I

    move-result v20

    mul-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->border:I
    invoke-static {v13}, Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;->access$5(Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;)I

    move-result v20

    mul-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabMinimumWidth:I

    .line 263
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabScrollEdgeColor:I

    move/from16 v19, v0

    const v20, 0x13579bdf

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 264
    const v19, -0x444445

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabScrollEdgeColor:I

    .line 270
    .end local v13    # "setup":Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;
    :cond_6
    :goto_1
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v4, v0, [I

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabScrollEdgeColor:I

    move/from16 v20, v0

    aput v20, v4, v19

    .line 272
    .local v4, "colors":[I
    new-instance v9, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 274
    .local v9, "leftGradient":Landroid/view/View;
    new-instance v19, Landroid/graphics/drawable/GradientDrawable;

    sget-object v20, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 273
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    new-instance v11, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 278
    .local v11, "rightGradient":Landroid/view/View;
    new-instance v19, Landroid/graphics/drawable/GradientDrawable;

    sget-object v20, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 277
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 280
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout;

    .line 281
    .local v17, "tabScrollView":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    new-instance v20, Landroid/widget/FrameLayout$LayoutParams;

    .line 282
    const/16 v21, -0x1

    const/16 v22, -0x2

    invoke-direct/range {v20 .. v22}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 281
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    new-instance v19, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x3

    invoke-direct/range {v19 .. v22}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v9, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    new-instance v19, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x5

    invoke-direct/range {v19 .. v22}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    .end local v4    # "colors":[I
    .end local v9    # "leftGradient":Landroid/view/View;
    .end local v11    # "rightGradient":Landroid/view/View;
    .end local v17    # "tabScrollView":Landroid/widget/FrameLayout;
    :cond_7
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/viktorreiser/toolbox/widget/TabManagerView;->mChangesLock:Z

    .line 292
    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabLayout:I

    move/from16 v19, v0

    if-nez v19, :cond_b

    .line 293
    invoke-direct/range {p0 .. p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->generateDefaultTabProgrammatically()Landroid/view/View;

    move-result-object v3

    .line 298
    .local v3, "child":Landroid/view/View;
    :goto_2
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 299
    const/16 v19, -0x1

    const/16 v20, -0x1

    .line 298
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v6, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 300
    .local v6, "cp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v19

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 301
    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    const v19, 0x1020006

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 304
    .local v8, "image":Landroid/view/View;
    const v19, 0x1020016

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 307
    .local v18, "title":Landroid/view/View;
    move-object/from16 v0, p1

    iget-object v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;->image:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    if-eqz v8, :cond_d

    .line 308
    instance-of v0, v8, Landroid/widget/ImageView;

    move/from16 v19, v0

    if-nez v19, :cond_c

    .line 309
    new-instance v19, Ljava/lang/IllegalStateException;

    .line 310
    const-string v20, "View with ID icon is defined but is not an image view!"

    .line 309
    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 224
    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "cp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "image":Landroid/view/View;
    .end local v15    # "tabCount":I
    .end local v16    # "tabData":Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;
    .end local v18    # "title":Landroid/view/View;
    :cond_8
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;

    .line 225
    .local v7, "data":Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;
    move-object/from16 v0, p1

    iget-object v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;->tag:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v7, Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;->tag:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 226
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Tab tag "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;->tag:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " already defined!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 242
    .end local v7    # "data":Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;
    .restart local v15    # "tabCount":I
    .restart local v16    # "tabData":Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabData:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;->position:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 266
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabScrollEdgeColor:I

    move/from16 v19, v0

    const v20, 0x13579bdf

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 267
    const/high16 v19, -0x1000000

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabScrollEdgeColor:I

    goto/16 :goto_1

    .line 295
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabLayout:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .restart local v3    # "child":Landroid/view/View;
    goto/16 :goto_2

    .line 313
    .restart local v6    # "cp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v8    # "image":Landroid/view/View;
    .restart local v18    # "title":Landroid/view/View;
    :cond_c
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 314
    check-cast v8, Landroid/widget/ImageView;

    .end local v8    # "image":Landroid/view/View;
    move-object/from16 v0, p1

    iget-object v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;->image:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 318
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    if-nez v18, :cond_f

    :cond_e
    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v19, v0

    if-eqz v19, :cond_11

    .line 319
    :cond_f
    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v19, v0

    if-nez v19, :cond_10

    .line 320
    new-instance v19, Ljava/lang/IllegalStateException;

    .line 321
    const-string v20, "View with ID title is defined but is not an text view!"

    .line 320
    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 324
    :cond_10
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 325
    check-cast v18, Landroid/widget/TextView;

    .end local v18    # "title":Landroid/view/View;
    move-object/from16 v0, p1

    iget-object v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    :cond_11
    const v19, 0x1020007

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;->busy:Landroid/view/View;

    .line 330
    move-object/from16 v0, v16

    iget-object v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;->busy:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v19, :cond_12

    .line 331
    move-object/from16 v0, v16

    iget-object v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;->busy:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 334
    :cond_12
    const v19, 0x1020008

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 336
    .local v14, "statusView":Landroid/view/View;
    if-eqz v14, :cond_14

    .line 337
    instance-of v0, v14, Landroid/widget/ImageView;

    move/from16 v19, v0

    if-nez v19, :cond_13

    .line 338
    new-instance v19, Ljava/lang/IllegalStateException;

    .line 339
    const-string v20, "Tab layout contains status icon but it\'s not an image view!"

    .line 338
    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 342
    :cond_13
    check-cast v14, Landroid/widget/ImageView;

    .end local v14    # "statusView":Landroid/view/View;
    move-object/from16 v0, v16

    iput-object v14, v0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;->status:Landroid/widget/ImageView;

    .line 343
    move-object/from16 v0, v16

    iget-object v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;->status:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 346
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    .line 348
    .local v5, "count":I
    move-object/from16 v0, p1

    iget v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;->position:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_15

    if-nez v5, :cond_19

    .line 350
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabSeparator:I

    move/from16 v19, v0

    if-eqz v19, :cond_16

    if-eqz v5, :cond_16

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabSeparator:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 352
    .restart local v12    # "separator":Landroid/view/View;
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 353
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    .line 352
    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    .local v10, "p":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v19, -0x1

    move/from16 v0, v19

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    .end local v10    # "p":Landroid/widget/LinearLayout$LayoutParams;
    .end local v12    # "separator":Landroid/view/View;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 374
    :cond_17
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getTabCount()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_18

    .line 375
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lde/viktorreiser/toolbox/widget/TabManagerView;->setCurrentTab(I)Z

    .line 377
    :cond_18
    return-void

    .line 361
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabSeparator:I

    move/from16 v19, v0

    if-nez v19, :cond_1a

    move-object/from16 v0, p1

    iget v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;->position:I

    move/from16 v19, v0

    :goto_4
    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;->position:I

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;->position:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 365
    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabSeparator:I

    move/from16 v19, v0

    if-eqz v19, :cond_17

    if-eqz v5, :cond_17

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabSeparator:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 367
    .restart local v12    # "separator":Landroid/view/View;
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 368
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    .line 367
    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    .restart local v10    # "p":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v19, -0x1

    move/from16 v0, v19

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;->position:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v12, v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 361
    .end local v10    # "p":Landroid/widget/LinearLayout$LayoutParams;
    .end local v12    # "separator":Landroid/view/View;
    :cond_1a
    move-object/from16 v0, p1

    iget v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;->position:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    goto :goto_4
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1270
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 1278
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1294
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1286
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 534
    iget v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mCurrentTabPosition:I

    return v0
.end method

.method public getCurrentTabTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabData:Ljava/util/List;

    iget v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mCurrentTabPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;

    iget-object v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultLayoutSetup()Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mDefaultLayoutSetup:Lde/viktorreiser/toolbox/widget/TabManagerView$DefaultLayoutSetup;

    return-object v0
.end method

.method public getOnTabChageListener()Lde/viktorreiser/toolbox/widget/TabManagerView$OnTabChangeListener;
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabChangeListener:Lde/viktorreiser/toolbox/widget/TabManagerView$OnTabChangeListener;

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTabPosition(Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 743
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 749
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 744
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;

    iget-object v1, v1, Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;->tag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 743
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getTabStatus(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 708
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getTabCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    move-object v1, v2

    .line 718
    :goto_0
    return-object v1

    .line 712
    :cond_1
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;

    iget-object v0, v1, Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;->status:Landroid/widget/ImageView;

    .line 714
    .local v0, "iv":Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 715
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 718
    goto :goto_0
.end method

.method public getTabStatus(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 731
    invoke-virtual {p0, p1}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getTabPosition(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getTabStatus(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTabTag(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 761
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;

    iget-object v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;->tag:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTabView(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 448
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 449
    :cond_0
    const/4 v0, 0x0

    .line 452
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;

    iget-object v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;->content:Landroid/view/View;

    goto :goto_0
.end method

.method public getTabView(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 464
    invoke-virtual {p0, p1}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getTabPosition(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getTabView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isTabLoading(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 598
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getTabCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    move v1, v2

    .line 608
    :goto_0
    return v1

    .line 602
    :cond_1
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;

    iget-object v0, v1, Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;->busy:Landroid/view/View;

    .line 604
    .local v0, "busyView":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 605
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    .line 608
    goto :goto_0
.end method

.method public isTabLoading(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 621
    invoke-virtual {p0, p1}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getTabPosition(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->isTabLoading(I)Z

    move-result v0

    return v0
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 1318
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeTab(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 388
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getTabCount()I

    move-result v2

    if-lt p1, v2, :cond_1

    :cond_0
    move v0, v1

    .line 415
    :goto_0
    return v0

    .line 392
    :cond_1
    iget v2, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabSeparator:I

    if-nez v2, :cond_3

    .line 393
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 406
    :cond_2
    :goto_1
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 407
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-super {p0, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 409
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getTabCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 410
    const/4 v1, -0x1

    iput v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mCurrentTabPosition:I

    goto :goto_0

    .line 395
    :cond_3
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;

    mul-int/lit8 v3, p1, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 397
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getTabCount()I

    move-result v2

    if-eq v2, v0, :cond_2

    .line 398
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getTabCount()I

    move-result v2

    if-ne p1, v2, :cond_4

    .line 399
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;

    mul-int/lit8 v3, p1, 0x2

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto :goto_1

    .line 401
    :cond_4
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;

    mul-int/lit8 v3, p1, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto :goto_1

    .line 412
    :cond_5
    invoke-virtual {p0, v1}, Lde/viktorreiser/toolbox/widget/TabManagerView;->setCurrentTab(I)Z

    goto :goto_0
.end method

.method public removeTab(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 427
    invoke-virtual {p0, p1}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getTabPosition(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->removeTab(I)Z

    move-result v0

    return v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1302
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1310
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeViews(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 1326
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setCurrentTab(I)Z
    .locals 12
    .param p1, "position"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 476
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_2

    :cond_0
    move v11, v1

    .line 513
    :cond_1
    :goto_0
    return v11

    .line 480
    :cond_2
    iget v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mCurrentTabPosition:I

    if-eq v0, p1, :cond_1

    .line 484
    iget v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mCurrentTabPosition:I

    if-eq v0, v4, :cond_3

    .line 485
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 488
    :cond_3
    iget v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabSeparator:I

    if-nez v0, :cond_6

    move v9, p1

    .line 489
    .local v9, "p":I
    :goto_1
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    .line 490
    .local v7, "count":I
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 491
    .local v6, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;

    .line 493
    .local v10, "scroll":Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmScrollOffset:I
    invoke-static {v10}, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->access$0(Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;)I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 494
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-static {v10, v0}, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->access$1(Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;I)V

    .line 499
    :cond_4
    :goto_2
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-lt v8, v7, :cond_8

    .line 503
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;

    iget-object v0, v0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;->content:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 504
    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 503
    invoke-super {p0, v0, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 506
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabChangeListener:Lde/viktorreiser/toolbox/widget/TabManagerView$OnTabChangeListener;

    if-eqz v0, :cond_5

    .line 507
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabChangeListener:Lde/viktorreiser/toolbox/widget/TabManagerView$OnTabChangeListener;

    invoke-virtual {p0, p1}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getTabTag(I)Ljava/lang/String;

    move-result-object v3

    .line 508
    iget v4, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mCurrentTabPosition:I

    iget v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mCurrentTabPosition:I

    invoke-virtual {p0, v1}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getTabTag(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    .line 507
    invoke-interface/range {v0 .. v5}, Lde/viktorreiser/toolbox/widget/TabManagerView$OnTabChangeListener;->onTabChange(Lde/viktorreiser/toolbox/widget/TabManagerView;ILjava/lang/String;ILjava/lang/String;)V

    .line 511
    :cond_5
    iput p1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mCurrentTabPosition:I

    goto :goto_0

    .line 488
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "count":I
    .end local v8    # "i":I
    .end local v9    # "p":I
    .end local v10    # "scroll":Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;
    :cond_6
    mul-int/lit8 v9, p1, 0x2

    goto :goto_1

    .line 495
    .restart local v6    # "child":Landroid/view/View;
    .restart local v7    # "count":I
    .restart local v9    # "p":I
    .restart local v10    # "scroll":Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;
    :cond_7
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmScrollOffset:I
    invoke-static {v10}, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->access$0(Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;)I

    move-result v2

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-le v0, v2, :cond_4

    .line 496
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v10, v0}, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->access$1(Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;I)V

    goto :goto_2

    .line 500
    .restart local v8    # "i":I
    :cond_8
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v8, v9, :cond_9

    move v0, v11

    :goto_4
    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 499
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_9
    move v0, v1

    .line 500
    goto :goto_4
.end method

.method public setCurrentTab(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 525
    invoke-virtual {p0, p1}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getTabPosition(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->setCurrentTab(I)Z

    move-result v0

    return v0
.end method

.method public setOnTabChangeListener(Lde/viktorreiser/toolbox/widget/TabManagerView$OnTabChangeListener;)V
    .locals 0
    .param p1, "l"    # Lde/viktorreiser/toolbox/widget/TabManagerView$OnTabChangeListener;

    .prologue
    .line 772
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabChangeListener:Lde/viktorreiser/toolbox/widget/TabManagerView$OnTabChangeListener;

    .line 773
    return-void
.end method

.method public setTabContentSeparator(I)V
    .locals 6
    .param p1, "resId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 816
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getChildCount()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getChildCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget v2, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mCurrentTabPosition:I

    if-ne v2, v4, :cond_1

    .line 817
    :cond_0
    invoke-super {p0, v5}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 820
    :cond_1
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 821
    .local v0, "child":Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 822
    .local v1, "p":Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 823
    invoke-super {p0, v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 824
    return-void
.end method

.method public setTabContentSeparator(Landroid/view/View;)V
    .locals 7
    .param p1, "separator"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 833
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getChildCount()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getChildCount()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget v3, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mCurrentTabPosition:I

    if-ne v3, v5, :cond_1

    .line 834
    :cond_0
    invoke-super {p0, v6}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 837
    :cond_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 838
    const/4 v3, -0x2

    .line 837
    invoke-direct {v1, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 839
    .local v1, "p":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 841
    .local v2, "ps":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_3

    .line 842
    instance-of v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_2

    move-object v0, v2

    .line 843
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 844
    .local v0, "mp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 845
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 846
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 847
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 850
    .end local v0    # "mp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 853
    :cond_3
    invoke-super {p0, p1, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 854
    return-void
.end method

.method public setTabLayout(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 793
    iput p1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabLayout:I

    .line 794
    return-void
.end method

.method public setTabLoading(IZ)Z
    .locals 3
    .param p1, "position"    # I
    .param p2, "loading"    # Z

    .prologue
    const/4 v2, 0x0

    .line 559
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getTabCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 570
    :cond_0
    :goto_0
    return v2

    .line 563
    :cond_1
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;

    iget-object v0, v1, Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;->busy:Landroid/view/View;

    .line 565
    .local v0, "busyView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 566
    if-eqz p2, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 567
    const/4 v2, 0x1

    goto :goto_0

    .line 566
    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public setTabLoading(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "loading"    # Z

    .prologue
    .line 585
    invoke-virtual {p0, p1}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getTabPosition(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lde/viktorreiser/toolbox/widget/TabManagerView;->setTabLoading(IZ)Z

    move-result v0

    return v0
.end method

.method public setTabMinimumWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 889
    iput p1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabMinimumWidth:I

    .line 890
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->requestLayout()V

    .line 891
    return-void
.end method

.method public setTabScrollEdgeColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 865
    iget-boolean v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mChangesLock:Z

    if-eqz v0, :cond_0

    .line 866
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tabs already added, call this before that!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 869
    :cond_0
    iput p1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabScrollEdgeColor:I

    .line 870
    return-void
.end method

.method public setTabScrollEdgeWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 879
    iput p1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabScrollEdgeWidth:I

    .line 880
    return-void
.end method

.method public setTabSeparator(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 806
    iput p1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabSeparator:I

    .line 807
    return-void
.end method

.method public setTabStatus(II)Z
    .locals 1
    .param p1, "position"    # I
    .param p2, "resId"    # I

    .prologue
    .line 678
    .line 679
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 678
    :goto_0
    invoke-virtual {p0, p1, v0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->setTabStatus(ILandroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0

    .line 679
    :cond_0
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public setTabStatus(ILandroid/graphics/drawable/Drawable;)Z
    .locals 3
    .param p1, "position"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 636
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getTabCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 648
    :cond_0
    :goto_0
    return v2

    .line 640
    :cond_1
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;

    iget-object v0, v1, Lde/viktorreiser/toolbox/widget/TabManagerView$TabData;->status:Landroid/widget/ImageView;

    .line 642
    .local v0, "statusView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 643
    if-eqz p2, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 644
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 645
    const/4 v2, 0x1

    goto :goto_0

    .line 643
    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public setTabStatus(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getTabPosition(Ljava/lang/String;)I

    move-result v1

    .line 695
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 694
    :goto_0
    invoke-virtual {p0, v1, v0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->setTabStatus(ILandroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0

    .line 695
    :cond_0
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public setTabStatus(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 663
    invoke-virtual {p0, p1}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getTabPosition(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lde/viktorreiser/toolbox/widget/TabManagerView;->setTabStatus(ILandroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method
