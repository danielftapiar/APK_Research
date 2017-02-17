.class public final Lcl/birdie/transantiagomaster/handlers/ServiciosController;
.super Ljava/lang/Object;
.source "ServiciosController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;
    }
.end annotation


# instance fields
.field private indiceItinerarioActual:I

.field private paraderosIda:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

.field private paraderosRegreso:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

.field private rutaIda:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/birdie/toolkit/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private rutaRegreso:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/birdie/toolkit/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private sentido:I

.field private servicioActual:Lcl/birdie/transantiagomaster/newobjetos/Servicio;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buscarPosicionEnItinerario([Lcl/birdie/transantiagomaster/newobjetos/Paradero;Lcl/birdie/toolkit/LatLng;)I
    .locals 9
    .param p0, "itinerario"    # [Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    .param p1, "ref"    # Lcl/birdie/toolkit/LatLng;

    .prologue
    .line 162
    const/4 v5, -0x1

    .line 164
    .local v5, "idx":I
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 165
    .local v2, "dmin":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, p0

    if-lt v4, v7, :cond_0

    .line 176
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "buscarPosicionEnItinerario: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    return v5

    .line 166
    :cond_0
    aget-object v7, p0, v4

    iget-object v6, v7, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->latlng:Lcl/birdie/toolkit/CacheableLatLng;

    .line 167
    .local v6, "ll":Lcl/birdie/toolkit/LatLng;
    if-eqz v6, :cond_2

    .line 168
    invoke-virtual {v6, p1}, Lcl/birdie/toolkit/LatLng;->distanciaGrados(Lcl/birdie/toolkit/LatLng;)D

    move-result-wide v0

    .line 170
    .local v0, "d":D
    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    cmpl-double v7, v2, v7

    if-eqz v7, :cond_1

    cmpl-double v7, v2, v0

    if-lez v7, :cond_2

    .line 171
    :cond_1
    move-wide v2, v0

    .line 172
    move v5, v4

    .line 165
    .end local v0    # "d":D
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final anteriorParadero()V
    .locals 2

    .prologue
    .line 258
    iget v1, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->indiceItinerarioActual:I

    if-gtz v1, :cond_0

    .line 269
    :goto_0
    return-void

    .line 261
    :cond_0
    iget v1, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->indiceItinerarioActual:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->indiceItinerarioActual:I

    .line 264
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getParaderoActual()Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    move-result-object v0

    .line 265
    .local v0, "par":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->latlng:Lcl/birdie/toolkit/CacheableLatLng;

    if-eqz v1, :cond_1

    .line 266
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getParaderoActual()Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    move-result-object v1

    iget-object v1, v1, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->latlng:Lcl/birdie/toolkit/CacheableLatLng;

    invoke-static {v1}, Lcl/birdie/transantiagomaster/Pantalla;->setCenter(Lcl/birdie/toolkit/LatLng;)V

    .line 268
    :cond_1
    sget-object v1, Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;->SEGUIR_OFF:Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;

    invoke-static {v1}, Lcl/birdie/transantiagomaster/Pantalla;->setSeguirPosicion(Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;)V

    goto :goto_0
.end method

.method public final buscarParadero(Lcl/birdie/transantiagomaster/newobjetos/Paradero;)Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;
    .locals 6
    .param p1, "paraderoActualPosicion"    # Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 312
    if-nez p1, :cond_3

    .line 314
    iget-object v2, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->paraderosIda:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->paraderosIda:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 315
    new-instance v1, Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;

    invoke-direct {v1, p0, v4, v4}, Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;-><init>(Lcl/birdie/transantiagomaster/handlers/ServiciosController;II)V

    .line 335
    :cond_0
    :goto_0
    return-object v1

    .line 317
    :cond_1
    iget-object v2, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->paraderosRegreso:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->paraderosRegreso:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 318
    new-instance v1, Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;

    invoke-direct {v1, p0, v4, v5}, Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;-><init>(Lcl/birdie/transantiagomaster/handlers/ServiciosController;II)V

    goto :goto_0

    .line 320
    :cond_2
    const-string v2, "ServiciosController"

    const-string v3, "buscarParadero: paradero null, res null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 324
    :cond_3
    iget-object v2, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->paraderosIda:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    if-eqz v2, :cond_4

    .line 325
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->paraderosIda:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    array-length v2, v2

    if-lt v0, v2, :cond_5

    .line 329
    .end local v0    # "i":I
    :cond_4
    iget-object v2, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->paraderosRegreso:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    if-eqz v2, :cond_0

    .line 330
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->paraderosRegreso:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 331
    iget-object v2, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->paraderosRegreso:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    iget-object v3, p1, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    .line 332
    new-instance v1, Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;

    invoke-direct {v1, p0, v0, v5}, Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;-><init>(Lcl/birdie/transantiagomaster/handlers/ServiciosController;II)V

    goto :goto_0

    .line 326
    :cond_5
    iget-object v2, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->paraderosIda:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    iget-object v3, p1, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    .line 327
    new-instance v1, Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;

    invoke-direct {v1, p0, v0, v4}, Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;-><init>(Lcl/birdie/transantiagomaster/handlers/ServiciosController;II)V

    goto :goto_0

    .line 325
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 330
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public final buscarPosicion(Lcl/birdie/toolkit/LatLng;)Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;
    .locals 3
    .param p1, "ref"    # Lcl/birdie/toolkit/LatLng;

    .prologue
    const/4 v2, -0x1

    .line 277
    iget-object v1, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->paraderosIda:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->paraderosIda:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    invoke-static {v1, p1}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->buscarPosicionEnItinerario([Lcl/birdie/transantiagomaster/newobjetos/Paradero;Lcl/birdie/toolkit/LatLng;)I

    move-result v0

    .line 279
    .local v0, "idx":I
    if-eq v0, v2, :cond_0

    .line 280
    new-instance v1, Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;-><init>(Lcl/birdie/transantiagomaster/handlers/ServiciosController;II)V

    .line 289
    .end local v0    # "idx":I
    :goto_0
    return-object v1

    .line 283
    :cond_0
    iget-object v1, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->paraderosRegreso:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    if-eqz v1, :cond_1

    .line 284
    iget-object v1, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->paraderosRegreso:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    invoke-static {v1, p1}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->buscarPosicionEnItinerario([Lcl/birdie/transantiagomaster/newobjetos/Paradero;Lcl/birdie/toolkit/LatLng;)I

    move-result v0

    .line 285
    .restart local v0    # "idx":I
    if-eq v0, v2, :cond_1

    .line 286
    new-instance v1, Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;-><init>(Lcl/birdie/transantiagomaster/handlers/ServiciosController;II)V

    goto :goto_0

    .line 289
    .end local v0    # "idx":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final buscarPosicion(Lcl/birdie/toolkit/LatLng;I)Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;
    .locals 3
    .param p1, "ref"    # Lcl/birdie/toolkit/LatLng;
    .param p2, "sentido"    # I

    .prologue
    const/4 v2, -0x1

    .line 129
    packed-switch p2, :pswitch_data_0

    .line 142
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 131
    :pswitch_0
    iget-object v1, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->paraderosIda:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    invoke-static {v1, p1}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->buscarPosicionEnItinerario([Lcl/birdie/transantiagomaster/newobjetos/Paradero;Lcl/birdie/toolkit/LatLng;)I

    move-result v0

    .line 132
    .local v0, "idx":I
    if-eq v0, v2, :cond_0

    .line 133
    new-instance v1, Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;-><init>(Lcl/birdie/transantiagomaster/handlers/ServiciosController;II)V

    goto :goto_0

    .line 136
    .end local v0    # "idx":I
    :pswitch_1
    iget-object v1, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->paraderosRegreso:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    invoke-static {v1, p1}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->buscarPosicionEnItinerario([Lcl/birdie/transantiagomaster/newobjetos/Paradero;Lcl/birdie/toolkit/LatLng;)I

    move-result v0

    .line 137
    .restart local v0    # "idx":I
    if-eq v0, v2, :cond_0

    .line 138
    new-instance v1, Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;-><init>(Lcl/birdie/transantiagomaster/handlers/ServiciosController;II)V

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final cambiarSentido(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V
    .locals 6
    .param p1, "listener"    # Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    .prologue
    const/4 v5, 0x1

    .line 209
    iget-object v3, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->servicioActual:Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    if-nez v3, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getParaderoActual()Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    move-result-object v2

    .line 214
    .local v2, "par":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    if-eqz v2, :cond_0

    .line 217
    iget-object v1, v2, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->latlng:Lcl/birdie/toolkit/CacheableLatLng;

    .line 219
    .local v1, "ll":Lcl/birdie/toolkit/LatLng;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "indice actual: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->indiceItinerarioActual:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    iget v3, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->sentido:I

    packed-switch v3, :pswitch_data_0

    .line 231
    :goto_1
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getParaderosServicioActual()[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    move-result-object v3

    invoke-static {v3, v1}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->buscarPosicionEnItinerario([Lcl/birdie/transantiagomaster/newobjetos/Paradero;Lcl/birdie/toolkit/LatLng;)I

    move-result v0

    .line 232
    .local v0, "idx":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 233
    const-string v3, "ServiciosController"

    const-string v4, "cambiarSentido: no existe posicion cercana?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v0, 0x0

    .line 237
    :cond_2
    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->setIndice(I)V

    .line 239
    if-eqz p1, :cond_3

    .line 240
    invoke-interface {p1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->setItinerarioLayer()V

    .line 242
    :cond_3
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getParaderoActual()Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    move-result-object v3

    invoke-virtual {v3}, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->getGeoPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v3

    invoke-static {v3}, Lcl/birdie/transantiagomaster/Pantalla;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 243
    sput-boolean v5, Lcl/birdie/transantiagomaster/TileHandler;->refresh:Z

    goto :goto_0

    .line 223
    .end local v0    # "idx":I
    :pswitch_0
    iput v5, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->sentido:I

    goto :goto_1

    .line 226
    :pswitch_1
    const/4 v3, 0x0

    iput v3, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->sentido:I

    goto :goto_1

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final cargarDatosItinerario(Lcl/birdie/transantiagomaster/handlers/ItinerarioHandler;)V
    .locals 1
    .param p1, "s"    # Lcl/birdie/transantiagomaster/handlers/ItinerarioHandler;

    .prologue
    .line 102
    iget-object v0, p1, Lcl/birdie/transantiagomaster/handlers/ItinerarioHandler;->paraderosIda:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->paraderosIda:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 103
    iget-object v0, p1, Lcl/birdie/transantiagomaster/handlers/ItinerarioHandler;->paraderosRegreso:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->paraderosRegreso:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 104
    iget-object v0, p1, Lcl/birdie/transantiagomaster/handlers/ItinerarioHandler;->rutaIda:Ljava/util/ArrayList;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->rutaIda:Ljava/util/ArrayList;

    .line 105
    iget-object v0, p1, Lcl/birdie/transantiagomaster/handlers/ItinerarioHandler;->rutaRegreso:Ljava/util/ArrayList;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->rutaRegreso:Ljava/util/ArrayList;

    .line 106
    return-void
.end method

.method public final cargarDatosItinerario([Lcl/birdie/transantiagomaster/newobjetos/Paradero;[Lcl/birdie/transantiagomaster/newobjetos/Paradero;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "apida"    # [Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    .param p2, "apvuelta"    # [Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcl/birdie/transantiagomaster/newobjetos/Paradero;",
            "[",
            "Lcl/birdie/transantiagomaster/newobjetos/Paradero;",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/birdie/toolkit/LatLng;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/birdie/toolkit/LatLng;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p3, "rida":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/birdie/toolkit/LatLng;>;"
    .local p4, "rvuelta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/birdie/toolkit/LatLng;>;"
    iput-object p1, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->paraderosIda:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 111
    iput-object p2, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->paraderosRegreso:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 112
    iput-object p3, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->rutaIda:Ljava/util/ArrayList;

    .line 113
    iput-object p4, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->rutaRegreso:Ljava/util/ArrayList;

    .line 114
    return-void
.end method

.method public final getListaParaderosServicioActual()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcl/birdie/transantiagomaster/newobjetos/Paradero;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    const/4 v2, 0x0

    .line 85
    .local v2, "pars":[Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, "lpars":Ljava/util/List;, "Ljava/util/List<Lcl/birdie/transantiagomaster/newobjetos/Paradero;>;"
    iget v3, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->sentido:I

    packed-switch v3, :pswitch_data_0

    .line 90
    :goto_0
    if-eqz v2, :cond_0

    .line 91
    array-length v4, v2

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v4, :cond_1

    .line 94
    :cond_0
    return-object v0

    .line 87
    :pswitch_0
    iget-object v2, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->paraderosIda:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    goto :goto_0

    .line 88
    :pswitch_1
    iget-object v2, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->paraderosRegreso:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    goto :goto_0

    .line 91
    :cond_1
    aget-object v1, v2, v3

    .line 92
    .local v1, "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 86
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getNombre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->servicioActual:Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->nombre:Ljava/lang/String;

    return-object v0
.end method

.method public final getParaderoActual()Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 30
    iget v1, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->sentido:I

    packed-switch v1, :pswitch_data_0

    .line 36
    :cond_0
    :goto_0
    return-object v0

    .line 32
    :pswitch_0
    iget-object v1, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->paraderosIda:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    array-length v1, v1

    iget v2, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->indiceItinerarioActual:I

    if-le v1, v2, :cond_0

    iget-object v0, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->paraderosIda:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iget v1, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->indiceItinerarioActual:I

    aget-object v0, v0, v1

    goto :goto_0

    .line 34
    :pswitch_1
    iget-object v1, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->paraderosRegreso:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    array-length v1, v1

    iget v2, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->indiceItinerarioActual:I

    if-le v1, v2, :cond_0

    iget-object v0, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->paraderosRegreso:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iget v1, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->indiceItinerarioActual:I

    aget-object v0, v0, v1

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getParaderosServicioActual()[Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->sentido:I

    packed-switch v0, :pswitch_data_0

    .line 80
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 77
    :pswitch_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->paraderosIda:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    goto :goto_0

    .line 78
    :pswitch_1
    iget-object v0, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->paraderosRegreso:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getRutaServicioActual()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcl/birdie/toolkit/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget v0, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->sentido:I

    packed-switch v0, :pswitch_data_0

    .line 53
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 50
    :pswitch_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->rutaIda:Ljava/util/ArrayList;

    goto :goto_0

    .line 51
    :pswitch_1
    iget-object v0, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->rutaRegreso:Ljava/util/ArrayList;

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getServicioActual()Lcl/birdie/transantiagomaster/newobjetos/Servicio;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->servicioActual:Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    return-object v0
.end method

.method public final getTextoIda()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->servicioActual:Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->textoIda:Ljava/lang/String;

    return-object v0
.end method

.method public final getTextoRegreso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->servicioActual:Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->textoRegreso:Ljava/lang/String;

    return-object v0
.end method

.method public final restoreFromBundle(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 344
    const-string v4, "res.servicioActual"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    iput-object v4, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->servicioActual:Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    .line 346
    const-string v4, "res.indiceItinerarioActual"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->indiceItinerarioActual:I

    .line 349
    const-string v4, "res.paraderosIda"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 350
    .local v3, "pars":[Landroid/os/Parcelable;
    if-eqz v3, :cond_0

    .line 351
    array-length v4, v3

    new-array v4, v4, [Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iput-object v4, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->paraderosIda:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 352
    const/4 v0, 0x0

    .line 353
    .local v0, "cnt":I
    array-length v6, v3

    move v4, v5

    move v1, v0

    .end local v0    # "cnt":I
    .local v1, "cnt":I
    :goto_0
    if-lt v4, v6, :cond_2

    .line 357
    .end local v1    # "cnt":I
    :cond_0
    const-string v4, "res.paraderosRegreso"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 358
    if-eqz v3, :cond_1

    .line 359
    array-length v4, v3

    new-array v4, v4, [Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iput-object v4, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->paraderosRegreso:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 360
    const/4 v0, 0x0

    .line 361
    .restart local v0    # "cnt":I
    array-length v6, v3

    move v4, v5

    move v1, v0

    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    :goto_1
    if-lt v4, v6, :cond_3

    .line 365
    .end local v1    # "cnt":I
    :cond_1
    const-string v4, "res.rutaIda"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->rutaIda:Ljava/util/ArrayList;

    .line 366
    const-string v4, "res.rutaRegreso"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->rutaRegreso:Ljava/util/ArrayList;

    .line 367
    const-string v4, "res.sentido"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->sentido:I

    .line 368
    return-void

    .line 353
    .restart local v1    # "cnt":I
    :cond_2
    aget-object v2, v3, v4

    .line 354
    .local v2, "par":Landroid/os/Parcelable;
    iget-object v7, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->paraderosIda:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    check-cast v2, Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .end local v2    # "par":Landroid/os/Parcelable;
    aput-object v2, v7, v1

    .line 353
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    goto :goto_0

    .line 361
    :cond_3
    aget-object v2, v3, v4

    .line 362
    .restart local v2    # "par":Landroid/os/Parcelable;
    iget-object v5, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->paraderosRegreso:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    check-cast v2, Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .end local v2    # "par":Landroid/os/Parcelable;
    aput-object v2, v5, v1

    .line 361
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    goto :goto_1
.end method

.method public final saveToBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 371
    const-string v0, "res.servicioActual"

    iget-object v1, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->servicioActual:Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 373
    const-string v0, "res.indiceItinerarioActual"

    iget v1, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->indiceItinerarioActual:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 374
    const-string v0, "res.paraderosIda"

    iget-object v1, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->paraderosIda:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 375
    const-string v0, "res.paraderosRegreso"

    iget-object v1, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->paraderosRegreso:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 376
    const-string v0, "res.rutaIda"

    iget-object v1, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->rutaIda:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 377
    const-string v0, "res.rutaRegreso"

    iget-object v1, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->rutaRegreso:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 378
    const-string v0, "res.sentido"

    iget v1, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->sentido:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 379
    return-void
.end method

.method public final setIndice(I)V
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setIndice: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getParaderosServicioActual()[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    move-result-object v0

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 183
    const-string v0, "ServiciosController"

    const-string v1, "setIndice: FUERA DE RANGO!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 p1, 0x0

    .line 186
    :cond_0
    iput p1, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->indiceItinerarioActual:I

    .line 187
    return-void
.end method

.method public final setParaderoSeleccionado(Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;)V
    .locals 1
    .param p1, "res"    # Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;

    .prologue
    .line 339
    iget v0, p1, Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;->sentido:I

    iput v0, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->sentido:I

    .line 340
    iget v0, p1, Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;->idx:I

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->setIndice(I)V

    .line 341
    return-void
.end method

.method public final setServicioActual(Lcl/birdie/transantiagomaster/newobjetos/Servicio;)V
    .locals 2
    .param p1, "s"    # Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setServicioActual: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->nombre:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->servicioActual:Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    .line 42
    return-void
.end method

.method public final siguienteParadero()V
    .locals 3

    .prologue
    .line 247
    iget v1, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->indiceItinerarioActual:I

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getParaderosServicioActual()[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 248
    iget v1, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->indiceItinerarioActual:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->indiceItinerarioActual:I

    .line 250
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getParaderoActual()Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    move-result-object v0

    .line 251
    .local v0, "par":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->latlng:Lcl/birdie/toolkit/CacheableLatLng;

    if-eqz v1, :cond_0

    .line 252
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getParaderoActual()Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    move-result-object v1

    iget-object v1, v1, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->latlng:Lcl/birdie/toolkit/CacheableLatLng;

    invoke-static {v1}, Lcl/birdie/transantiagomaster/Pantalla;->setCenter(Lcl/birdie/toolkit/LatLng;)V

    .line 253
    :cond_0
    sget-object v1, Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;->SEGUIR_OFF:Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;

    invoke-static {v1}, Lcl/birdie/transantiagomaster/Pantalla;->setSeguirPosicion(Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;)V

    .line 255
    .end local v0    # "par":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    :cond_1
    return-void
.end method
