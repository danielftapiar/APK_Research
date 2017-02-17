.class public final Lcl/birdie/toolkit/DescargarArchivo$DescargadorCallback;
.super Landroid/os/AsyncTask;
.source "DescargarArchivo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/toolkit/DescargarArchivo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DescargadorCallback"
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
.field listener:Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# direct methods
.method public constructor <init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 0
    .param p1, "listener"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 123
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 124
    iput-object p1, p0, Lcl/birdie/toolkit/DescargarArchivo$DescargadorCallback;->listener:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .line 125
    return-void
.end method


# virtual methods
.method protected final bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1
    check-cast p1, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DescargadorCallback: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    aget-object v0, p1, v2

    invoke-static {v0}, Lcl/birdie/toolkit/DescargarArchivo;->descargar(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1
    check-cast p1, [B

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DescargadorCallback: exito con largo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcl/birdie/toolkit/DescargarArchivo$DescargadorCallback;->listener:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/birdie/toolkit/DescargarArchivo$DescargadorCallback;->listener:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-interface {v0, p1}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "DescargarArchivo"

    const-string v1, "DescargadorCallback: error en proceso"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcl/birdie/toolkit/DescargarArchivo$DescargadorCallback;->listener:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/birdie/toolkit/DescargarArchivo$DescargadorCallback;->listener:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method
