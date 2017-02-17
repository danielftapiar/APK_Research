.class public Lcom/vrem/wifianalyzer/c/b/a/c;
.super Landroid/support/v4/b/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vrem/wifianalyzer/c/b/a/c$a;
    }
.end annotation


# instance fields
.field private Q:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private R:Lcom/vrem/wifianalyzer/c/b/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/b/k;-><init>()V

    return-void
.end method

.method private S()V
    .locals 2

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/a/c;->Q:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->c()Lcom/vrem/wifianalyzer/c/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/d/d;->a()V

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/a/c;->Q:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method private a(Landroid/view/View;Lcom/vrem/wifianalyzer/c/b/a/b;)V
    .locals 3

    const v0, 0x7f0f00a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    invoke-virtual {p2}, Lcom/vrem/wifianalyzer/c/b/a/b;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/b;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Lcom/vrem/wifianalyzer/c/b/a/d;)V
    .locals 3

    const v0, 0x7f0f00a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Lcom/vrem/wifianalyzer/c/b/a/d;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vrem/wifianalyzer/c/b/a/d$b;

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/c/b/a/d$b;->a()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/vrem/wifianalyzer/c/b/a/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/vrem/wifianalyzer/c/b/a/c;->S()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const v0, 0x7f040034

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f00a2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/vrem/wifianalyzer/c/b/a/c;->Q:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/a/c;->Q:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v2, Lcom/vrem/wifianalyzer/c/b/a/c$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/vrem/wifianalyzer/c/b/a/c$a;-><init>(Lcom/vrem/wifianalyzer/c/b/a/c;Lcom/vrem/wifianalyzer/c/b/a/c$1;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$b;)V

    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->f()Lcom/vrem/wifianalyzer/a;

    move-result-object v0

    new-instance v2, Lcom/vrem/wifianalyzer/c/b/a/d;

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/b/a/c;->c()Landroid/support/v4/b/l;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/vrem/wifianalyzer/c/b/a/d;-><init>(Landroid/content/Context;Lcom/vrem/wifianalyzer/a;)V

    new-instance v0, Lcom/vrem/wifianalyzer/c/b/a/b;

    invoke-direct {v0, v2}, Lcom/vrem/wifianalyzer/c/b/a/b;-><init>(Lcom/vrem/wifianalyzer/c/b/a/d;)V

    iput-object v0, p0, Lcom/vrem/wifianalyzer/c/b/a/c;->R:Lcom/vrem/wifianalyzer/c/b/a/b;

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/a/c;->Q:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-object v3, p0, Lcom/vrem/wifianalyzer/c/b/a/c;->R:Lcom/vrem/wifianalyzer/c/b/a/b;

    invoke-direct {p0, v0, v3}, Lcom/vrem/wifianalyzer/c/b/a/c;->a(Landroid/view/View;Lcom/vrem/wifianalyzer/c/b/a/b;)V

    invoke-direct {p0, v1, v2}, Lcom/vrem/wifianalyzer/c/b/a/c;->a(Landroid/view/View;Lcom/vrem/wifianalyzer/c/b/a/d;)V

    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->c()Lcom/vrem/wifianalyzer/c/d/d;

    move-result-object v0

    iget-object v2, p0, Lcom/vrem/wifianalyzer/c/b/a/c;->R:Lcom/vrem/wifianalyzer/c/b/a/b;

    invoke-virtual {v0, v2}, Lcom/vrem/wifianalyzer/c/d/d;->a(Lcom/vrem/wifianalyzer/c/d/f;)V

    return-object v1
.end method

.method public i()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/b/k;->i()V

    invoke-direct {p0}, Lcom/vrem/wifianalyzer/c/b/a/c;->S()V

    return-void
.end method

.method public m()V
    .locals 2

    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->c()Lcom/vrem/wifianalyzer/c/d/d;

    move-result-object v0

    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/b/a/c;->R:Lcom/vrem/wifianalyzer/c/b/a/b;

    invoke-virtual {v0, v1}, Lcom/vrem/wifianalyzer/c/d/d;->b(Lcom/vrem/wifianalyzer/c/d/f;)V

    invoke-super {p0}, Landroid/support/v4/b/k;->m()V

    return-void
.end method
