.class final Lcom/readystatesoftware/maps/TapControlledMapView$1;
.super Ljava/lang/Object;
.source "TapControlledMapView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/readystatesoftware/maps/TapControlledMapView;->setupGestures()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/readystatesoftware/maps/TapControlledMapView;


# direct methods
.method constructor <init>(Lcom/readystatesoftware/maps/TapControlledMapView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/readystatesoftware/maps/TapControlledMapView$1;->this$0:Lcom/readystatesoftware/maps/TapControlledMapView;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/readystatesoftware/maps/TapControlledMapView$1;->this$0:Lcom/readystatesoftware/maps/TapControlledMapView;

    invoke-virtual {v0}, Lcom/readystatesoftware/maps/TapControlledMapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/MapController;->zoomInFixing(II)Z

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/readystatesoftware/maps/TapControlledMapView$1;->this$0:Lcom/readystatesoftware/maps/TapControlledMapView;

    # getter for: Lcom/readystatesoftware/maps/TapControlledMapView;->singleTapListener:Lcom/readystatesoftware/maps/OnSingleTapListener;
    invoke-static {v0}, Lcom/readystatesoftware/maps/TapControlledMapView;->access$0(Lcom/readystatesoftware/maps/TapControlledMapView;)Lcom/readystatesoftware/maps/OnSingleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/readystatesoftware/maps/TapControlledMapView$1;->this$0:Lcom/readystatesoftware/maps/TapControlledMapView;

    # getter for: Lcom/readystatesoftware/maps/TapControlledMapView;->singleTapListener:Lcom/readystatesoftware/maps/OnSingleTapListener;
    invoke-static {v0}, Lcom/readystatesoftware/maps/TapControlledMapView;->access$0(Lcom/readystatesoftware/maps/TapControlledMapView;)Lcom/readystatesoftware/maps/OnSingleTapListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/readystatesoftware/maps/OnSingleTapListener;->onSingleTap$53fcfd4e()Z

    move-result v0

    .line 43
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
