.class public final Lcl/birdie/transantiagomaster/PantallaDatos;
.super Ljava/lang/Object;
.source "PantallaDatos.java"


# instance fields
.field public bHandler:Lcl/birdie/transantiagomaster/handlers/BusquedaHandler;

.field public bipActualPosicion:Lcl/birdie/transantiagomaster/newobjetos/Bip;

.field public bipPantalla:[Lcl/birdie/transantiagomaster/newobjetos/Bip;

.field public bmpBanner:Landroid/graphics/Bitmap;

.field public bmpSnapshot:Landroid/graphics/Bitmap;

.field public buscando:I

.field public busquedaFrom:Lcl/birdie/toolkit/LatLng;

.field public busquedaTo:Lcl/birdie/toolkit/LatLng;

.field public favoritoSeleccionado:Lcl/birdie/transantiagomaster/newobjetos/IFavorito;

.field public favoritos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcl/birdie/transantiagomaster/newobjetos/IFavorito;",
            ">;"
        }
    .end annotation
.end field

.field public itinerarioPlanificacion:I

.field public volatile lastParaderosResponseTime:J

.field public volatile lat1:D

.field public volatile lat2:D

.field public volatile latpar1:D

.field public volatile latpar2:D

.field public legPlanificacion:I

.field public volatile lng1:D

.field public volatile lng2:D

.field public volatile lngpar1:D

.field public volatile lngpar2:D

.field public metroActualPosicion:Lcl/birdie/transantiagomaster/newobjetos/Metro;

.field public metroPantalla:[Lcl/birdie/transantiagomaster/newobjetos/Metro;

.field public modoNavegacion:I

.field public movieBanner:Lcl/birdie/toolkit/GifDecoder;

.field public movieFrame:I

.field public oldTxtFrom:Ljava/lang/String;

.field public oldTxtTo:Ljava/lang/String;

.field public paraderoActualPosicion:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

.field public paraderoActualTiemposOrigen:I

.field public paraderosPantalla:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

.field public planificacion:Lcl/birdie/transantiagomaster/newobjetos/Plan;

.field public volatile requestTime:J

.field public volatile requestlat1:D

.field public volatile requestlat2:D

.field public volatile requestlng1:D

.field public volatile requestlng2:D

.field public servicios:[Lcl/birdie/transantiagomaster/newobjetos/Servicio;

.field public socialFeed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcl/birdie/transantiagomaster/newobjetos/SocialPost;",
            ">;"
        }
    .end annotation
.end field

.field public solicitudTiempos:I

.field public svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

.field public tiemposParadero:Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;

.field public timestampUltimoTiempoParadero:J

.field public tiposReclamo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    invoke-direct {v0}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    .line 35
    iput v1, p0, Lcl/birdie/transantiagomaster/PantallaDatos;->modoNavegacion:I

    .line 105
    new-instance v0, Lcl/birdie/transantiagomaster/handlers/BusquedaHandler;

    invoke-direct {v0}, Lcl/birdie/transantiagomaster/handlers/BusquedaHandler;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/PantallaDatos;->bHandler:Lcl/birdie/transantiagomaster/handlers/BusquedaHandler;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/PantallaDatos;->favoritos:Ljava/util/List;

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/PantallaDatos;->favoritoSeleccionado:Lcl/birdie/transantiagomaster/newobjetos/IFavorito;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/PantallaDatos;->tiposReclamo:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/PantallaDatos;->socialFeed:Ljava/util/List;

    .line 128
    iput v1, p0, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualTiemposOrigen:I

    .line 129
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcl/birdie/transantiagomaster/PantallaDatos;->timestampUltimoTiempoParadero:J

    .line 22
    return-void
.end method


# virtual methods
.method public final isInBbox(DD)Z
    .locals 2
    .param p1, "lat"    # D
    .param p3, "lng"    # D

    .prologue
    .line 163
    iget-wide v0, p0, Lcl/birdie/transantiagomaster/PantallaDatos;->lat1:D

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    .line 164
    iget-wide v0, p0, Lcl/birdie/transantiagomaster/PantallaDatos;->lng1:D

    cmpl-double v0, p3, v0

    if-ltz v0, :cond_0

    .line 165
    iget-wide v0, p0, Lcl/birdie/transantiagomaster/PantallaDatos;->lat2:D

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 166
    iget-wide v0, p0, Lcl/birdie/transantiagomaster/PantallaDatos;->lng2:D

    cmpg-double v0, p3, v0

    if-gtz v0, :cond_0

    .line 167
    const/4 v0, 0x1

    .line 169
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInParaderosBbox(DD)Z
    .locals 2
    .param p1, "lat"    # D
    .param p3, "lng"    # D

    .prologue
    .line 172
    iget-wide v0, p0, Lcl/birdie/transantiagomaster/PantallaDatos;->latpar1:D

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    .line 173
    iget-wide v0, p0, Lcl/birdie/transantiagomaster/PantallaDatos;->lngpar1:D

    cmpl-double v0, p3, v0

    if-ltz v0, :cond_0

    .line 174
    iget-wide v0, p0, Lcl/birdie/transantiagomaster/PantallaDatos;->latpar2:D

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 175
    iget-wide v0, p0, Lcl/birdie/transantiagomaster/PantallaDatos;->lngpar2:D

    cmpg-double v0, p3, v0

    if-gtz v0, :cond_0

    .line 176
    const/4 v0, 0x1

    .line 178
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInRequestBbox(DD)Z
    .locals 2
    .param p1, "lat"    # D
    .param p3, "lng"    # D

    .prologue
    .line 239
    iget-wide v0, p0, Lcl/birdie/transantiagomaster/PantallaDatos;->requestlat1:D

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    .line 240
    iget-wide v0, p0, Lcl/birdie/transantiagomaster/PantallaDatos;->requestlng1:D

    cmpl-double v0, p3, v0

    if-ltz v0, :cond_0

    .line 241
    iget-wide v0, p0, Lcl/birdie/transantiagomaster/PantallaDatos;->requestlat2:D

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 242
    iget-wide v0, p0, Lcl/birdie/transantiagomaster/PantallaDatos;->requestlng2:D

    cmpg-double v0, p3, v0

    if-gtz v0, :cond_0

    .line 243
    const/4 v0, 0x1

    .line 245
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setBbox(DDDD)V
    .locals 2
    .param p1, "lat1"    # D
    .param p3, "lng1"    # D
    .param p5, "lat2"    # D
    .param p7, "lng2"    # D

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setBbox: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7, p8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    iput-wide p1, p0, Lcl/birdie/transantiagomaster/PantallaDatos;->lat1:D

    .line 143
    iput-wide p3, p0, Lcl/birdie/transantiagomaster/PantallaDatos;->lng1:D

    .line 144
    iput-wide p5, p0, Lcl/birdie/transantiagomaster/PantallaDatos;->lat2:D

    .line 145
    iput-wide p7, p0, Lcl/birdie/transantiagomaster/PantallaDatos;->lng2:D

    .line 146
    return-void
.end method

.method public final setParaderosBbox(DDDD)V
    .locals 2
    .param p1, "lat1"    # D
    .param p3, "lng1"    # D
    .param p5, "lat2"    # D
    .param p7, "lng2"    # D

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setParaderosBbox: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7, p8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    iput-wide p1, p0, Lcl/birdie/transantiagomaster/PantallaDatos;->latpar1:D

    .line 151
    iput-wide p3, p0, Lcl/birdie/transantiagomaster/PantallaDatos;->lngpar1:D

    .line 152
    iput-wide p5, p0, Lcl/birdie/transantiagomaster/PantallaDatos;->latpar2:D

    .line 153
    iput-wide p7, p0, Lcl/birdie/transantiagomaster/PantallaDatos;->lngpar2:D

    .line 154
    return-void
.end method

.method public final setRequestBbox(DDDD)V
    .locals 2
    .param p1, "lat1"    # D
    .param p3, "lng1"    # D
    .param p5, "lat2"    # D
    .param p7, "lng2"    # D

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setRequestBbox: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7, p8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    iput-wide p1, p0, Lcl/birdie/transantiagomaster/PantallaDatos;->requestlat1:D

    .line 209
    iput-wide p3, p0, Lcl/birdie/transantiagomaster/PantallaDatos;->requestlng1:D

    .line 210
    iput-wide p5, p0, Lcl/birdie/transantiagomaster/PantallaDatos;->requestlat2:D

    .line 211
    iput-wide p7, p0, Lcl/birdie/transantiagomaster/PantallaDatos;->requestlng2:D

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcl/birdie/transantiagomaster/PantallaDatos;->requestTime:J

    .line 213
    return-void
.end method
