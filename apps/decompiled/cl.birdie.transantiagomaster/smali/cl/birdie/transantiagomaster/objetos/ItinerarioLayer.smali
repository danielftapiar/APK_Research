.class public final Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;
.super Ljava/lang/Object;
.source "ItinerarioLayer.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/objetos/Dibujable;


# instance fields
.field itinerario:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

.field servicio:Lcl/birdie/transantiagomaster/newobjetos/Servicio;

.field size:I

.field x:[I

.field y:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->limpiar()V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcl/birdie/transantiagomaster/newobjetos/Servicio;[Lcl/birdie/transantiagomaster/newobjetos/Paradero;)V
    .locals 1
    .param p1, "s"    # Lcl/birdie/transantiagomaster/newobjetos/Servicio;
    .param p2, "itinerario"    # [Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->servicio:Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    .line 26
    iput-object p2, p0, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->itinerario:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 27
    array-length v0, p2

    iput v0, p0, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->size:I

    .line 28
    iget v0, p0, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->size:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->x:[I

    .line 29
    iget v0, p0, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->size:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->y:[I

    .line 30
    return-void
.end method


# virtual methods
.method public final declared-synchronized actualizar()V
    .locals 2

    .prologue
    .line 137
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v1, p0, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    .line 141
    monitor-exit p0

    return-void

    .line 138
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->itinerario:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->latlng:Lcl/birdie/toolkit/CacheableLatLng;

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->itinerario:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->latlng:Lcl/birdie/toolkit/CacheableLatLng;

    invoke-virtual {v1}, Lcl/birdie/toolkit/CacheableLatLng;->actualizar()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized calcularPosicionPromedio()Lcl/birdie/toolkit/LatLng;
    .locals 7

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    new-instance v2, Lcl/birdie/toolkit/LatLng;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcl/birdie/toolkit/LatLng;-><init>(DD)V

    .line 147
    .local v2, "prom":Lcl/birdie/toolkit/LatLng;
    iget v3, p0, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 148
    const/4 v2, 0x0

    .line 163
    .end local v2    # "prom":Lcl/birdie/toolkit/LatLng;
    :goto_0
    monitor-exit p0

    return-object v2

    .line 150
    .restart local v2    # "prom":Lcl/birdie/toolkit/LatLng;
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget v3, p0, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->size:I

    if-lt v0, v3, :cond_1

    .line 160
    iget-wide v3, v2, Lcl/birdie/toolkit/LatLng;->lat:D

    iget v5, p0, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->size:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    iput-wide v3, v2, Lcl/birdie/toolkit/LatLng;->lat:D

    .line 161
    iget-wide v3, v2, Lcl/birdie/toolkit/LatLng;->lng:D

    iget v5, p0, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->size:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    iput-wide v3, v2, Lcl/birdie/toolkit/LatLng;->lng:D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 145
    .end local v0    # "i":I
    .end local v2    # "prom":Lcl/birdie/toolkit/LatLng;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 151
    .restart local v0    # "i":I
    .restart local v2    # "prom":Lcl/birdie/toolkit/LatLng;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->itinerario:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    aget-object v3, v3, v0

    iget-object v1, v3, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->latlng:Lcl/birdie/toolkit/CacheableLatLng;

    .line 153
    .local v1, "pos":Lcl/birdie/toolkit/LatLng;
    if-eqz v1, :cond_2

    .line 154
    iget-wide v3, v2, Lcl/birdie/toolkit/LatLng;->lat:D

    iget-wide v5, v1, Lcl/birdie/toolkit/LatLng;->lat:D

    add-double/2addr v3, v5

    iput-wide v3, v2, Lcl/birdie/toolkit/LatLng;->lat:D

    .line 157
    iget-wide v3, v2, Lcl/birdie/toolkit/LatLng;->lng:D

    iget-wide v5, v1, Lcl/birdie/toolkit/LatLng;->lng:D

    add-double/2addr v3, v5

    iput-wide v3, v2, Lcl/birdie/toolkit/LatLng;->lng:D
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final declared-synchronized copy(Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;)V
    .locals 1
    .param p1, "l"    # Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->servicio:Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->servicio:Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    .line 42
    iget-object v0, p1, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->itinerario:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->itinerario:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 43
    iget v0, p1, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->size:I

    iput v0, p0, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->size:I

    .line 44
    iget-object v0, p1, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->x:[I

    iput-object v0, p0, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->x:[I

    .line 45
    iget-object v0, p1, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->y:[I

    iput-object v0, p0, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->y:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized limpiar()V
    .locals 1

    .prologue
    .line 33
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->servicio:Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->itinerario:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->size:I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->x:[I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->y:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
