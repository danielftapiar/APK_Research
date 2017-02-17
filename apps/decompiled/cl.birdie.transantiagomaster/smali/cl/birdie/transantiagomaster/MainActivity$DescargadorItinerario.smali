.class final Lcl/birdie/transantiagomaster/MainActivity$DescargadorItinerario;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/MainActivity;
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
.field final synthetic this$0:Lcl/birdie/transantiagomaster/MainActivity;


# direct methods
.method private constructor <init>(Lcl/birdie/transantiagomaster/MainActivity;)V
    .locals 0

    .prologue
    .line 1568
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$DescargadorItinerario;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcl/birdie/transantiagomaster/MainActivity;B)V
    .locals 0

    .prologue
    .line 1568
    invoke-direct {p0, p1}, Lcl/birdie/transantiagomaster/MainActivity$DescargadorItinerario;-><init>(Lcl/birdie/transantiagomaster/MainActivity;)V

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
    .locals 3

    .prologue
    .line 1572
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$DescargadorItinerario;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    .line 1573
    const v1, 0x7f060067

    .line 1574
    const-string v2, "itinerario"

    .line 1572
    invoke-static {v0, v1, v2}, Lcl/birdie/transantiagomaster/dialogos/ProgressDialogFragment;->showDialog(Lcom/actionbarsherlock/app/SherlockFragmentActivity;ILjava/lang/String;)V

    .line 1575
    return-void
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1
    check-cast p1, [B

    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$DescargadorItinerario;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    const-string v1, "itinerario"

    invoke-static {v0, v1}, Lcl/birdie/transantiagomaster/dialogos/ProgressDialogFragment;->dismissDialog(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;)V

    new-instance v0, Lcl/birdie/transantiagomaster/handlers/ItinerarioHandler;

    invoke-direct {v0}, Lcl/birdie/transantiagomaster/handlers/ItinerarioHandler;-><init>()V

    invoke-virtual {v0, p1}, Lcl/birdie/transantiagomaster/handlers/ItinerarioHandler;->procesar([B)I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    invoke-virtual {v2, v0}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->cargarDatosItinerario(Lcl/birdie/transantiagomaster/handlers/ItinerarioHandler;)V

    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$DescargadorItinerario;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    # invokes: Lcl/birdie/transantiagomaster/MainActivity;->procesarDescargaItinerarioPost()V
    invoke-static {v0}, Lcl/birdie/transantiagomaster/MainActivity;->access$3(Lcl/birdie/transantiagomaster/MainActivity;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    sput-boolean v0, Lcl/birdie/transantiagomaster/TileHandler;->refresh:Z

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity$DescargadorItinerario;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity$DescargadorItinerario;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    const v2, 0x7f060061

    invoke-virtual {v1, v2}, Lcl/birdie/transantiagomaster/MainActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcl/birdie/transantiagomaster/MainActivity$DescargadorItinerario$1;

    invoke-direct {v3, p0}, Lcl/birdie/transantiagomaster/MainActivity$DescargadorItinerario$1;-><init>(Lcl/birdie/transantiagomaster/MainActivity$DescargadorItinerario;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
