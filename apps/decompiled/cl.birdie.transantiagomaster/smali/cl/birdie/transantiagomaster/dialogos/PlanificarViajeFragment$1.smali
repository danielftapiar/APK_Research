.class final Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$1;
.super Ljava/lang/Object;
.source "PlanificarViajeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->refrescar()V
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
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$1;->this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$1;->this$0:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;

    iget-object v1, v0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->btnPlanificar:Landroid/widget/Button;

    sget-boolean v0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->trabajando:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 69
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
