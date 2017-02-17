.class final Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$4;
.super Ljava/lang/Object;
.source "ComplainDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$4;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 592
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$4;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->dismiss()V

    .line 593
    return-void
.end method
