.class final Lcl/birdie/transantiagomaster/facebook/WallFragment$3;
.super Ljava/lang/Object;
.source "WallFragment.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/facebook/WallFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    iput-object p1, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$3;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$3;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/facebook/WallFragment;->LoadContent()V

    .line 329
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$3;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->list:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->onRefreshComplete()V

    .line 330
    return-void
.end method
