.class final Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener$1;
.super Ljava/lang/Object;
.source "PullToRefreshListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener$1;->this$1:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener$1;->this$1:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;

    # getter for: Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;->access$0(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;)Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    move-result-object v0

    # invokes: Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->resetHeader()V
    invoke-static {v0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->access$7(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;)V

    .line 469
    return-void
.end method
