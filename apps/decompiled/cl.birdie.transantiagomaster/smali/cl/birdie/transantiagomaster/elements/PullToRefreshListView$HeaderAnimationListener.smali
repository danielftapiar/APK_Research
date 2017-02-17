.class final Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;
.super Ljava/lang/Object;
.source "PullToRefreshListView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderAnimationListener"
.end annotation


# instance fields
.field private height:I

.field private stateAtAnimationStart:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

.field final synthetic this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

.field private translation:I


# direct methods
.method public constructor <init>(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;I)V
    .locals 0
    .param p2, "translation"    # I

    .prologue
    .line 430
    iput-object p1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    iput p2, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;->translation:I

    .line 432
    return-void
.end method

.method static synthetic access$0(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;)Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    return-object v0
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 450
    iget-object v3, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    iget-object v1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;->stateAtAnimationStart:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    sget-object v4, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->REFRESHING:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    if-ne v1, v4, :cond_2

    move v1, v2

    :goto_0
    # invokes: Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->setHeaderPadding(I)V
    invoke-static {v3, v1}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->access$4(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;I)V

    .line 451
    iget-object v1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    invoke-virtual {v1, v2}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->setSelection(I)V

    .line 453
    iget-object v1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 454
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 455
    iget-object v1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    invoke-virtual {v1, v0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    iget-object v1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    # getter for: Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->scrollbarEnabled:Z
    invoke-static {v1}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->access$1(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    iget-object v1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->setVerticalScrollBarEnabled(Z)V

    .line 461
    :cond_0
    iget-object v1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    # getter for: Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->bounceBackHeader:Z
    invoke-static {v1}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->access$5(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 462
    iget-object v1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    invoke-static {v1}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->access$6$291b7658(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;)V

    .line 464
    iget-object v1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    new-instance v2, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener$1;

    invoke-direct {v2, p0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener$1;-><init>(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;)V

    .line 470
    const-wide/16 v3, 0x64

    .line 464
    invoke-virtual {v1, v2, v3, v4}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 474
    :cond_1
    :goto_1
    return-void

    .line 450
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    # getter for: Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->measuredHeaderHeight:I
    invoke-static {}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->access$2()I

    move-result v1

    neg-int v1, v1

    iget-object v4, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    # getter for: Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->access$3(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getTop()I

    move-result v4

    sub-int/2addr v1, v4

    goto :goto_0

    .line 471
    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-object v1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;->stateAtAnimationStart:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    sget-object v2, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->REFRESHING:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    if-eq v1, v2, :cond_1

    .line 472
    iget-object v1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    sget-object v2, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    # invokes: Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->setState(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;)V
    invoke-static {v1, v2}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->access$8(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;)V

    goto :goto_1
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 477
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 436
    iget-object v1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    # getter for: Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->state:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;
    invoke-static {v1}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->access$0(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;)Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    move-result-object v1

    iput-object v1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;->stateAtAnimationStart:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    .line 438
    iget-object v1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 439
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;->height:I

    .line 440
    iget-object v1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->getHeight()I

    move-result v1

    iget v2, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;->translation:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 441
    iget-object v1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    invoke-virtual {v1, v0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    iget-object v1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    # getter for: Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->scrollbarEnabled:Z
    invoke-static {v1}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->access$1(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    iget-object v1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->setVerticalScrollBarEnabled(Z)V

    .line 446
    :cond_0
    return-void
.end method
