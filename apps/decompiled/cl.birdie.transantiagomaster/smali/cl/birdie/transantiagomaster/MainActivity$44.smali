.class final Lcl/birdie/transantiagomaster/MainActivity$44;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/MainActivity;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$44;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    .line 3600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3610
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$44;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    const v1, 0x7f060196

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/MainActivity;->onToast(I)V

    .line 3611
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3604
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$44;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    const v1, 0x7f060198

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/MainActivity;->onToast(I)V

    .line 3605
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$44;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    invoke-static {v0}, Lcl/birdie/transantiagomaster/MainActivity;->access$6(Lcl/birdie/transantiagomaster/MainActivity;)V

    .line 3606
    return-void
.end method
