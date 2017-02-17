.class final Lcl/birdie/transantiagomaster/GApp$ServicioClickListener;
.super Ljava/lang/Object;
.source "GApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/GApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServicioClickListener"
.end annotation


# instance fields
.field final servicio:Lcl/birdie/transantiagomaster/newobjetos/Servicio;

.field final synthetic this$0:Lcl/birdie/transantiagomaster/GApp;


# direct methods
.method public constructor <init>(Lcl/birdie/transantiagomaster/GApp;Lcl/birdie/transantiagomaster/newobjetos/Servicio;)V
    .locals 0
    .param p2, "sv"    # Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    .prologue
    .line 716
    iput-object p1, p0, Lcl/birdie/transantiagomaster/GApp$ServicioClickListener;->this$0:Lcl/birdie/transantiagomaster/GApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 717
    iput-object p2, p0, Lcl/birdie/transantiagomaster/GApp$ServicioClickListener;->servicio:Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    .line 718
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onClick: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp$ServicioClickListener;->servicio:Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->nombre:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 723
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp$ServicioClickListener;->servicio:Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->setServicioActual(Lcl/birdie/transantiagomaster/newobjetos/Servicio;)V

    .line 725
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp$ServicioClickListener;->this$0:Lcl/birdie/transantiagomaster/GApp;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/GApp;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp$ServicioClickListener;->this$0:Lcl/birdie/transantiagomaster/GApp;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/GApp;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onDescargarItinerario()V

    .line 727
    :cond_0
    return-void
.end method
