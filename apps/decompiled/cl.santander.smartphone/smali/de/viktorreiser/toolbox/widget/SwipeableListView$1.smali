.class Lde/viktorreiser/toolbox/widget/SwipeableListView$1;
.super Landroid/database/DataSetObserver;
.source "SwipeableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/viktorreiser/toolbox/widget/SwipeableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/viktorreiser/toolbox/widget/SwipeableListView;


# direct methods
.method constructor <init>(Lde/viktorreiser/toolbox/widget/SwipeableListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView$1;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableListView;

    .line 88
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView$1;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableListView;

    # getter for: Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeableView:Lde/viktorreiser/toolbox/widget/SwipeableListItem;
    invoke-static {v0}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->access$0(Lde/viktorreiser/toolbox/widget/SwipeableListView;)Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView$1;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableListView;

    # getter for: Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeStarted:Z
    invoke-static {v0}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->access$1(Lde/viktorreiser/toolbox/widget/SwipeableListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView$1;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableListView;

    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView$1;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableListView;

    # getter for: Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeablePosition:I
    invoke-static {v1}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->access$2(Lde/viktorreiser/toolbox/widget/SwipeableListView;)I

    move-result v1

    invoke-static {v0, v1}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->access$3(Lde/viktorreiser/toolbox/widget/SwipeableListView;I)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView$1;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableListView;

    # getter for: Lde/viktorreiser/toolbox/widget/SwipeableListView;->mSwipeableView:Lde/viktorreiser/toolbox/widget/SwipeableListItem;
    invoke-static {v0}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->access$0(Lde/viktorreiser/toolbox/widget/SwipeableListView;)Lde/viktorreiser/toolbox/widget/SwipeableListItem;

    move-result-object v0

    invoke-interface {v0}, Lde/viktorreiser/toolbox/widget/SwipeableListItem;->swipeStateReset()V

    .line 97
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView$1;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->access$4(Lde/viktorreiser/toolbox/widget/SwipeableListView;Lde/viktorreiser/toolbox/widget/SwipeableListItem;)V

    goto :goto_0
.end method
