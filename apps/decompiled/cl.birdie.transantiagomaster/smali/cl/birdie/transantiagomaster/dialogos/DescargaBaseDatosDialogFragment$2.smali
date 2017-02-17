.class final Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment$2;
.super Ljava/lang/Object;
.source "DescargaBaseDatosDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment$2;->this$0:Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment$2;->this$0:Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment;->dismiss()V

    .line 91
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment$2;->this$0:Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment;->caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment;->access$0(Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment;)Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment$2;->this$0:Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment;->caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment;->access$0(Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment;)Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onSuccess(Ljava/lang/Object;)V

    .line 93
    :cond_0
    return-void
.end method
