.class Lorg/osmdroid/views/MapControllerOld$ExponentialDeceleratingAnimationRunner;
.super Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;
.source "MapControllerOld.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/MapControllerOld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExponentialDeceleratingAnimationRunner"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/views/MapControllerOld;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapControllerOld;II)V
    .locals 6
    .param p2, "aTargetLatitudeE6"    # I
    .param p3, "aTargetLongitudeE6"    # I

    .prologue
    .line 513
    const/16 v4, 0xa

    const/16 v5, 0x3e8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/MapControllerOld$ExponentialDeceleratingAnimationRunner;-><init>(Lorg/osmdroid/views/MapControllerOld;IIII)V

    .line 515
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapControllerOld;IIII)V
    .locals 1
    .param p2, "aTargetLatitudeE6"    # I
    .param p3, "aTargetLongitudeE6"    # I
    .param p4, "aSmoothness"    # I
    .param p5, "aDuration"    # I

    .prologue
    .line 518
    iput-object p1, p0, Lorg/osmdroid/views/MapControllerOld$ExponentialDeceleratingAnimationRunner;->this$0:Lorg/osmdroid/views/MapControllerOld;

    .line 519
    invoke-direct/range {p0 .. p5}, Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;-><init>(Lorg/osmdroid/views/MapControllerOld;IIII)V

    .line 521
    const-string v0, "ExponentialDeceleratingAnimationRunner"

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/MapControllerOld$ExponentialDeceleratingAnimationRunner;->setName(Ljava/lang/String;)V

    .line 522
    return-void
.end method


# virtual methods
.method public onRunAnimation()V
    .locals 18

    .prologue
    .line 530
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/osmdroid/views/MapControllerOld$ExponentialDeceleratingAnimationRunner;->this$0:Lorg/osmdroid/views/MapControllerOld;

    # getter for: Lorg/osmdroid/views/MapControllerOld;->mOsmv:Lorg/osmdroid/views/MapView;
    invoke-static {v13}, Lorg/osmdroid/views/MapControllerOld;->access$000(Lorg/osmdroid/views/MapControllerOld;)Lorg/osmdroid/views/MapView;

    move-result-object v9

    .line 531
    .local v9, "mapview":Lorg/osmdroid/views/MapView;
    invoke-virtual {v9}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v8

    .line 532
    .local v8, "mapCenter":Lorg/osmdroid/api/IGeoPoint;
    move-object/from16 v0, p0

    iget v12, v0, Lorg/osmdroid/views/MapControllerOld$ExponentialDeceleratingAnimationRunner;->mStepDuration:I

    .line 537
    .local v12, "stepDuration":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget v13, v0, Lorg/osmdroid/views/MapControllerOld$ExponentialDeceleratingAnimationRunner;->mSmoothness:I

    if-ge v7, v13, :cond_0

    .line 539
    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-int/lit8 v13, v7, 0x1

    int-to-double v0, v13

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 540
    .local v2, "delta":D
    move-object/from16 v0, p0

    iget v13, v0, Lorg/osmdroid/views/MapControllerOld$ExponentialDeceleratingAnimationRunner;->mPanTotalLatitudeE6:I

    int-to-double v14, v13

    mul-double/2addr v14, v2

    double-to-int v4, v14

    .line 541
    .local v4, "deltaLatitudeE6":I
    move-object/from16 v0, p0

    iget v13, v0, Lorg/osmdroid/views/MapControllerOld$ExponentialDeceleratingAnimationRunner;->mPanTotalLongitudeE6:I

    int-to-double v14, v13

    mul-double/2addr v14, v2

    double-to-int v5, v14

    .line 543
    .local v5, "detlaLongitudeE6":I
    invoke-interface {v8}, Lorg/osmdroid/api/IGeoPoint;->getLatitudeE6()I

    move-result v13

    sub-int v10, v13, v4

    .line 544
    .local v10, "newMapCenterLatE6":I
    invoke-interface {v8}, Lorg/osmdroid/api/IGeoPoint;->getLongitudeE6()I

    move-result v13

    sub-int v11, v13, v5

    .line 545
    .local v11, "newMapCenterLonE6":I
    new-instance v13, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v13, v10, v11}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    invoke-virtual {v9, v13}, Lorg/osmdroid/views/MapView;->setMapCenter(Lorg/osmdroid/api/IGeoPoint;)V

    .line 547
    int-to-long v14, v12

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V

    .line 537
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 549
    .end local v2    # "delta":D
    .end local v4    # "deltaLatitudeE6":I
    .end local v5    # "detlaLongitudeE6":I
    .end local v10    # "newMapCenterLatE6":I
    .end local v11    # "newMapCenterLonE6":I
    :cond_0
    new-instance v13, Lorg/osmdroid/util/GeoPoint;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;->mTargetLatitudeE6:I

    move-object/from16 v0, p0

    iget v15, v0, Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;->mTargetLongitudeE6:I

    invoke-direct {v13, v14, v15}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    invoke-virtual {v9, v13}, Lorg/osmdroid/views/MapView;->setMapCenter(Lorg/osmdroid/api/IGeoPoint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :goto_1
    return-void

    .line 550
    :catch_0
    move-exception v6

    .line 551
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapControllerOld$ExponentialDeceleratingAnimationRunner;->interrupt()V

    goto :goto_1
.end method
