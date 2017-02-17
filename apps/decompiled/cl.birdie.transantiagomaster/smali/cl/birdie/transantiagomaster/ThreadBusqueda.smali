.class public final Lcl/birdie/transantiagomaster/ThreadBusqueda;
.super Ljava/lang/Thread;
.source "ThreadBusqueda.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/transantiagomaster/ThreadBusqueda$DescargadorParaderos;
    }
.end annotation


# static fields
.field public static volatile twitterCounter:I


# instance fields
.field cnt:I

.field done:Z

.field private listener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

.field volatile pause:Z

.field volatile refrescar:I

.field volatile reset:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x122

    sput v0, Lcl/birdie/transantiagomaster/ThreadBusqueda;->twitterCounter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 14
    iput-boolean v0, p0, Lcl/birdie/transantiagomaster/ThreadBusqueda;->done:Z

    .line 15
    iput-boolean v0, p0, Lcl/birdie/transantiagomaster/ThreadBusqueda;->reset:Z

    .line 16
    iput-boolean v0, p0, Lcl/birdie/transantiagomaster/ThreadBusqueda;->pause:Z

    .line 17
    iput v0, p0, Lcl/birdie/transantiagomaster/ThreadBusqueda;->refrescar:I

    .line 18
    iput v0, p0, Lcl/birdie/transantiagomaster/ThreadBusqueda;->cnt:I

    .line 13
    return-void
.end method

.method static synthetic access$0(Lcl/birdie/transantiagomaster/ThreadBusqueda;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcl/birdie/transantiagomaster/ThreadBusqueda;->listener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    return-object v0
.end method


# virtual methods
.method public final refrescar(I)V
    .locals 1
    .param p1, "r"    # I

    .prologue
    .line 26
    iget v0, p0, Lcl/birdie/transantiagomaster/ThreadBusqueda;->refrescar:I

    if-ge v0, p1, :cond_0

    .line 27
    iput p1, p0, Lcl/birdie/transantiagomaster/ThreadBusqueda;->refrescar:I

    .line 28
    :cond_0
    return-void
.end method

.method public final resetTimer()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcl/birdie/transantiagomaster/ThreadBusqueda;->reset:Z

    .line 23
    return-void
.end method

.method public final run()V
    .locals 32

    .prologue
    .line 42
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcl/birdie/transantiagomaster/ThreadBusqueda;->done:Z

    if-eqz v2, :cond_1

    .line 197
    :goto_1
    return-void

    .line 44
    :cond_1
    const-wide/16 v11, 0x1f4

    :try_start_0
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcl/birdie/transantiagomaster/ThreadBusqueda;->pause:Z

    if-nez v2, :cond_0

    .line 52
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcl/birdie/transantiagomaster/ThreadBusqueda;->reset:Z

    if-eqz v2, :cond_2

    .line 54
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcl/birdie/transantiagomaster/ThreadBusqueda;->reset:Z

    .line 55
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcl/birdie/transantiagomaster/ThreadBusqueda;->cnt:I

    .line 57
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcl/birdie/transantiagomaster/ThreadBusqueda;->cnt:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcl/birdie/transantiagomaster/ThreadBusqueda;->cnt:I

    .line 59
    move-object/from16 v0, p0

    iget v2, v0, Lcl/birdie/transantiagomaster/ThreadBusqueda;->cnt:I

    const/4 v11, 0x2

    if-eq v2, v11, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcl/birdie/transantiagomaster/ThreadBusqueda;->refrescar:I

    if-eqz v2, :cond_c

    .line 64
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcl/birdie/transantiagomaster/ThreadBusqueda;->refrescar:I

    const/4 v11, 0x1

    if-ne v2, v11, :cond_4

    .line 67
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcl/birdie/transantiagomaster/ThreadBusqueda;->refrescar:I

    .line 70
    :cond_4
    sget-object v11, Lcl/birdie/transantiagomaster/Pantalla;->gMapCenter:Lcl/birdie/toolkit/LatLng;

    monitor-enter v11

    .line 71
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v12, "lat/lng: "

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Lcl/birdie/transantiagomaster/Pantalla;->gMapCenter:Lcl/birdie/toolkit/LatLng;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    sget-object v2, Lcl/birdie/transantiagomaster/Pantalla;->gMapCenter:Lcl/birdie/toolkit/LatLng;

    iget-wide v0, v2, Lcl/birdie/toolkit/LatLng;->lat:D

    move-wide/from16 v24, v0

    .line 73
    .local v24, "latc":D
    sget-object v2, Lcl/birdie/transantiagomaster/Pantalla;->gMapCenter:Lcl/birdie/toolkit/LatLng;

    iget-wide v0, v2, Lcl/birdie/toolkit/LatLng;->lng:D

    move-wide/from16 v26, v0

    .line 74
    .local v26, "lngc":D
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v12, "span: "

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v12, Lcl/birdie/transantiagomaster/Pantalla;->latitudeSpan:I

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, " --- "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 75
    sget v12, Lcl/birdie/transantiagomaster/Pantalla;->longitudeSpan:I

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    sget v2, Lcl/birdie/transantiagomaster/Pantalla;->latitudeSpan:I

    int-to-double v11, v2

    const-wide v13, 0x412e848000000000L    # 1000000.0

    div-double/2addr v11, v13

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v11, v13

    sub-double v3, v24, v11

    .line 80
    .local v3, "lat1":D
    sget v2, Lcl/birdie/transantiagomaster/Pantalla;->latitudeSpan:I

    int-to-double v11, v2

    const-wide v13, 0x412e848000000000L    # 1000000.0

    div-double/2addr v11, v13

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v11, v13

    add-double v7, v24, v11

    .line 81
    .local v7, "lat2":D
    sget v2, Lcl/birdie/transantiagomaster/Pantalla;->longitudeSpan:I

    int-to-double v11, v2

    const-wide v13, 0x412e848000000000L    # 1000000.0

    div-double/2addr v11, v13

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v11, v13

    sub-double v5, v26, v11

    .line 82
    .local v5, "lng1":D
    sget v2, Lcl/birdie/transantiagomaster/Pantalla;->longitudeSpan:I

    int-to-double v11, v2

    const-wide v13, 0x412e848000000000L    # 1000000.0

    div-double/2addr v11, v13

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v11, v13

    add-double v9, v26, v11

    .line 84
    .local v9, "lng2":D
    const/16 v29, 0x0

    .line 86
    .local v29, "ro":Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$ResultObjetos;
    const/16 v28, 0x0

    .line 88
    .local v28, "retry":Z
    const/16 v30, 0x30

    .line 90
    .local v30, "servicios":C
    sget v2, Lcl/birdie/transantiagomaster/Pantalla;->zoomLevel:I

    const/16 v11, 0x11

    if-lt v2, v11, :cond_f

    .line 92
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->db:Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;

    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 94
    const/16 v23, 0x1

    .line 95
    .local v23, "justlayers":Z
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    .line 96
    invoke-virtual {v2, v3, v4, v5, v6}, Lcl/birdie/transantiagomaster/PantallaDatos;->isInParaderosBbox(DD)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-virtual {v2, v7, v8, v9, v10}, Lcl/birdie/transantiagomaster/PantallaDatos;->isInParaderosBbox(DD)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_5

    .line 97
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->db:Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;

    .line 98
    invoke-virtual/range {v2 .. v10}, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->getObjetosBbox(DDDD)Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$ResultObjetos;

    move-result-object v29

    .line 114
    :cond_5
    :goto_3
    if-eqz v29, :cond_6

    .line 115
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    move-object/from16 v0, v29

    iget-object v11, v0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$ResultObjetos;->paraderos:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iput-object v11, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderosPantalla:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 117
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    move-object/from16 v0, v29

    iget-object v11, v0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$ResultObjetos;->bips:[Lcl/birdie/transantiagomaster/newobjetos/Bip;

    iput-object v11, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->bipPantalla:[Lcl/birdie/transantiagomaster/newobjetos/Bip;

    .line 118
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    move-object/from16 v0, v29

    iget-object v11, v0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$ResultObjetos;->metros:[Lcl/birdie/transantiagomaster/newobjetos/Metro;

    iput-object v11, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->metroPantalla:[Lcl/birdie/transantiagomaster/newobjetos/Metro;

    .line 119
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    invoke-virtual/range {v2 .. v10}, Lcl/birdie/transantiagomaster/PantallaDatos;->setParaderosBbox(DDDD)V

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/birdie/transantiagomaster/ThreadBusqueda;->listener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v2, :cond_6

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/birdie/transantiagomaster/ThreadBusqueda;->listener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    const/4 v11, 0x0

    invoke-interface {v2, v11}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onMapUpdate(I)V

    .line 126
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcl/birdie/transantiagomaster/ThreadBusqueda;->refrescar:I

    const/4 v11, 0x2

    if-eq v2, v11, :cond_7

    .line 127
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    .line 128
    invoke-virtual {v2, v3, v4, v5, v6}, Lcl/birdie/transantiagomaster/PantallaDatos;->isInBbox(DD)Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-virtual {v2, v7, v8, v9, v10}, Lcl/birdie/transantiagomaster/PantallaDatos;->isInBbox(DD)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    :goto_4
    if-nez v2, :cond_c

    .line 134
    :cond_7
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-wide v11, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->requestTime:J

    const-wide/16 v13, 0x0

    cmp-long v2, v11, v13

    if-eqz v2, :cond_8

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 136
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-wide v13, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->requestTime:J

    .line 135
    sub-long/2addr v11, v13

    .line 136
    const-wide/16 v13, 0x1388

    cmp-long v2, v11, v13

    if-lez v2, :cond_9

    .line 138
    :cond_8
    const-string v2, "ThreadBusqueda"

    const-string v11, "consulta expirada"

    invoke-static {v2, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/16 v28, 0x1

    .line 142
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcl/birdie/transantiagomaster/ThreadBusqueda;->refrescar:I

    const/4 v11, 0x2

    if-ne v2, v11, :cond_a

    .line 143
    const-string v2, "ThreadBusqueda"

    const-string v11, "refresh forzado"

    invoke-static {v2, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcl/birdie/transantiagomaster/ThreadBusqueda;->refrescar:I

    .line 145
    const/16 v28, 0x1

    .line 148
    :cond_a
    if-nez v28, :cond_b

    .line 149
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    .line 150
    invoke-virtual {v2, v3, v4, v5, v6}, Lcl/birdie/transantiagomaster/PantallaDatos;->isInRequestBbox(DD)Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-virtual {v2, v7, v8, v9, v10}, Lcl/birdie/transantiagomaster/PantallaDatos;->isInRequestBbox(DD)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    :goto_5
    if-nez v2, :cond_c

    .line 151
    :cond_b
    sget v2, Lcl/birdie/transantiagomaster/Pantalla;->latitudeSpan:I

    int-to-double v11, v2

    const-wide v13, 0x412e848000000000L    # 1000000.0

    div-double/2addr v11, v13

    sub-double v3, v24, v11

    .line 154
    sget v2, Lcl/birdie/transantiagomaster/Pantalla;->latitudeSpan:I

    int-to-double v11, v2

    const-wide v13, 0x412e848000000000L    # 1000000.0

    div-double/2addr v11, v13

    add-double v7, v24, v11

    .line 155
    sget v2, Lcl/birdie/transantiagomaster/Pantalla;->longitudeSpan:I

    int-to-double v11, v2

    const-wide v13, 0x412e848000000000L    # 1000000.0

    div-double/2addr v11, v13

    sub-double v5, v26, v11

    .line 156
    sget v2, Lcl/birdie/transantiagomaster/Pantalla;->longitudeSpan:I

    int-to-double v11, v2

    const-wide v13, 0x412e848000000000L    # 1000000.0

    div-double/2addr v11, v13

    add-double v9, v26, v11

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v11, "http://api.transantiagomaster.cl/paraderoscercanosjsonnew.php?lat="

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    move-wide/from16 v0, v24

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 161
    const-string v11, "&lng="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 162
    move-wide/from16 v0, v26

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 163
    const-string v11, "&enc=1&sv="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 164
    move/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 166
    const-string v11, "&justlayers="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 167
    if-eqz v23, :cond_12

    const-string v2, "1"

    :goto_6
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 168
    const-string v11, "&full=1&layers=1&bbox="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 169
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 172
    const-string v11, ","

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 173
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 174
    const-string v11, ","

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, ","

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 158
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 176
    .local v31, "url":Ljava/lang/String;
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    invoke-virtual/range {v2 .. v10}, Lcl/birdie/transantiagomaster/PantallaDatos;->setRequestBbox(DDDD)V

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v11, "descargarParaderos: bbox download: "

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v11, Lcl/birdie/transantiagomaster/ThreadBusqueda$DescargadorParaderos;

    .line 183
    const/16 v2, 0x31

    move/from16 v0, v30

    if-ne v0, v2, :cond_13

    const/16 v21, 0x1

    :goto_7
    move-object/from16 v12, p0

    move-wide v13, v3

    move-wide v15, v5

    move-wide/from16 v17, v7

    move-wide/from16 v19, v9

    .line 180
    invoke-direct/range {v11 .. v21}, Lcl/birdie/transantiagomaster/ThreadBusqueda$DescargadorParaderos;-><init>(Lcl/birdie/transantiagomaster/ThreadBusqueda;DDDDZ)V

    .line 185
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v31, v2, v12

    invoke-static {v11, v2}, Lcl/birdie/toolkit/Util;->executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 190
    .end local v3    # "lat1":D
    .end local v5    # "lng1":D
    .end local v7    # "lat2":D
    .end local v9    # "lng2":D
    .end local v23    # "justlayers":Z
    .end local v24    # "latc":D
    .end local v26    # "lngc":D
    .end local v28    # "retry":Z
    .end local v29    # "ro":Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$ResultObjetos;
    .end local v30    # "servicios":C
    .end local v31    # "url":Ljava/lang/String;
    :cond_c
    sget v2, Lcl/birdie/transantiagomaster/ThreadBusqueda;->twitterCounter:I

    add-int/lit8 v2, v2, 0x1

    .line 191
    sput v2, Lcl/birdie/transantiagomaster/ThreadBusqueda;->twitterCounter:I

    const/16 v11, 0x12c

    if-ne v2, v11, :cond_0

    .line 192
    const/4 v2, 0x0

    sput v2, Lcl/birdie/transantiagomaster/ThreadBusqueda;->twitterCounter:I

    .line 194
    invoke-static {}, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->actualizarTimeline()V

    goto/16 :goto_0

    .line 45
    :catch_0
    move-exception v22

    .line 46
    .local v22, "e":Ljava/lang/InterruptedException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "excepci\u00f3n en ThreadBusqueda.run: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual/range {v22 .. v22}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 46
    invoke-virtual {v2, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 48
    invoke-virtual/range {v22 .. v22}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 74
    .end local v22    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v11

    throw v2

    .line 96
    .restart local v3    # "lat1":D
    .restart local v5    # "lng1":D
    .restart local v7    # "lat2":D
    .restart local v9    # "lng2":D
    .restart local v23    # "justlayers":Z
    .restart local v24    # "latc":D
    .restart local v26    # "lngc":D
    .restart local v28    # "retry":Z
    .restart local v29    # "ro":Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$ResultObjetos;
    .restart local v30    # "servicios":C
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 107
    .end local v23    # "justlayers":Z
    :cond_e
    const/16 v30, 0x31

    .line 108
    const/16 v23, 0x0

    .line 110
    .restart local v23    # "justlayers":Z
    goto/16 :goto_3

    .line 111
    .end local v23    # "justlayers":Z
    :cond_f
    const/16 v23, 0x1

    .restart local v23    # "justlayers":Z
    goto/16 :goto_3

    .line 128
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 150
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 167
    :cond_12
    const-string v2, "0"

    goto/16 :goto_6

    .line 183
    .restart local v31    # "url":Ljava/lang/String;
    :cond_13
    const/16 v21, 0x0

    goto :goto_7
.end method

.method public final setListener(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V
    .locals 0
    .param p1, "listener"    # Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    .prologue
    .line 268
    iput-object p1, p0, Lcl/birdie/transantiagomaster/ThreadBusqueda;->listener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    .line 269
    return-void
.end method
