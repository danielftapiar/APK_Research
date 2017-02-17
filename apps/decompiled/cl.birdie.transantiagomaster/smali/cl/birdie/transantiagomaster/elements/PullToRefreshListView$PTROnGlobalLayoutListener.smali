.class final Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$PTROnGlobalLayoutListener;
.super Ljava/lang/Object;
.source "PullToRefreshListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PTROnGlobalLayoutListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;


# direct methods
.method private constructor <init>(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$PTROnGlobalLayoutListener;->this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;B)V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0, p1}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$PTROnGlobalLayoutListener;-><init>(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;)V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    .prologue
    .line 484
    iget-object v1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$PTROnGlobalLayoutListener;->this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    # getter for: Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->access$9(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .line 486
    .local v0, "initialHeaderHeight":I
    if-lez v0, :cond_0

    .line 487
    invoke-static {v0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->access$10(I)V

    .line 489
    # getter for: Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->measuredHeaderHeight:I
    invoke-static {}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->access$2()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$PTROnGlobalLayoutListener;->this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    # getter for: Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->state:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;
    invoke-static {v1}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->access$0(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;)Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    move-result-object v1

    sget-object v2, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->REFRESHING:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    if-eq v1, v2, :cond_0

    .line 490
    iget-object v1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$PTROnGlobalLayoutListener;->this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    # getter for: Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->measuredHeaderHeight:I
    invoke-static {}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->access$2()I

    move-result v2

    neg-int v2, v2

    # invokes: Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->setHeaderPadding(I)V
    invoke-static {v1, v2}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->access$4(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;I)V

    .line 491
    iget-object v1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$PTROnGlobalLayoutListener;->this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->requestLayout()V

    .line 495
    :cond_0
    iget-object v1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$PTROnGlobalLayoutListener;->this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 496
    return-void
.end method
