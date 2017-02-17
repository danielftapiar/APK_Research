.class final Lcl/birdie/transantiagomaster/ThreadBusqueda$DescargadorParaderos;
.super Landroid/os/AsyncTask;
.source "ThreadBusqueda.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/ThreadBusqueda;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescargadorParaderos"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "[B>;"
    }
.end annotation


# instance fields
.field lat1:D

.field lat2:D

.field lng1:D

.field lng2:D

.field online:Z

.field requestTime:J

.field resetBbox:Z

.field final synthetic this$0:Lcl/birdie/transantiagomaster/ThreadBusqueda;


# direct methods
.method public constructor <init>(Lcl/birdie/transantiagomaster/ThreadBusqueda;DDDDZ)V
    .locals 2
    .param p2, "lat1"    # D
    .param p4, "lng1"    # D
    .param p6, "lat2"    # D
    .param p8, "lng2"    # D
    .param p10, "online"    # Z

    .prologue
    .line 207
    iput-object p1, p0, Lcl/birdie/transantiagomaster/ThreadBusqueda$DescargadorParaderos;->this$0:Lcl/birdie/transantiagomaster/ThreadBusqueda;

    .line 206
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 208
    iput-wide p2, p0, Lcl/birdie/transantiagomaster/ThreadBusqueda$DescargadorParaderos;->lat1:D

    .line 209
    iput-wide p6, p0, Lcl/birdie/transantiagomaster/ThreadBusqueda$DescargadorParaderos;->lat2:D

    .line 210
    iput-wide p4, p0, Lcl/birdie/transantiagomaster/ThreadBusqueda$DescargadorParaderos;->lng1:D

    .line 211
    iput-wide p8, p0, Lcl/birdie/transantiagomaster/ThreadBusqueda$DescargadorParaderos;->lng2:D

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcl/birdie/transantiagomaster/ThreadBusqueda$DescargadorParaderos;->requestTime:J

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcl/birdie/transantiagomaster/ThreadBusqueda$DescargadorParaderos;->resetBbox:Z

    .line 214
    iput-boolean p10, p0, Lcl/birdie/transantiagomaster/ThreadBusqueda$DescargadorParaderos;->online:Z

    .line 215
    return-void
.end method


# virtual methods
.method protected final bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lcl/birdie/toolkit/DescargarArchivo;->descargar(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 1
    check-cast p1, [B

    sget-object v9, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v9

    :try_start_0
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-virtual/range {v0 .. v8}, Lcl/birdie/transantiagomaster/PantallaDatos;->setRequestBbox(DDDD)V

    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-wide v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->lastParaderosResponseTime:J

    iget-wide v2, p0, Lcl/birdie/transantiagomaster/ThreadBusqueda$DescargadorParaderos;->requestTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    monitor-exit v9

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-wide v1, p0, Lcl/birdie/transantiagomaster/ThreadBusqueda$DescargadorParaderos;->requestTime:J

    iput-wide v1, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->lastParaderosResponseTime:J

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;

    invoke-direct {v0}, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;-><init>()V

    invoke-virtual {v0, p1}, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;->procesar([B)I

    move-result v1

    if-ltz v1, :cond_0

    sget-object v9, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v9

    :try_start_1
    iget-boolean v1, p0, Lcl/birdie/transantiagomaster/ThreadBusqueda$DescargadorParaderos;->online:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v2, v0, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;->paraderos:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iput-object v2, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderosPantalla:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v2, v0, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;->bips:[Lcl/birdie/transantiagomaster/newobjetos/Bip;

    iput-object v2, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->bipPantalla:[Lcl/birdie/transantiagomaster/newobjetos/Bip;

    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;->metros:[Lcl/birdie/transantiagomaster/newobjetos/Metro;

    iput-object v0, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->metroPantalla:[Lcl/birdie/transantiagomaster/newobjetos/Metro;

    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-wide v1, p0, Lcl/birdie/transantiagomaster/ThreadBusqueda$DescargadorParaderos;->lat1:D

    iget-wide v3, p0, Lcl/birdie/transantiagomaster/ThreadBusqueda$DescargadorParaderos;->lng1:D

    iget-wide v5, p0, Lcl/birdie/transantiagomaster/ThreadBusqueda$DescargadorParaderos;->lat2:D

    iget-wide v7, p0, Lcl/birdie/transantiagomaster/ThreadBusqueda$DescargadorParaderos;->lng2:D

    invoke-virtual/range {v0 .. v8}, Lcl/birdie/transantiagomaster/PantallaDatos;->setParaderosBbox(DDDD)V

    :goto_1
    iget-object v0, p0, Lcl/birdie/transantiagomaster/ThreadBusqueda$DescargadorParaderos;->this$0:Lcl/birdie/transantiagomaster/ThreadBusqueda;

    # getter for: Lcl/birdie/transantiagomaster/ThreadBusqueda;->listener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/ThreadBusqueda;->access$0(Lcl/birdie/transantiagomaster/ThreadBusqueda;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcl/birdie/transantiagomaster/ThreadBusqueda$DescargadorParaderos;->this$0:Lcl/birdie/transantiagomaster/ThreadBusqueda;

    # getter for: Lcl/birdie/transantiagomaster/ThreadBusqueda;->listener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/ThreadBusqueda;->access$0(Lcl/birdie/transantiagomaster/ThreadBusqueda;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onMapUpdate(I)V

    :cond_2
    iget-boolean v0, p0, Lcl/birdie/transantiagomaster/ThreadBusqueda$DescargadorParaderos;->resetBbox:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-virtual/range {v0 .. v8}, Lcl/birdie/transantiagomaster/PantallaDatos;->setBbox(DDDD)V

    :goto_2
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sput-boolean v10, Lcl/birdie/transantiagomaster/TileHandler;->refresh:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    :cond_3
    :try_start_2
    const-string v0, "ThreadBusqueda"

    const-string v1, "DESCARTANDO paraderos desde internet"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v9

    throw v0

    :cond_4
    :try_start_3
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-wide v1, p0, Lcl/birdie/transantiagomaster/ThreadBusqueda$DescargadorParaderos;->lat1:D

    iget-wide v3, p0, Lcl/birdie/transantiagomaster/ThreadBusqueda$DescargadorParaderos;->lng1:D

    iget-wide v5, p0, Lcl/birdie/transantiagomaster/ThreadBusqueda$DescargadorParaderos;->lat2:D

    iget-wide v7, p0, Lcl/birdie/transantiagomaster/ThreadBusqueda$DescargadorParaderos;->lng2:D

    invoke-virtual/range {v0 .. v8}, Lcl/birdie/transantiagomaster/PantallaDatos;->setBbox(DDDD)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2
.end method
