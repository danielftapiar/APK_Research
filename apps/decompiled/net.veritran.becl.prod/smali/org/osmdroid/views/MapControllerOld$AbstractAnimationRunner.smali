.class abstract Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;
.super Ljava/lang/Thread;
.source "MapControllerOld.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/MapControllerOld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractAnimationRunner"
.end annotation


# instance fields
.field protected mDone:Z

.field protected final mPanTotalLatitudeE6:I

.field protected final mPanTotalLongitudeE6:I

.field protected final mSmoothness:I

.field protected final mStepDuration:I

.field protected final mTargetLatitudeE6:I

.field protected final mTargetLongitudeE6:I

.field final synthetic this$0:Lorg/osmdroid/views/MapControllerOld;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapControllerOld;IIII)V
    .locals 3
    .param p2, "aTargetLatitudeE6"    # I
    .param p3, "aTargetLongitudeE6"    # I
    .param p4, "aSmoothness"    # I
    .param p5, "aDuration"    # I

    .prologue
    .line 410
    iput-object p1, p0, Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;->this$0:Lorg/osmdroid/views/MapControllerOld;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 391
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;->mDone:Z

    .line 411
    iput p2, p0, Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;->mTargetLatitudeE6:I

    .line 412
    iput p3, p0, Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;->mTargetLongitudeE6:I

    .line 413
    iput p4, p0, Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;->mSmoothness:I

    .line 414
    div-int v2, p5, p4

    iput v2, p0, Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;->mStepDuration:I

    .line 417
    # getter for: Lorg/osmdroid/views/MapControllerOld;->mOsmv:Lorg/osmdroid/views/MapView;
    invoke-static {p1}, Lorg/osmdroid/views/MapControllerOld;->access$000(Lorg/osmdroid/views/MapControllerOld;)Lorg/osmdroid/views/MapView;

    move-result-object v1

    .line 418
    .local v1, "mapview":Lorg/osmdroid/views/MapView;
    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    .line 420
    .local v0, "mapCenter":Lorg/osmdroid/api/IGeoPoint;
    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitudeE6()I

    move-result v2

    sub-int/2addr v2, p2

    iput v2, p0, Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;->mPanTotalLatitudeE6:I

    .line 421
    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitudeE6()I

    move-result v2

    sub-int/2addr v2, p3

    iput v2, p0, Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;->mPanTotalLongitudeE6:I

    .line 422
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapControllerOld;Lorg/osmdroid/views/MapControllerOld;II)V
    .locals 6
    .param p2, "mapViewController"    # Lorg/osmdroid/views/MapControllerOld;
    .param p3, "aTargetLatitudeE6"    # I
    .param p4, "aTargetLongitudeE6"    # I

    .prologue
    .line 404
    const/16 v4, 0xa

    const/16 v5, 0x3e8

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;-><init>(Lorg/osmdroid/views/MapControllerOld;IIII)V

    .line 407
    return-void
.end method


# virtual methods
.method public isDone()Z
    .locals 1

    .prologue
    .line 431
    iget-boolean v0, p0, Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;->mDone:Z

    return v0
.end method

.method public abstract onRunAnimation()V
.end method

.method public run()V
    .locals 1

    .prologue
    .line 426
    invoke-virtual {p0}, Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;->onRunAnimation()V

    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/MapControllerOld$AbstractAnimationRunner;->mDone:Z

    .line 428
    return-void
.end method
