.class final Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$3;
.super Ljava/lang/Object;
.source "ItinerariosFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 150
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->cambiarSentido(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V

    .line 151
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;

    new-instance v1, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ItinerariosListAdapter;

    iget-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;

    iget-object v3, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;

    invoke-virtual {v3}, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 152
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    .line 154
    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getListaParaderosServicioActual()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ItinerariosListAdapter;-><init>(Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;Landroid/content/Context;Ljava/util/List;)V

    .line 151
    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 155
    return-void
.end method
