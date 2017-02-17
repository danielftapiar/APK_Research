.class final Lcl/birdie/transantiagomaster/BarraDerechaFragment$1;
.super Ljava/lang/Object;
.source "BarraDerechaFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/BarraDerechaFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/BarraDerechaFragment;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/BarraDerechaFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/BarraDerechaFragment$1;->this$0:Lcl/birdie/transantiagomaster/BarraDerechaFragment;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 57
    iget-object v0, p0, Lcl/birdie/transantiagomaster/BarraDerechaFragment$1;->this$0:Lcl/birdie/transantiagomaster/BarraDerechaFragment;

    # getter for: Lcl/birdie/transantiagomaster/BarraDerechaFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/BarraDerechaFragment;->access$0(Lcl/birdie/transantiagomaster/BarraDerechaFragment;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcl/birdie/transantiagomaster/BarraDerechaFragment$1;->this$0:Lcl/birdie/transantiagomaster/BarraDerechaFragment;

    # getter for: Lcl/birdie/transantiagomaster/BarraDerechaFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/BarraDerechaFragment;->access$0(Lcl/birdie/transantiagomaster/BarraDerechaFragment;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onShowComplainDialog(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;)V

    .line 60
    :cond_0
    return-void
.end method
