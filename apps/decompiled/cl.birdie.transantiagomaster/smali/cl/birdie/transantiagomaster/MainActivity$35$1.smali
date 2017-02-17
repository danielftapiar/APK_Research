.class final Lcl/birdie/transantiagomaster/MainActivity$35$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/MainActivity$35;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/birdie/transantiagomaster/MainActivity$35;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/MainActivity$35;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$35$1;->this$1:Lcl/birdie/transantiagomaster/MainActivity$35;

    .line 2932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2941
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2936
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$35$1;->this$1:Lcl/birdie/transantiagomaster/MainActivity$35;

    # getter for: Lcl/birdie/transantiagomaster/MainActivity$35;->this$0:Lcl/birdie/transantiagomaster/MainActivity;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/MainActivity$35;->access$0(Lcl/birdie/transantiagomaster/MainActivity$35;)Lcl/birdie/transantiagomaster/MainActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/MainActivity;->onShowComplainDialog(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;)V

    .line 2937
    return-void
.end method
