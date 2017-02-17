.class final Lcl/birdie/transantiagomaster/MainActivity$DescargadorBusqueda;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescargadorBusqueda"
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
.field final synthetic this$0:Lcl/birdie/transantiagomaster/MainActivity;


# direct methods
.method private constructor <init>(Lcl/birdie/transantiagomaster/MainActivity;)V
    .locals 0

    .prologue
    .line 1686
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$DescargadorBusqueda;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcl/birdie/transantiagomaster/MainActivity;B)V
    .locals 0

    .prologue
    .line 1686
    invoke-direct {p0, p1}, Lcl/birdie/transantiagomaster/MainActivity$DescargadorBusqueda;-><init>(Lcl/birdie/transantiagomaster/MainActivity;)V

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

.method public final mostrarDialogo()V
    .locals 1

    .prologue
    .line 1689
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$DescargadorBusqueda;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/MainActivity;->onShowBuscarProgress()V

    .line 1690
    return-void
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1
    check-cast p1, [B

    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$DescargadorBusqueda;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/MainActivity;->onHideBuscarProgress()V

    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->bHandler:Lcl/birdie/transantiagomaster/handlers/BusquedaHandler;

    invoke-virtual {v0, p1}, Lcl/birdie/transantiagomaster/handlers/BusquedaHandler;->procesar([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$DescargadorBusqueda;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity$DescargadorBusqueda;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    const v2, 0x7f060064

    invoke-virtual {v1, v2}, Lcl/birdie/transantiagomaster/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/MainActivity;->onError(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->bHandler:Lcl/birdie/transantiagomaster/handlers/BusquedaHandler;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/handlers/BusquedaHandler;->resultados:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$DescargadorBusqueda;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/MainActivity;->onShowLugaresDialog()V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$DescargadorBusqueda;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity$DescargadorBusqueda;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    const v2, 0x7f060077

    invoke-virtual {v1, v2}, Lcl/birdie/transantiagomaster/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/MainActivity;->onError(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->bHandler:Lcl/birdie/transantiagomaster/handlers/BusquedaHandler;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/handlers/BusquedaHandler;->resultados:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/objetos/BusquedaResult;

    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity$DescargadorBusqueda;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    invoke-virtual {v1, v2}, Lcl/birdie/transantiagomaster/MainActivity;->onSetModoNavegacion(I)V

    sget-object v1, Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;->SEGUIR_OFF:Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;

    invoke-static {v1}, Lcl/birdie/transantiagomaster/Pantalla;->setSeguirPosicion(Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;)V

    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity$DescargadorBusqueda;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    # getter for: Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;
    invoke-static {v1}, Lcl/birdie/transantiagomaster/MainActivity;->access$4(Lcl/birdie/transantiagomaster/MainActivity;)Lcl/birdie/transantiagomaster/GApp;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "MainActivity"

    const-string v1, "DescargadorBusqueda: fragMapa null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$DescargadorBusqueda;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/MainActivity;->onHideBuscarDialog()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity$DescargadorBusqueda;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    # getter for: Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;
    invoke-static {v1}, Lcl/birdie/transantiagomaster/MainActivity;->access$4(Lcl/birdie/transantiagomaster/MainActivity;)Lcl/birdie/transantiagomaster/GApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcl/birdie/transantiagomaster/GApp;->anadirPlacemark(Lcl/birdie/transantiagomaster/objetos/BusquedaResult;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
