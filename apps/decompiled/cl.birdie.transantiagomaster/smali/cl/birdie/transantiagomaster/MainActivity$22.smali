.class final Lcl/birdie/transantiagomaster/MainActivity$22;
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
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$22;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    iput-wide p2, p0, Lcl/birdie/transantiagomaster/MainActivity$22;->val$tiempo:J

    iput-object p4, p0, Lcl/birdie/transantiagomaster/MainActivity$22;->val$p:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 2274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2326
    const-string v0, "MainActivity"

    const-string v1, "descargarTiempos: onError"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualPosicion:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    if-eqz v0, :cond_0

    .line 2328
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$22;->val$p:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualPosicion:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2329
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    const/4 v1, 0x3

    iput v1, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualTiemposOrigen:I

    .line 2330
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$22;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    new-instance v1, Lcl/birdie/transantiagomaster/MainActivity$22$2;

    iget-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity$22;->val$p:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    invoke-direct {v1, p0, v2}, Lcl/birdie/transantiagomaster/MainActivity$22$2;-><init>(Lcl/birdie/transantiagomaster/MainActivity$22;Lcl/birdie/transantiagomaster/newobjetos/Paradero;)V

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2340
    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v1, 0x0

    .line 2278
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-wide v3, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->timestampUltimoTiempoParadero:J

    iget-wide v5, p0, Lcl/birdie/transantiagomaster/MainActivity$22;->val$tiempo:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    .line 2322
    :goto_0
    return-void

    .line 2285
    :cond_0
    if-eqz p1, :cond_3

    instance-of v0, p1, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;

    if-eqz v0, :cond_3

    move-object v9, p1

    .line 2286
    check-cast v9, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;

    .line 2288
    .local v9, "handler":Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualPosicion:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    if-eqz v0, :cond_1

    .line 2289
    iget-object v0, v9, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->paradero:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualPosicion:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2290
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "descargarTiempos: descartando por codigo diferente: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v9, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->paradero:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualPosicion:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2294
    :cond_1
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$22;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    invoke-static {v9}, Lcl/birdie/transantiagomaster/MainActivity;->llenarTiemposParadero(Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;)V

    .line 2306
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->threadBusqueda:Lcl/birdie/transantiagomaster/ThreadBusqueda;

    if-eqz v0, :cond_2

    .line 2307
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    move-wide v3, v1

    move-wide v5, v1

    move-wide v7, v1

    invoke-virtual/range {v0 .. v8}, Lcl/birdie/transantiagomaster/PantallaDatos;->setBbox(DDDD)V

    .line 2308
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->threadBusqueda:Lcl/birdie/transantiagomaster/ThreadBusqueda;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/ThreadBusqueda;->resetTimer()V

    .line 2311
    :cond_2
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    const/4 v1, 0x2

    iput v1, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualTiemposOrigen:I

    .line 2313
    .end local v9    # "handler":Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;
    :cond_3
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$22;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    new-instance v1, Lcl/birdie/transantiagomaster/MainActivity$22$1;

    iget-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity$22;->val$p:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    invoke-direct {v1, p0, v2}, Lcl/birdie/transantiagomaster/MainActivity$22$1;-><init>(Lcl/birdie/transantiagomaster/MainActivity$22;Lcl/birdie/transantiagomaster/newobjetos/Paradero;)V

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
