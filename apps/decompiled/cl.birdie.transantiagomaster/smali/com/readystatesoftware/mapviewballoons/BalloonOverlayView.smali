.class public Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;
.super Landroid/widget/FrameLayout;
.source "BalloonOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView$LimitLinearLayout;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Lcom/google/android/maps/OverlayItem;",
        ">",
        "Landroid/widget/FrameLayout;"
    }
.end annotation


# instance fields
.field private layout:Landroid/widget/LinearLayout;

.field private snippet:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "balloonBottomOffset"    # I

    .prologue
    .local p0, "this":Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;, "Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView<TItem;>;"
    const/16 v1, 0xa

    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {p0, v1, v2, v1, p2}, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->setPadding(IIII)V

    .line 55
    new-instance v1, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView$LimitLinearLayout;

    invoke-direct {v1, p0, p1}, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView$LimitLinearLayout;-><init>(Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->layout:Landroid/widget/LinearLayout;

    .line 56
    iget-object v1, p0, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 58
    iget-object v1, p0, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, v1}, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->setupView(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 60
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 62
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 64
    iget-object v1, p0, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    return-void
.end method


# virtual methods
.method protected setBalloonData$e1ee0c8(Lcom/google/android/maps/OverlayItem;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;, "Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView<TItem;>;"
    .local p1, "item":Lcom/google/android/maps/OverlayItem;, "TItem;"
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 103
    invoke-virtual {p1}, Lcom/google/android/maps/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/maps/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/maps/OverlayItem;->getSnippet()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->snippet:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->snippet:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/maps/OverlayItem;->getSnippet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_1
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->title:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->snippet:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->snippet:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public final setData(Lcom/google/android/maps/OverlayItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;, "Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView<TItem;>;"
    .local p1, "item":Lcom/google/android/maps/OverlayItem;, "TItem;"
    iget-object v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->setBalloonData$e1ee0c8(Lcom/google/android/maps/OverlayItem;)V

    .line 93
    return-void
.end method

.method protected setupView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 77
    .line 78
    .local p0, "this":Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;, "Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView<TItem;>;"
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 77
    check-cast v1, Landroid/view/LayoutInflater;

    .line 79
    sget v2, Lcom/readystatesoftware/mapviewballoons/R$layout;->balloon_overlay:I

    invoke-virtual {v1, v2, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, "v":Landroid/view/View;
    sget v1, Lcom/readystatesoftware/mapviewballoons/R$id;->balloon_item_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->title:Landroid/widget/TextView;

    .line 81
    sget v1, Lcom/readystatesoftware/mapviewballoons/R$id;->balloon_item_snippet:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->snippet:Landroid/widget/TextView;

    .line 83
    return-void
.end method
