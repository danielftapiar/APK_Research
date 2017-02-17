.class Lde/viktorreiser/toolbox/widget/SwipeableListView$2;
.super Ljava/lang/Object;
.source "SwipeableListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/viktorreiser/toolbox/widget/SwipeableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/viktorreiser/toolbox/widget/SwipeableListView;

.field private final synthetic val$l:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method constructor <init>(Lde/viktorreiser/toolbox/widget/SwipeableListView;Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView$2;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableListView;

    iput-object p2, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView$2;->val$l:Landroid/widget/AbsListView$OnScrollListener;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView$2;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableListView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->onScroll(Landroid/widget/AbsListView;III)V

    .line 205
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView$2;->val$l:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 206
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView$2;->this$0:Lde/viktorreiser/toolbox/widget/SwipeableListView;

    invoke-virtual {v0, p1, p2}, Lde/viktorreiser/toolbox/widget/SwipeableListView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 197
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListView$2;->val$l:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 198
    return-void
.end method
