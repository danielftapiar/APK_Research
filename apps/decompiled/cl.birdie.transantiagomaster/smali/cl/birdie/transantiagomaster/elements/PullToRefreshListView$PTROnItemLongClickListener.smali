.class final Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$PTROnItemLongClickListener;
.super Ljava/lang/Object;
.source "PullToRefreshListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PTROnItemLongClickListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;


# direct methods
.method private constructor <init>(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$PTROnItemLongClickListener;->this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;B)V
    .locals 0

    .prologue
    .line 512
    invoke-direct {p0, p1}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$PTROnItemLongClickListener;-><init>(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;)V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 516
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$PTROnItemLongClickListener;->this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    invoke-static {v0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->access$11$291b7658(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;)V

    .line 518
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$PTROnItemLongClickListener;->this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    # getter for: Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->access$13(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$PTROnItemLongClickListener;->this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    # getter for: Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->state:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->access$0(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;)Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    move-result-object v0

    sget-object v1, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    if-ne v0, v1, :cond_0

    .line 520
    iget-object v0, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$PTROnItemLongClickListener;->this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    # getter for: Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->access$13(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$PTROnItemLongClickListener;->this$0:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v3, p3, v1

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    .line 523
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
