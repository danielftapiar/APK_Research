.class public final Lcl/birdie/transantiagomaster/maps/google/MapGestureDetectorOverlay;
.super Lcom/google/android/maps/Overlay;
.source "MapGestureDetectorOverlay.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field private gestureDetector:Landroid/view/GestureDetector;

.field private onGestureListener:Landroid/view/GestureDetector$OnGestureListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/maps/Overlay;-><init>()V

    .line 16
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/MapGestureDetectorOverlay;->gestureDetector:Landroid/view/GestureDetector;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 0
    .param p1, "onGestureListener"    # Landroid/view/GestureDetector$OnGestureListener;

    .prologue
    .line 20
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/maps/google/MapGestureDetectorOverlay;-><init>()V

    .line 21
    iput-object p1, p0, Lcl/birdie/transantiagomaster/maps/google/MapGestureDetectorOverlay;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 22
    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 34
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/MapGestureDetectorOverlay;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/MapGestureDetectorOverlay;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 37
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 43
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/MapGestureDetectorOverlay;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/MapGestureDetectorOverlay;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 51
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/MapGestureDetectorOverlay;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/MapGestureDetectorOverlay;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 54
    :cond_0
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 59
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/MapGestureDetectorOverlay;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/MapGestureDetectorOverlay;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 62
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 67
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/MapGestureDetectorOverlay;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/MapGestureDetectorOverlay;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    .line 70
    :cond_0
    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 74
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/MapGestureDetectorOverlay;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/MapGestureDetectorOverlay;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    .line 77
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;

    .prologue
    .line 26
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/MapGestureDetectorOverlay;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x1

    .line 29
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
