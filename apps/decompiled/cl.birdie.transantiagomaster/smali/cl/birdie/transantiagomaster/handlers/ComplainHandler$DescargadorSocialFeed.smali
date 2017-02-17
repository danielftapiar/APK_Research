.class public final Lcl/birdie/transantiagomaster/handlers/ComplainHandler$DescargadorSocialFeed;
.super Landroid/os/AsyncTask;
.source "ComplainHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/handlers/ComplainHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DescargadorSocialFeed"
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
.field caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# direct methods
.method public constructor <init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 0
    .param p1, "caller"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 317
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 318
    iput-object p1, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$DescargadorSocialFeed;->caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .line 319
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
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1
    check-cast p1, [B

    invoke-static {p1}, Lcl/birdie/transantiagomaster/handlers/ComplainHandler;->procesarSocialFeed([B)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$DescargadorSocialFeed;->caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$DescargadorSocialFeed;->caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-interface {v0, v2}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "ComplainHandler"

    const-string v1, "DescargadorSocialFeed: error en proceso"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$DescargadorSocialFeed;->caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$DescargadorSocialFeed;->caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-interface {v0, v2}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method
