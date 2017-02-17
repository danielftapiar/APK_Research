.class final Lcl/birdie/transantiagomaster/facebook/WallFragment$6;
.super Ljava/lang/Object;
.source "WallFragment.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/facebook/WallFragment;->LoadContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/facebook/WallFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$6;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 436
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 431
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$6;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/facebook/WallFragment;->procesarPosts()V

    .line 432
    return-void
.end method
