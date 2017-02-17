.class public final Lcl/birdie/transantiagomaster/handlers/DescargadorImagenLayer;
.super Landroid/os/AsyncTask;
.source "DescargadorImagenLayer.java"


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
.field img:Lcl/birdie/transantiagomaster/newobjetos/LayerImage;

.field listener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;


# direct methods
.method public constructor <init>(Lcl/birdie/transantiagomaster/newobjetos/LayerImage;Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V
    .locals 0
    .param p1, "img"    # Lcl/birdie/transantiagomaster/newobjetos/LayerImage;
    .param p2, "listener"    # Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 19
    iput-object p1, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorImagenLayer;->img:Lcl/birdie/transantiagomaster/newobjetos/LayerImage;

    .line 20
    iput-object p2, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorImagenLayer;->listener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    .line 21
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

    const-string v1, "doInBackground: descargando "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " a ruta "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorImagenLayer;->img:Lcl/birdie/transantiagomaster/newobjetos/LayerImage;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/newobjetos/LayerImage;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorImagenLayer;->img:Lcl/birdie/transantiagomaster/newobjetos/LayerImage;

    const/4 v1, 0x1

    iput v1, v0, Lcl/birdie/transantiagomaster/newobjetos/LayerImage;->state:I

    aget-object v0, p1, v2

    invoke-static {v0}, Lcl/birdie/toolkit/DescargarArchivo;->descargar(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 1
    check-cast p1, [B

    if-eqz p1, :cond_4

    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorImagenLayer;->img:Lcl/birdie/transantiagomaster/newobjetos/LayerImage;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/newobjetos/LayerImage;->filename:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0x4000

    invoke-direct {v3, v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    const/4 v0, 0x0

    array-length v4, p1

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_2

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "renombrando a "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorImagenLayer;->img:Lcl/birdie/transantiagomaster/newobjetos/LayerImage;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/newobjetos/LayerImage;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorImagenLayer;->img:Lcl/birdie/transantiagomaster/newobjetos/LayerImage;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/newobjetos/LayerImage;->filename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DescargadorImagenLayer"

    const-string v1, "error al renombrar!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "datos guardados en "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorImagenLayer;->img:Lcl/birdie/transantiagomaster/newobjetos/LayerImage;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/newobjetos/LayerImage;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorImagenLayer;->img:Lcl/birdie/transantiagomaster/newobjetos/LayerImage;

    const/4 v1, 0x2

    iput v1, v0, Lcl/birdie/transantiagomaster/newobjetos/LayerImage;->state:I

    iget-object v0, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorImagenLayer;->listener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorImagenLayer;->listener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onRevisarLayers()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit16 v0, v1, 0x1000

    if-ge v0, v4, :cond_3

    const/16 v0, 0x1000

    :goto_2
    invoke-virtual {v3, p1, v1, v0}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit16 v0, v1, 0x1000

    move v1, v0

    goto :goto_0

    :cond_3
    sub-int v0, v4, v1

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "DescargadorImagenLayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPostExecute: error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorImagenLayer;->img:Lcl/birdie/transantiagomaster/newobjetos/LayerImage;

    iput v5, v0, Lcl/birdie/transantiagomaster/newobjetos/LayerImage;->state:I

    goto :goto_1

    :cond_4
    const-string v0, "DescargadorImagenLayer"

    const-string v1, "onPostExecute: datos null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcl/birdie/transantiagomaster/handlers/DescargadorImagenLayer;->img:Lcl/birdie/transantiagomaster/newobjetos/LayerImage;

    iput v5, v0, Lcl/birdie/transantiagomaster/newobjetos/LayerImage;->state:I

    goto :goto_1
.end method
