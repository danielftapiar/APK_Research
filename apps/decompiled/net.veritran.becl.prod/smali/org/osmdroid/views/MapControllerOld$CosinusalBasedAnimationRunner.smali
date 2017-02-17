.class Lorg/osmdroid/views/MapControllerOld$CosinusalBasedAnimationRunner;
.super Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;
.source "MapControllerOld.java"

# interfaces
.implements Lorg/osmdroid/views/util/constants/MathConstants;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/MapControllerOld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CosinusalBasedAnimationRunner"
.end annotation


# instance fields
.field protected final mAmountStretch:F

.field protected final mStart:F

.field protected final mStepIncrement:F

.field protected final mYOffset:F

.field final synthetic this$0:Lorg/osmdroid/views/MapControllerOld;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapControllerOld;IIFFF)V
    .locals 9
    .param p2, "aTargetLatitudeE6"    # I
    .param p3, "aTargetLongitudeE6"    # I
    .param p4, "aStart"    # F
    .param p5, "aRange"    # F
    .param p6, "aYOffset"    # F

    .prologue
    .line 573
    const/16 v4, 0xa

    const/16 v5, 0x3e8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/osmdroid/views/MapControllerOld$CosinusalBasedAnimationRunner;-><init>(Lorg/osmdroid/views/MapControllerOld;IIIIFFF)V

    .line 575
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapControllerOld;IIIIFFF)V
    .locals 10
    .param p2, "aTargetLatitudeE6"    # I
    .param p3, "aTargetLongitudeE6"    # I
    .param p4, "aSmoothness"    # I
    .param p5, "aDuration"    # I
    .param p6, "aStart"    # F
    .param p7, "aRange"    # F
    .param p8, "aYOffset"    # F

    .prologue
    .line 579
    iput-object p1, p0, Lorg/osmdroid/views/MapControllerOld$CosinusalBasedAnimationRunner;->this$0:Lorg/osmdroid/views/MapControllerOld;

    .line 580
    invoke-direct/range {p0 .. p5}, Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;-><init>(Lorg/osmdroid/views/MapControllerOld;IIII)V

    .line 581
    move/from16 v0, p8

    iput v0, p0, Lorg/osmdroid/views/MapControllerOld$CosinusalBasedAnimationRunner;->mYOffset:F

    .line 582
    move/from16 v0, p6

    iput v0, p0, Lorg/osmdroid/views/MapControllerOld$CosinusalBasedAnimationRunner;->mStart:F

    .line 584
    int-to-float v4, p4

    div-float v4, p7, v4

    iput v4, p0, Lorg/osmdroid/views/MapControllerOld$CosinusalBasedAnimationRunner;->mStepIncrement:F

    .line 587
    const/4 v2, 0x0

    .line 588
    .local v2, "amountSum":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p4, :cond_0

    .line 589
    float-to-double v4, v2

    move/from16 v0, p8

    float-to-double v6, v0

    iget v8, p0, Lorg/osmdroid/views/MapControllerOld$CosinusalBasedAnimationRunner;->mStepIncrement:F

    int-to-float v9, v3

    mul-float/2addr v8, v9

    add-float v8, v8, p6

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v2, v4

    .line 588
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 592
    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, v2

    iput v4, p0, Lorg/osmdroid/views/MapControllerOld$CosinusalBasedAnimationRunner;->mAmountStretch:F

    .line 594
    const-string v4, "QuarterCosinusalDeceleratingAnimationRunner"

    invoke-virtual {p0, v4}, Lorg/osmdroid/views/MapControllerOld$CosinusalBasedAnimationRunner;->setName(Ljava/lang/String;)V

    .line 595
    return-void
.end method


# virtual methods
.method public onRunAnimation()V
    .locals 18

    .prologue
    .line 603
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/osmdroid/views/MapControllerOld$CosinusalBasedAnimationRunner;->this$0:Lorg/osmdroid/views/MapControllerOld;

    # getter for: Lorg/osmdroid/views/MapControllerOld;->mOsmv:Lorg/osmdroid/views/MapView;
    invoke-static {v14}, Lorg/osmdroid/views/MapControllerOld;->access$000(Lorg/osmdroid/views/MapControllerOld;)Lorg/osmdroid/views/MapView;

    move-result-object v10

    .line 604
    .local v10, "mapview":Lorg/osmdroid/views/MapView;
    invoke-virtual {v10}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v9

    .line 605
    .local v9, "mapCenter":Lorg/osmdroid/api/IGeoPoint;
    move-object/from16 v0, p0

    iget v13, v0, Lorg/osmdroid/views/MapControllerOld$CosinusalBasedAnimationRunner;->mStepDuration:I

    .line 606
    .local v13, "stepDuration":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/osmdroid/views/MapControllerOld$CosinusalBasedAnimationRunner;->mAmountStretch:F

    .line 611
    .local v2, "amountStretch":F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget v14, v0, Lorg/osmdroid/views/MapControllerOld$CosinusalBasedAnimationRunner;->mSmoothness:I

    if-ge v8, v14, :cond_0

    .line 613
    move-object/from16 v0, p0

    iget v14, v0, Lorg/osmdroid/views/MapControllerOld$CosinusalBasedAnimationRunner;->mYOffset:F

    float-to-double v14, v14

    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/views/MapControllerOld$CosinusalBasedAnimationRunner;->mStepIncrement:F

    move/from16 v16, v0

    int-to-float v0, v8

    move/from16 v17, v0

    mul-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/views/MapControllerOld$CosinusalBasedAnimationRunner;->mStart:F

    move/from16 v17, v0

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    add-double v14, v14, v16

    float-to-double v0, v2

    move-wide/from16 v16, v0

    mul-double v4, v14, v16

    .line 616
    .local v4, "delta":D
    move-object/from16 v0, p0

    iget v14, v0, Lorg/osmdroid/views/MapControllerOld$CosinusalBasedAnimationRunner;->mPanTotalLatitudeE6:I

    int-to-double v14, v14

    mul-double/2addr v14, v4

    double-to-int v3, v14

    .line 617
    .local v3, "deltaLatitudeE6":I
    move-object/from16 v0, p0

    iget v14, v0, Lorg/osmdroid/views/MapControllerOld$CosinusalBasedAnimationRunner;->mPanTotalLongitudeE6:I

    int-to-double v14, v14

    mul-double/2addr v14, v4

    double-to-int v6, v14

    .line 619
    .local v6, "deltaLongitudeE6":I
    invoke-interface {v9}, Lorg/osmdroid/api/IGeoPoint;->getLatitudeE6()I

    move-result v14

    sub-int v11, v14, v3

    .line 620
    .local v11, "newMapCenterLatE6":I
    invoke-interface {v9}, Lorg/osmdroid/api/IGeoPoint;->getLongitudeE6()I

    move-result v14

    sub-int v12, v14, v6

    .line 621
    .local v12, "newMapCenterLonE6":I
    new-instance v14, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v14, v11, v12}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    invoke-virtual {v10, v14}, Lorg/osmdroid/views/MapView;->setMapCenter(Lorg/osmdroid/api/IGeoPoint;)V

    .line 623
    int-to-long v14, v13

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V

    .line 611
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 625
    .end local v3    # "deltaLatitudeE6":I
    .end local v4    # "delta":D
    .end local v6    # "deltaLongitudeE6":I
    .end local v11    # "newMapCenterLatE6":I
    .end local v12    # "newMapCenterLonE6":I
    :cond_0
    new-instance v14, Lorg/osmdroid/util/GeoPoint;

    move-object/from16 v0, p0

    iget v15, v0, Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;->mTargetLatitudeE6:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;->mTargetLongitudeE6:I

    move/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    invoke-virtual {v10, v14}, Lorg/osmdroid/views/MapView;->setMapCenter(Lorg/osmdroid/api/IGeoPoint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    :goto_1
    return-void

    .line 626
    :catch_0
    move-exception v7

    .line 627
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapControllerOld$CosinusalBasedAnimationRunner;->interrupt()V

    goto :goto_1
.end method
