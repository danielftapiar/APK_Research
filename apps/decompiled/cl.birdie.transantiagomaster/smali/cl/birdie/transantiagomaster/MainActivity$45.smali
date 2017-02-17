.class final Lcl/birdie/transantiagomaster/MainActivity$45;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/MainActivity;->onSeleccionarItinerario()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/MainActivity;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$45;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    .line 3633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3636
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v1

    .line 3637
    :try_start_0
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iput p2, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->itinerarioPlanificacion:I

    .line 3638
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    const/4 v2, 0x0

    iput v2, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->legPlanificacion:I

    .line 3639
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$45;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    # getter for: Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/MainActivity;->access$4(Lcl/birdie/transantiagomaster/MainActivity;)Lcl/birdie/transantiagomaster/GApp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3640
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$45;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    # getter for: Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/MainActivity;->access$4(Lcl/birdie/transantiagomaster/MainActivity;)Lcl/birdie/transantiagomaster/GApp;

    move-result-object v0

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/GApp;->dibujarLetreroPlanificacion()V

    .line 3636
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3642
    const/4 v0, 0x1

    sput-boolean v0, Lcl/birdie/transantiagomaster/TileHandler;->refresh:Z

    .line 3643
    return-void

    .line 3636
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
