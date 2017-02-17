.class public final Lcl/birdie/transantiagomaster/speech/Speech$TiemposRunnable;
.super Ljava/lang/Object;
.source "Speech.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/speech/Speech;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TiemposRunnable"
.end annotation


# instance fields
.field p:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

.field final synthetic this$0:Lcl/birdie/transantiagomaster/speech/Speech;


# direct methods
.method public constructor <init>(Lcl/birdie/transantiagomaster/speech/Speech;Lcl/birdie/transantiagomaster/newobjetos/Paradero;)V
    .locals 0
    .param p2, "p"    # Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .prologue
    .line 223
    iput-object p1, p0, Lcl/birdie/transantiagomaster/speech/Speech$TiemposRunnable;->this$0:Lcl/birdie/transantiagomaster/speech/Speech;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p2, p0, Lcl/birdie/transantiagomaster/speech/Speech$TiemposRunnable;->p:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 225
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "servicios de paradero "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcl/birdie/transantiagomaster/speech/Speech$TiemposRunnable;->p:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<break/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "texto":Ljava/lang/String;
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v3

    .line 232
    :try_start_0
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->tiemposParadero:Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;

    if-nez v2, :cond_0

    .line 233
    iget-object v2, p0, Lcl/birdie/transantiagomaster/speech/Speech$TiemposRunnable;->this$0:Lcl/birdie/transantiagomaster/speech/Speech;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/speech/Speech;->TAG:Ljava/lang/String;

    const-string v4, "ERROR: tiemposParadero NULL"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    monitor-exit v3

    .line 250
    :goto_0
    return-void

    .line 236
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->tiemposParadero:Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->tiempos:[Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 231
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    iget-object v2, p0, Lcl/birdie/transantiagomaster/speech/Speech$TiemposRunnable;->this$0:Lcl/birdie/transantiagomaster/speech/Speech;

    invoke-virtual {v2, v1}, Lcl/birdie/transantiagomaster/speech/Speech;->say(Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/PantallaDatos;->tiemposParadero:Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->tiempos:[Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;

    aget-object v4, v4, v0

    .line 243
    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/PantallaDatos;->tiemposParadero:Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->tiempos:[Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->tiempo1:Ljava/lang/String;

    .line 244
    sget-object v6, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v6, v6, Lcl/birdie/transantiagomaster/PantallaDatos;->tiemposParadero:Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;

    iget-object v6, v6, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->tiempos:[Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->distancia1:Ljava/lang/String;

    .line 242
    invoke-virtual {v4, v5, v6}, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->tiempoFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 231
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
