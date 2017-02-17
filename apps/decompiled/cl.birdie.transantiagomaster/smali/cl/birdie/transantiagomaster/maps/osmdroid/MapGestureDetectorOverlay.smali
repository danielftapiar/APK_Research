.class public final Lcl/birdie/transantiagomaster/maps/osmdroid/MapGestureDetectorOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "MapGestureDetectorOverlay.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field private gestureDetector:Landroid/view/GestureDetector;

.field private onGestureListener:Landroid/view/GestureDetector$OnGestureListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lorg/osmdroid/views/overlay/Overlay;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/MapGestureDetectorOverlay;->gestureDetector:Landroid/view/GestureDetector;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "onGestureListener"    # Landroid/view/GestureDetector$OnGestureListener;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcl/birdie/transantiagomaster/maps/osmdroid/MapGestureDetectorOverlay;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p2, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/MapGestureDetectorOverlay;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 25
    return-void
.end method


# virtual methods
.method protected final draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 0
    .param p1, "arg0"    # Landroid/graphics/Canvas;
    .param p2, "arg1"    # Lorg/osmdroid/views/MapView;
    .param p3, "arg2"    # Z

    .prologue
    .line 102
    return-void
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 37
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/MapGestureDetectorOverlay;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/MapGestureDetectorOverlay;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 40
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
    .line 46
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/MapGestureDetectorOverlay;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/MapGestureDetectorOverlay;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    .line 49
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
    .line 54
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/MapGestureDetectorOverlay;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/MapGestureDetectorOverlay;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 57
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
    .line 62
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/MapGestureDetectorOverlay;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/MapGestureDetectorOverlay;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 65
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 70
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/MapGestureDetectorOverlay;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/MapGestureDetectorOverlay;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    .line 73
    :cond_0
    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 77
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/MapGestureDetectorOverlay;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/MapGestureDetectorOverlay;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    .line 80
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onTouchEvent$4682072e(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 29
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/MapGestureDetectorOverlay;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const/4 v0, 0x1

    .line 32
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
