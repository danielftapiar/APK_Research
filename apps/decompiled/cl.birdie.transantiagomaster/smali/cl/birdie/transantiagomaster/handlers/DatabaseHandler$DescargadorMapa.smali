.class public final Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$DescargadorMapa;
.super Landroid/os/AsyncTask;
.source "DatabaseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DescargadorMapa"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field listener:Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# direct methods
.method public constructor <init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 0
    .param p1, "listener"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 185
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 186
    iput-object p1, p0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$DescargadorMapa;->listener:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .line 187
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

    const-string v1, "DescargadorBaseDatos: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    aget-object v0, p1, v2

    invoke-static {v0}, Lcl/birdie/toolkit/DescargarArchivo;->descargarArchivo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$DescargadorMapa;->listener:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-static {p1, v0}, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->procesaMapa(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    return-void
.end method
