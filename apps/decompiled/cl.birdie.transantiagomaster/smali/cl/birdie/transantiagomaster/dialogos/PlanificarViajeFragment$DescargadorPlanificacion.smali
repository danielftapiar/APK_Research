.class final Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;
.super Landroid/os/AsyncTask;
.source "PlanificarViajeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescargadorPlanificacion"
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
.field private progressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;


# direct methods
.method protected constructor <init>(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;->this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 102
    return-void
.end method

.method static synthetic access$2(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3$33e5ae70(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;)V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;->progressDialog:Landroid/app/ProgressDialog;

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

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;->this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->access$0(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;->this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->access$0(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v0

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onProgressBarAddTask()V

    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;->this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    # invokes: Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->refrescar()V
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->access$1(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;)V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lcl/birdie/toolkit/DescargarArchivo;->descargarPlanificacion(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1
    check-cast p1, [B

    sput-boolean v0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->trabajando:Z

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;->this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->access$0(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;->this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->access$0(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v0

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onProgressBarRemoveTask()V

    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;->this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    # invokes: Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->refrescar()V
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->access$1(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;)V

    new-instance v0, Lcl/birdie/transantiagomaster/handlers/PlanificacionHandler;

    invoke-direct {v0}, Lcl/birdie/transantiagomaster/handlers/PlanificacionHandler;-><init>()V

    invoke-virtual {v0, p1}, Lcl/birdie/transantiagomaster/handlers/PlanificacionHandler;->procesar([B)I

    move-result v1

    if-lez v1, :cond_3

    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v3, v0, Lcl/birdie/transantiagomaster/handlers/PlanificacionHandler;->plan:Lcl/birdie/transantiagomaster/newobjetos/Plan;

    iput-object v3, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->planificacion:Lcl/birdie/transantiagomaster/newobjetos/Plan;

    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    const/4 v3, 0x0

    iput v3, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->itinerarioPlanificacion:I

    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    const/4 v3, 0x0

    iput v3, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->legPlanificacion:I

    iget-object v2, v0, Lcl/birdie/transantiagomaster/handlers/PlanificacionHandler;->plan:Lcl/birdie/transantiagomaster/newobjetos/Plan;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/newobjetos/Plan;->itinerarios:[Lcl/birdie/transantiagomaster/newobjetos/Itinerario;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;->legs:[Lcl/birdie/transantiagomaster/newobjetos/Leg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Lcl/birdie/transantiagomaster/newobjetos/Leg;->fromPos:Lcl/birdie/toolkit/CacheableLatLng;

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcl/birdie/transantiagomaster/handlers/PlanificacionHandler;->plan:Lcl/birdie/transantiagomaster/newobjetos/Plan;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Plan;->itinerarios:[Lcl/birdie/transantiagomaster/newobjetos/Itinerario;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;->legs:[Lcl/birdie/transantiagomaster/newobjetos/Leg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Leg;->fromPos:Lcl/birdie/toolkit/CacheableLatLng;

    invoke-static {v0}, Lcl/birdie/transantiagomaster/Pantalla;->setCenter(Lcl/birdie/toolkit/LatLng;)V

    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Lcl/birdie/transantiagomaster/Pantalla;->setModoNavegacion(I)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    sput-boolean v0, Lcl/birdie/transantiagomaster/TileHandler;->refresh:Z

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;->this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->access$0(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;->this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->access$0(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v0

    const-string v1, "TSM"

    const-string v2, "Planificacion"

    const-string v3, "exito"

    invoke-interface {v0, v1, v2, v3}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onTrackEvent$78a4d591(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;->this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->access$0(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v0

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onShowMapa()V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;->this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->access$0(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;->this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->access$0(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v0

    const-string v1, "TSM"

    const-string v2, "Planificacion"

    const-string v3, "error"

    invoke-interface {v0, v1, v2, v3}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onTrackEvent$78a4d591(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;->this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->access$0(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v0

    const v1, 0x7f060063

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onToast(I)V

    goto :goto_0
.end method
