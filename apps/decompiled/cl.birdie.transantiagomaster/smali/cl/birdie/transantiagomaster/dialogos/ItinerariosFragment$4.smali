.class final Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$4;
.super Ljava/lang/Object;
.source "ItinerariosFragment.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$4;->this$0:Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 187
    const-string v0, "ItinerariosPopupScreen"

    const-string v1, "error al obtener paraderos"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 172
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    .line 173
    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getListaParaderosServicioActual()Ljava/util/List;

    move-result-object v0

    .line 175
    .local v0, "paraderos":Ljava/util/List;, "Ljava/util/List<Lcl/birdie/transantiagomaster/newobjetos/Paradero;>;"
    if-nez v0, :cond_0

    .line 176
    const-string v1, "ItinerariosPopupScreen"

    const-string v2, "REBUG! paraderos es null, dej\u00e1ndolo en blanco."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "paraderos":Ljava/util/List;, "Ljava/util/List<Lcl/birdie/transantiagomaster/newobjetos/Paradero;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .restart local v0    # "paraderos":Ljava/util/List;, "Ljava/util/List<Lcl/birdie/transantiagomaster/newobjetos/Paradero;>;"
    :cond_0
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$4;->this$0:Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;

    new-instance v2, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ItinerariosListAdapter;

    iget-object v3, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$4;->this$0:Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;

    iget-object v4, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$4;->this$0:Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;

    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 181
    invoke-direct {v2, v3, v4, v0}, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ItinerariosListAdapter;-><init>(Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;Landroid/content/Context;Ljava/util/List;)V

    .line 180
    invoke-virtual {v1, v2}, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    return-void
.end method
