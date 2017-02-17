.class Lcom/markupartist/android/widget/PullToRefreshListView$OnClickRefreshListener;
.super Ljava/lang/Object;
.source "PullToRefreshListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/markupartist/android/widget/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnClickRefreshListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/markupartist/android/widget/PullToRefreshListView;


# direct methods
.method private constructor <init>(Lcom/markupartist/android/widget/PullToRefreshListView;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/markupartist/android/widget/PullToRefreshListView$OnClickRefreshListener;->this$0:Lcom/markupartist/android/widget/PullToRefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/markupartist/android/widget/PullToRefreshListView;Lcom/markupartist/android/widget/PullToRefreshListView$OnClickRefreshListener;)V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0, p1}, Lcom/markupartist/android/widget/PullToRefreshListView$OnClickRefreshListener;-><init>(Lcom/markupartist/android/widget/PullToRefreshListView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView$OnClickRefreshListener;->this$0:Lcom/markupartist/android/widget/PullToRefreshListView;

    # getter for: Lcom/markupartist/android/widget/PullToRefreshListView;->mRefreshState:I
    invoke-static {v0}, Lcom/markupartist/android/widget/PullToRefreshListView;->access$0(Lcom/markupartist/android/widget/PullToRefreshListView;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 413
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView$OnClickRefreshListener;->this$0:Lcom/markupartist/android/widget/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/markupartist/android/widget/PullToRefreshListView;->prepareForRefresh()V

    .line 414
    iget-object v0, p0, Lcom/markupartist/android/widget/PullToRefreshListView$OnClickRefreshListener;->this$0:Lcom/markupartist/android/widget/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/markupartist/android/widget/PullToRefreshListView;->onRefresh()V

    .line 416
    :cond_0
    return-void
.end method
