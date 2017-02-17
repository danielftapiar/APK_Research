.class public final Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;
.super Landroid/os/AsyncTask;
.source "DescargadorTiempos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;
    }
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
.field callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

.field estado:Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;

.field paradero:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

.field r:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 26
    iput-object v0, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;->r:Ljava/lang/Runnable;

    .line 27
    iput-object v0, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;->paradero:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 28
    sget-object v0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;->INICIALIZADO:Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;->estado:Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;Lcl/birdie/transantiagomaster/newobjetos/Paradero;)V
    .locals 1
    .param p1, "callback"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;
    .param p2, "p"    # Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 44
    iput-object p1, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;->callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .line 45
    iput-object p2, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;->paradero:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 46
    sget-object v0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;->INICIALIZADO:Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;->estado:Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Lcl/birdie/transantiagomaster/newobjetos/Paradero;)V
    .locals 1
    .param p1, "r2"    # Ljava/lang/Runnable;
    .param p2, "p"    # Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 38
    iput-object p1, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;->r:Ljava/lang/Runnable;

    .line 39
    iput-object p2, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;->paradero:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 40
    sget-object v0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;->INICIALIZADO:Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;->estado:Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;

    .line 41
    return-void
.end method

.method private procesarDescarga([B)Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;
    .locals 4
    .param p1, "datos"    # [B

    .prologue
    const/4 v1, 0x0

    .line 78
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v2

    .line 83
    :try_start_0
    iget-object v3, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;->paradero:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    if-nez v3, :cond_0

    .line 84
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualPosicion:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iput-object v3, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;->paradero:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 86
    :cond_0
    iget-object v3, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;->paradero:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;->paradero:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->servicios:[Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    if-nez v3, :cond_2

    .line 87
    :cond_1
    monitor-exit v2

    move-object v0, v1

    .line 115
    :goto_0
    return-object v0

    .line 89
    :cond_2
    new-instance v0, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;

    iget-object v3, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;->paradero:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    invoke-direct {v0, v3}, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;-><init>(Lcl/birdie/transantiagomaster/newobjetos/Paradero;)V

    .line 95
    .local v0, "h":Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;
    iget-object v3, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;->paradero:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->servicios:[Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    .line 97
    if-eqz p1, :cond_3

    .line 98
    invoke-virtual {v0, p1}, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->procesar([B)I

    move-result v3

    if-lez v3, :cond_3

    .line 107
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 82
    .end local v0    # "h":Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .restart local v0    # "h":Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;
    :cond_3
    monitor-exit v2

    move-object v0, v1

    .line 115
    goto :goto_0
.end method


# virtual methods
.method protected final bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    sget-object v0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;->DESCARGANDO:Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;->estado:Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lcl/birdie/toolkit/DescargarArchivo;->descargar(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1
    check-cast p1, [B

    invoke-direct {p0, p1}, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;->procesarDescarga([B)Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;->callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;->callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-interface {v1, v0}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    sget-object v0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;->LISTO:Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;->estado:Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos$Estado;

    iget-object v0, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;->r:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;->r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;->callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;->callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    iget-object v1, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;->paradero:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method
