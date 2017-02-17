.class public Lorg/osmdroid/views/MapController$MyZoomAnimatorUpdateListener;
.super Ljava/lang/Object;
.source "MapController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/MapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyZoomAnimatorUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/views/MapController;


# direct methods
.method protected constructor <init>(Lorg/osmdroid/views/MapController;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lorg/osmdroid/views/MapController$MyZoomAnimatorUpdateListener;->this$0:Lorg/osmdroid/views/MapController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 294
    iget-object v0, p0, Lorg/osmdroid/views/MapController$MyZoomAnimatorUpdateListener;->this$0:Lorg/osmdroid/views/MapController;

    iget-object v1, v0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    .line 295
    iget-object v0, p0, Lorg/osmdroid/views/MapController$MyZoomAnimatorUpdateListener;->this$0:Lorg/osmdroid/views/MapController;

    iget-object v0, v0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 296
    return-void
.end method
