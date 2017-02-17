.class final Lcl/birdie/transantiagomaster/facebook/WallFragment$2$2$1;
.super Ljava/lang/Object;
.source "WallFragment.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/facebook/WallFragment$2$2;->onSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcl/birdie/transantiagomaster/facebook/WallFragment$2$2;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/facebook/WallFragment$2$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$2$2$1;->this$2:Lcl/birdie/transantiagomaster/facebook/WallFragment$2$2;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 268
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 261
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$2$2$1;->this$2:Lcl/birdie/transantiagomaster/facebook/WallFragment$2$2;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/WallFragment$2$2;->this$1:Lcl/birdie/transantiagomaster/facebook/WallFragment$2;

    # getter for: Lcl/birdie/transantiagomaster/facebook/WallFragment$2;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/facebook/WallFragment$2;->access$0(Lcl/birdie/transantiagomaster/facebook/WallFragment$2;)Lcl/birdie/transantiagomaster/facebook/WallFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/facebook/WallFragment;->receivePhoto(Ljava/lang/String;)V

    .line 262
    return-void
.end method
