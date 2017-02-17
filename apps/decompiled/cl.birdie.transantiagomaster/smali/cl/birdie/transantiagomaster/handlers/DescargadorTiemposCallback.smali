.class public final Lcl/birdie/transantiagomaster/handlers/DescargadorTiemposCallback;
.super Landroid/os/AsyncTask;
.source "DescargadorTiemposCallback.java"


# annotations
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

.field p:Lcl/birdie/transantiagomaster/newobjetos/Paradero;


# direct methods
.method public constructor <init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;Lcl/birdie/transantiagomaster/newobjetos/Paradero;)V
    .locals 0
    .param p1, "callback"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;
    .param p2, "p"    # Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 14
    iput-object p1, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiemposCallback;->callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .line 15
    iput-object p2, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiemposCallback;->p:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 16
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
    .locals 2

    .prologue
    .line 1
    check-cast p1, [B

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiemposCallback;->callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;

    iget-object v1, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiemposCallback;->p:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    invoke-direct {v0, v1}, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;-><init>(Lcl/birdie/transantiagomaster/newobjetos/Paradero;)V

    invoke-virtual {v0, p1}, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->procesar([B)I

    iget-object v1, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorTiemposCallback;->callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-interface {v1, v0}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method
