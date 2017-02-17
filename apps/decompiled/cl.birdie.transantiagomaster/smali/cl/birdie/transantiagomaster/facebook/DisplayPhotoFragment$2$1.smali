.class final Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$2$1;
.super Ljava/lang/Object;
.source "DisplayPhotoFragment.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$2;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$2$1;->this$1:Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$2;

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 383
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$2$1;->this$1:Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$2;

    # getter for: Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$2;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$2;->access$0(Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$2;)Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;

    move-result-object v0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$2$1;->this$1:Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$2;

    # getter for: Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$2;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$2;->access$0(Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$2;)Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;

    move-result-object v0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onError(Ljava/lang/String;)V

    .line 385
    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 378
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$2$1;->this$1:Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$2;

    # getter for: Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$2;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$2;->access$0(Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$2;)Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->LoadContent()V

    .line 379
    return-void
.end method
