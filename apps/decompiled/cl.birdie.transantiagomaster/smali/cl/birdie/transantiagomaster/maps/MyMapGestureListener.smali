.class public final Lcl/birdie/transantiagomaster/maps/MyMapGestureListener;
.super Ljava/lang/Object;
.source "MyMapGestureListener.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field private app:Lcl/birdie/transantiagomaster/GApp;


# direct methods
.method public constructor <init>(Lcl/birdie/transantiagomaster/GApp;)V
    .locals 0
    .param p1, "app"    # Lcl/birdie/transantiagomaster/GApp;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcl/birdie/transantiagomaster/maps/MyMapGestureListener;->app:Lcl/birdie/transantiagomaster/GApp;

    .line 17
    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 32
    iget-object v2, p0, Lcl/birdie/transantiagomaster/maps/MyMapGestureListener;->app:Lcl/birdie/transantiagomaster/GApp;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 32
    invoke-interface {v2, v3, v4}, Lcl/birdie/transantiagomaster/ITSMMapView;->getProyeccionDesdePixeles(II)Lcl/birdie/toolkit/LatLng;

    move-result-object v0

    .line 34
    .local v0, "ll":Lcl/birdie/toolkit/LatLng;
    if-nez v0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    sput-object v0, Lcl/birdie/transantiagomaster/Pantalla;->lugarMarcadoMapa:Lcl/birdie/toolkit/LatLng;

    .line 39
    iget-object v2, p0, Lcl/birdie/transantiagomaster/maps/MyMapGestureListener;->app:Lcl/birdie/transantiagomaster/GApp;

    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/GApp;->dibujarLugarMarcado()V

    .line 41
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-boolean v2, v2, Lcl/birdie/params/Preferencias;->Vibracion:Z

    if-eqz v2, :cond_0

    .line 43
    iget-object v2, p0, Lcl/birdie/transantiagomaster/maps/MyMapGestureListener;->app:Lcl/birdie/transantiagomaster/GApp;

    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/GApp;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 44
    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 43
    check-cast v1, Landroid/os/Vibrator;

    .line 45
    .local v1, "vibrator":Landroid/os/Vibrator;
    if-eqz v1, :cond_0

    .line 46
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 58
    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method
