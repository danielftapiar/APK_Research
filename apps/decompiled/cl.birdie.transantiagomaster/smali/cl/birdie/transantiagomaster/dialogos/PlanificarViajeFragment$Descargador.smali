.class final Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;
.super Landroid/os/AsyncTask;
.source "PlanificarViajeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Descargador"
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
.field private dir:Ljava/lang/String;

.field private progressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;


# direct methods
.method protected constructor <init>(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;Ljava/lang/String;)V
    .locals 0
    .param p2, "dir"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;->this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    .line 149
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 151
    iput-object p2, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;->dir:Ljava/lang/String;

    .line 152
    return-void
.end method

.method static synthetic access$2(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3$577052(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;)V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public static mostrarProgreso()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method


# virtual methods
.method protected final bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->trabajando:Z

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;->this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->access$0(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;->this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->access$0(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v0

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onProgressBarAddTask()V

    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;->this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    # invokes: Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->refrescar()V
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->access$1(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;)V

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

    sput-boolean v2, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->trabajando:Z

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;->this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->access$0(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;->this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->access$0(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v0

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onProgressBarRemoveTask()V

    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;->this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    # invokes: Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->refrescar()V
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->access$1(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;)V

    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->bHandler:Lcl/birdie/transantiagomaster/handlers/BusquedaHandler;

    invoke-virtual {v0, p1}, Lcl/birdie/transantiagomaster/handlers/BusquedaHandler;->procesar([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;->this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->access$0(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;->this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->access$0(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v0

    const v1, 0x7f060064

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onToast(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->bHandler:Lcl/birdie/transantiagomaster/handlers/BusquedaHandler;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/handlers/BusquedaHandler;->resultados:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;->this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->elegirLugares:Z

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;->this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->crearPopupLugares()V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;->this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->access$0(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;->this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->access$0(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v0

    const v1, 0x7f060077

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onToast(I)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->bHandler:Lcl/birdie/transantiagomaster/handlers/BusquedaHandler;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/handlers/BusquedaHandler;->resultados:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/objetos/BusquedaResult;

    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget v1, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->buscando:I

    if-nez v1, :cond_3

    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/objetos/BusquedaResult;->pos:Lcl/birdie/toolkit/CacheableLatLng;

    iput-object v0, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->busquedaFrom:Lcl/birdie/toolkit/LatLng;

    :goto_1
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;->this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->procesarPlanificacion()V

    goto :goto_0

    :cond_3
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/objetos/BusquedaResult;->pos:Lcl/birdie/toolkit/CacheableLatLng;

    iput-object v0, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->busquedaTo:Lcl/birdie/toolkit/LatLng;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
