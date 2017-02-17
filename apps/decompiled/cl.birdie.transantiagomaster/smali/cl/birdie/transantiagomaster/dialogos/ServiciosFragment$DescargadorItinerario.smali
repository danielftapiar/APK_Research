.class final Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$DescargadorItinerario;
.super Landroid/os/AsyncTask;
.source "ServiciosFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescargadorItinerario"
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
.field final synthetic this$0:Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;


# direct methods
.method private constructor <init>(Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$DescargadorItinerario;->this$0:Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;B)V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$DescargadorItinerario;-><init>(Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;)V

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

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$DescargadorItinerario;->this$0:Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;->progressDialogItinerario:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$DescargadorItinerario;->this$0:Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;->progressDialogItinerario:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    new-instance v0, Lcl/birdie/transantiagomaster/handlers/ItinerarioHandler;

    invoke-direct {v0}, Lcl/birdie/transantiagomaster/handlers/ItinerarioHandler;-><init>()V

    invoke-virtual {v0, p1}, Lcl/birdie/transantiagomaster/handlers/ItinerarioHandler;->procesar([B)I

    move-result v1

    if-lez v1, :cond_2

    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    invoke-virtual {v1, v0}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->cargarDatosItinerario(Lcl/birdie/transantiagomaster/handlers/ItinerarioHandler;)V

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$DescargadorItinerario;->this$0:Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$DescargadorItinerario;->this$0:Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onShowItinerarios()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$DescargadorItinerario;->this$0:Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$DescargadorItinerario;->this$0:Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    const v1, 0x7f060061

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onToast(I)V

    goto :goto_0
.end method
