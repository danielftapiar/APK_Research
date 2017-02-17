.class public final Lcl/birdie/transantiagomaster/objetos/PlacemarkLayer;
.super Ljava/lang/Object;
.source "PlacemarkLayer.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/objetos/Dibujable;


# instance fields
.field objetos:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcl/birdie/transantiagomaster/objetos/Placemark;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/objetos/PlacemarkLayer;->objetos:Ljava/util/Vector;

    .line 13
    return-void
.end method


# virtual methods
.method public final declared-synchronized anadirPlacemark(Lcl/birdie/toolkit/LatLng;)V
    .locals 2
    .param p1, "ll"    # Lcl/birdie/toolkit/LatLng;

    .prologue
    .line 16
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcl/birdie/transantiagomaster/objetos/Placemark;

    invoke-direct {v0, p1}, Lcl/birdie/transantiagomaster/objetos/Placemark;-><init>(Lcl/birdie/toolkit/LatLng;)V

    .line 17
    .local v0, "p":Lcl/birdie/transantiagomaster/objetos/Placemark;
    iget-object v1, p0, Lcl/birdie/transantiagomaster/objetos/PlacemarkLayer;->objetos:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    .line 16
    .end local v0    # "p":Lcl/birdie/transantiagomaster/objetos/Placemark;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized calcularPosicionPromedio()Lcl/birdie/toolkit/LatLng;
    .locals 8

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    new-instance v2, Lcl/birdie/toolkit/LatLng;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {v2, v4, v5, v6, v7}, Lcl/birdie/toolkit/LatLng;-><init>(DD)V

    .line 64
    .local v2, "prom":Lcl/birdie/toolkit/LatLng;
    const/4 v0, 0x0

    .line 67
    .local v0, "cnt":I
    iget-object v4, p0, Lcl/birdie/transantiagomaster/objetos/PlacemarkLayer;->objetos:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "sz":I
    :goto_0
    if-gez v3, :cond_0

    .line 80
    if-nez v0, :cond_2

    .line 81
    const/4 v2, 0x0

    .line 86
    .end local v2    # "prom":Lcl/birdie/toolkit/LatLng;
    :goto_1
    monitor-exit p0

    return-object v2

    .line 68
    .restart local v2    # "prom":Lcl/birdie/toolkit/LatLng;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcl/birdie/transantiagomaster/objetos/PlacemarkLayer;->objetos:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcl/birdie/transantiagomaster/objetos/Dibujable;

    .line 70
    invoke-interface {v4}, Lcl/birdie/transantiagomaster/objetos/Dibujable;->calcularPosicionPromedio()Lcl/birdie/toolkit/LatLng;

    move-result-object v1

    .line 72
    .local v1, "pos":Lcl/birdie/toolkit/LatLng;
    if-eqz v1, :cond_1

    .line 73
    iget-wide v4, v2, Lcl/birdie/toolkit/LatLng;->lat:D

    iget-wide v6, v1, Lcl/birdie/toolkit/LatLng;->lat:D

    add-double/2addr v4, v6

    iput-wide v4, v2, Lcl/birdie/toolkit/LatLng;->lat:D

    .line 76
    iget-wide v4, v2, Lcl/birdie/toolkit/LatLng;->lng:D

    iget-wide v6, v1, Lcl/birdie/toolkit/LatLng;->lng:D

    add-double/2addr v4, v6

    iput-wide v4, v2, Lcl/birdie/toolkit/LatLng;->lng:D

    .line 77
    add-int/lit8 v0, v0, 0x1

    .line 67
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 83
    .end local v1    # "pos":Lcl/birdie/toolkit/LatLng;
    :cond_2
    iget-wide v4, v2, Lcl/birdie/toolkit/LatLng;->lat:D

    int-to-double v6, v0

    div-double/2addr v4, v6

    iput-wide v4, v2, Lcl/birdie/toolkit/LatLng;->lat:D

    .line 84
    iget-wide v4, v2, Lcl/birdie/toolkit/LatLng;->lng:D

    int-to-double v6, v0

    div-double/2addr v4, v6

    iput-wide v4, v2, Lcl/birdie/toolkit/LatLng;->lng:D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 63
    .end local v0    # "cnt":I
    .end local v2    # "prom":Lcl/birdie/toolkit/LatLng;
    .end local v3    # "sz":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public final declared-synchronized limpiar()V
    .locals 1

    .prologue
    .line 21
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/objetos/PlacemarkLayer;->objetos:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit p0

    return-void

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
