.class final Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment$3;
.super Ljava/lang/Object;
.source "SelectSourceDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    sget-object v0, Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment;->main:Lcl/birdie/transantiagomaster/facebook/IUploadPhoto;

    .line 65
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment;->dismiss()V

    .line 66
    return-void
.end method
