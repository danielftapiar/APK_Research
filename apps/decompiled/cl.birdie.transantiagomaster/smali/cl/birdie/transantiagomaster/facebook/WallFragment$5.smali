.class final Lcl/birdie/transantiagomaster/facebook/WallFragment$5;
.super Ljava/lang/Object;
.source "WallFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/facebook/WallFragment;->procesarPosts()V
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
    iput-object p1, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$5;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$5;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->adapter:Lcl/birdie/transantiagomaster/adapter/PostAdapter;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/adapter/PostAdapter;->notifyDataSetChanged()V

    .line 413
    return-void
.end method
