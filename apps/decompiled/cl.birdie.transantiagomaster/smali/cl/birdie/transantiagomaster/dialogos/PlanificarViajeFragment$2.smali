.class final Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$2;
.super Ljava/lang/Object;
.source "PlanificarViajeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->crearPopupLugares()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$2;->this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 221
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->bHandler:Lcl/birdie/transantiagomaster/handlers/BusquedaHandler;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/handlers/BusquedaHandler;->resultados:Ljava/util/List;

    .line 222
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/objetos/BusquedaResult;

    .line 223
    .local v0, "br":Lcl/birdie/transantiagomaster/objetos/BusquedaResult;
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget v1, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->buscando:I

    if-nez v1, :cond_0

    .line 224
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v2, v0, Lcl/birdie/transantiagomaster/objetos/BusquedaResult;->pos:Lcl/birdie/toolkit/CacheableLatLng;

    iput-object v2, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->busquedaFrom:Lcl/birdie/toolkit/LatLng;

    .line 227
    :goto_0
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->bHandler:Lcl/birdie/transantiagomaster/handlers/BusquedaHandler;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/handlers/BusquedaHandler;->resultados:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 228
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$2;->this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->elegirLugares:Z

    .line 229
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$2;->this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->procesarPlanificacion()V

    .line 230
    return-void

    .line 226
    :cond_0
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v2, v0, Lcl/birdie/transantiagomaster/objetos/BusquedaResult;->pos:Lcl/birdie/toolkit/CacheableLatLng;

    iput-object v2, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->busquedaTo:Lcl/birdie/toolkit/LatLng;

    goto :goto_0
.end method
