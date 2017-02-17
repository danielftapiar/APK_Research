.class final Lcl/birdie/transantiagomaster/MainActivity$23;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/MainActivity;

.field private final synthetic val$p:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

.field private final synthetic val$tiempo:J


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/MainActivity;JLcl/birdie/transantiagomaster/newobjetos/Paradero;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$23;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    iput-wide p2, p0, Lcl/birdie/transantiagomaster/MainActivity$23;->val$tiempo:J

    iput-object p4, p0, Lcl/birdie/transantiagomaster/MainActivity$23;->val$p:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 2360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2401
    const-string v0, "MainActivity"

    const-string v1, "descargarTiemposReferenciales: onError"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2364
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v2

    .line 2367
    :try_start_0
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-wide v3, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->timestampUltimoTiempoParadero:J

    iget-wide v5, p0, Lcl/birdie/transantiagomaster/MainActivity$23;->val$tiempo:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_0

    .line 2368
    monitor-exit v2

    .line 2397
    :goto_0
    return-void

    .line 2371
    :cond_0
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget v1, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualTiemposOrigen:I

    if-eqz v1, :cond_1

    .line 2372
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2366
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1
    monitor-exit v2

    .line 2376
    if-eqz p1, :cond_3

    instance-of v1, p1, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;

    if-eqz v1, :cond_3

    move-object v0, p1

    .line 2377
    check-cast v0, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;

    .line 2379
    .local v0, "handler":Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualPosicion:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    if-eqz v1, :cond_2

    .line 2380
    iget-object v1, v0, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->paradero:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualPosicion:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2381
    const-string v1, "MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "descargarTiemposReferenciales: descartando por codigo diferente: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->paradero:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualPosicion:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2385
    :cond_2
    iget-object v1, v0, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->origen:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->origen:Ljava/lang/String;

    const-string v2, "G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2386
    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity$23;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    invoke-static {v0}, Lcl/birdie/transantiagomaster/MainActivity;->llenarTiemposParadero(Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;)V

    .line 2387
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    const/4 v2, 0x1

    iput v2, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualTiemposOrigen:I

    .line 2390
    .end local v0    # "handler":Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;
    :cond_3
    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity$23;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    new-instance v2, Lcl/birdie/transantiagomaster/MainActivity$23$1;

    iget-object v3, p0, Lcl/birdie/transantiagomaster/MainActivity$23;->val$p:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    invoke-direct {v2, p0, v3}, Lcl/birdie/transantiagomaster/MainActivity$23$1;-><init>(Lcl/birdie/transantiagomaster/MainActivity$23;Lcl/birdie/transantiagomaster/newobjetos/Paradero;)V

    invoke-virtual {v1, v2}, Lcl/birdie/transantiagomaster/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
