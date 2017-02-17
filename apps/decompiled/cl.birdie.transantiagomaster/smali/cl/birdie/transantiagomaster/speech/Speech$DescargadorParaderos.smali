.class final Lcl/birdie/transantiagomaster/speech/Speech$DescargadorParaderos;
.super Landroid/os/AsyncTask;
.source "Speech.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/speech/Speech;
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
.field pedirTiempos:Z

.field final synthetic this$0:Lcl/birdie/transantiagomaster/speech/Speech;


# direct methods
.method public constructor <init>(Lcl/birdie/transantiagomaster/speech/Speech;Z)V
    .locals 1
    .param p2, "pedirtiempos"    # Z

    .prologue
    .line 275
    iput-object p1, p0, Lcl/birdie/transantiagomaster/speech/Speech$DescargadorParaderos;->this$0:Lcl/birdie/transantiagomaster/speech/Speech;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcl/birdie/transantiagomaster/speech/Speech$DescargadorParaderos;->pedirTiempos:Z

    .line 276
    iput-boolean p2, p0, Lcl/birdie/transantiagomaster/speech/Speech$DescargadorParaderos;->pedirTiempos:Z

    .line 277
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
    .locals 4

    .prologue
    .line 1
    check-cast p1, [B

    iget-object v0, p0, Lcl/birdie/transantiagomaster/speech/Speech$DescargadorParaderos;->this$0:Lcl/birdie/transantiagomaster/speech/Speech;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/speech/Speech;->TAG:Ljava/lang/String;

    new-instance v0, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;

    invoke-direct {v0}, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;-><init>()V

    invoke-virtual {v0, p1}, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;->procesar([B)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, v0, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;->paraderos:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;->paraderos:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcl/birdie/transantiagomaster/speech/Speech$DescargadorParaderos;->this$0:Lcl/birdie/transantiagomaster/speech/Speech;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "El paradero m\u00e1s cercano es "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->texto:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcl/birdie/transantiagomaster/speech/Speech;->say(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->getGeoPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    invoke-static {v1}, Lcl/birdie/transantiagomaster/Pantalla;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iput-object v0, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualPosicion:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x4

    invoke-static {v1}, Lcl/birdie/transantiagomaster/Pantalla;->setModoNavegacion(I)V

    const/4 v1, 0x1

    sput-boolean v1, Lcl/birdie/transantiagomaster/TileHandler;->refresh:Z

    iget-boolean v1, p0, Lcl/birdie/transantiagomaster/speech/Speech$DescargadorParaderos;->pedirTiempos:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcl/birdie/transantiagomaster/speech/Speech$DescargadorParaderos;->this$0:Lcl/birdie/transantiagomaster/speech/Speech;

    invoke-virtual {v1, v0}, Lcl/birdie/transantiagomaster/speech/Speech;->pedirTiempos(Lcl/birdie/transantiagomaster/newobjetos/Paradero;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
