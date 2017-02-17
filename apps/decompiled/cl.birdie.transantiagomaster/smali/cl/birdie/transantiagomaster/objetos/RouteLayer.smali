.class public final Lcl/birdie/transantiagomaster/objetos/RouteLayer;
.super Ljava/lang/Object;
.source "RouteLayer.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/objetos/Dibujable;


# instance fields
.field cnt:I

.field objetos:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/objetos/RouteLayer;->objetos:Ljava/util/Vector;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcl/birdie/transantiagomaster/objetos/RouteLayer;->cnt:I

    .line 25
    return-void
.end method


# virtual methods
.method public final declared-synchronized calcularPosicionPromedio()Lcl/birdie/toolkit/LatLng;
    .locals 8

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    new-instance v2, Lcl/birdie/toolkit/LatLng;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {v2, v4, v5, v6, v7}, Lcl/birdie/toolkit/LatLng;-><init>(DD)V

    .line 94
    .local v2, "prom":Lcl/birdie/toolkit/LatLng;
    const/4 v0, 0x0

    .line 97
    .local v0, "cnt":I
    iget-object v4, p0, Lcl/birdie/transantiagomaster/objetos/RouteLayer;->objetos:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "sz":I
    :goto_0
    if-gez v3, :cond_0

    .line 110
    if-nez v0, :cond_2

    .line 111
    const/4 v2, 0x0

    .line 116
    .end local v2    # "prom":Lcl/birdie/toolkit/LatLng;
    :goto_1
    monitor-exit p0

    return-object v2

    .line 98
    .restart local v2    # "prom":Lcl/birdie/toolkit/LatLng;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcl/birdie/transantiagomaster/objetos/RouteLayer;->objetos:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcl/birdie/transantiagomaster/objetos/Dibujable;

    .line 100
    invoke-interface {v4}, Lcl/birdie/transantiagomaster/objetos/Dibujable;->calcularPosicionPromedio()Lcl/birdie/toolkit/LatLng;

    move-result-object v1

    .line 102
    .local v1, "pos":Lcl/birdie/toolkit/LatLng;
    if-eqz v1, :cond_1

    .line 103
    iget-wide v4, v2, Lcl/birdie/toolkit/LatLng;->lat:D

    iget-wide v6, v1, Lcl/birdie/toolkit/LatLng;->lat:D

    add-double/2addr v4, v6

    iput-wide v4, v2, Lcl/birdie/toolkit/LatLng;->lat:D

    .line 106
    iget-wide v4, v2, Lcl/birdie/toolkit/LatLng;->lng:D

    iget-wide v6, v1, Lcl/birdie/toolkit/LatLng;->lng:D

    add-double/2addr v4, v6

    iput-wide v4, v2, Lcl/birdie/toolkit/LatLng;->lng:D

    .line 107
    add-int/lit8 v0, v0, 0x1

    .line 97
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 113
    .end local v1    # "pos":Lcl/birdie/toolkit/LatLng;
    :cond_2
    iget-wide v4, v2, Lcl/birdie/toolkit/LatLng;->lat:D

    int-to-double v6, v0

    div-double/2addr v4, v6

    iput-wide v4, v2, Lcl/birdie/toolkit/LatLng;->lat:D

    .line 114
    iget-wide v4, v2, Lcl/birdie/toolkit/LatLng;->lng:D

    int-to-double v6, v0

    div-double/2addr v4, v6

    iput-wide v4, v2, Lcl/birdie/toolkit/LatLng;->lng:D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 93
    .end local v0    # "cnt":I
    .end local v2    # "prom":Lcl/birdie/toolkit/LatLng;
    .end local v3    # "sz":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
