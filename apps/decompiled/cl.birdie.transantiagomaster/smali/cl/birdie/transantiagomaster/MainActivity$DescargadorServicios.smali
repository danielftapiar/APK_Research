.class final Lcl/birdie/transantiagomaster/MainActivity$DescargadorServicios;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescargadorServicios"
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
.field callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

.field final synthetic this$0:Lcl/birdie/transantiagomaster/MainActivity;


# direct methods
.method public constructor <init>(Lcl/birdie/transantiagomaster/MainActivity;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 0
    .param p2, "ifbCallback"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 1412
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$DescargadorServicios;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1413
    iput-object p2, p0, Lcl/birdie/transantiagomaster/MainActivity$DescargadorServicios;->callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .line 1414
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

    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$DescargadorServicios;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    # getter for: Lcl/birdie/transantiagomaster/MainActivity;->progressDialogServicios:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/MainActivity;->access$1(Lcl/birdie/transantiagomaster/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$DescargadorServicios;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    # getter for: Lcl/birdie/transantiagomaster/MainActivity;->progressDialogServicios:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/MainActivity;->access$1(Lcl/birdie/transantiagomaster/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$DescargadorServicios;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    invoke-static {v0}, Lcl/birdie/transantiagomaster/MainActivity;->access$2$6a6bd456(Lcl/birdie/transantiagomaster/MainActivity;)V

    :cond_0
    new-instance v0, Lcl/birdie/transantiagomaster/handlers/ServiciosHandler;

    invoke-direct {v0}, Lcl/birdie/transantiagomaster/handlers/ServiciosHandler;-><init>()V

    invoke-virtual {v0, p1}, Lcl/birdie/transantiagomaster/handlers/ServiciosHandler;->procesar([B)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, v0, Lcl/birdie/transantiagomaster/handlers/ServiciosHandler;->resultados:[Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    if-eqz v1, :cond_2

    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/handlers/ServiciosHandler;->resultados:[Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    iput-object v0, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->servicios:[Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$DescargadorServicios;->callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$DescargadorServicios;->callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-interface {v0, v2}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$DescargadorServicios;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    const v1, 0x7f060062

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/MainActivity;->onToast(I)V

    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$DescargadorServicios;->callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$DescargadorServicios;->callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-interface {v0, v2}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method
