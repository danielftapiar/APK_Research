.class public Lcom/vrem/wifianalyzer/c/j;
.super Landroid/support/v4/b/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vrem/wifianalyzer/c/j$a;
    }
.end annotation


# instance fields
.field private Q:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private R:Lcom/vrem/wifianalyzer/c/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/b/k;-><init>()V

    return-void
.end method

.method private S()V
    .locals 2

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/j;->Q:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->c()Lcom/vrem/wifianalyzer/c/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/d/d;->a()V

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/j;->Q:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method static synthetic a(Lcom/vrem/wifianalyzer/c/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/vrem/wifianalyzer/c/j;->S()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/j;->c()Landroid/support/v4/b/l;

    move-result-object v2

    const v0, 0x7f040023

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0f0090

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/vrem/wifianalyzer/c/j;->Q:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/j;->Q:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/vrem/wifianalyzer/c/j$a;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/vrem/wifianalyzer/c/j$a;-><init>(Lcom/vrem/wifianalyzer/c/j;Lcom/vrem/wifianalyzer/c/j$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$b;)V

    const v0, 0x7f0f008f

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0091

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    new-instance v4, Lcom/vrem/wifianalyzer/c/i;

    invoke-direct {v4, v2, v0}, Lcom/vrem/wifianalyzer/c/i;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    iput-object v4, p0, Lcom/vrem/wifianalyzer/c/j;->R:Lcom/vrem/wifianalyzer/c/i;

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/j;->R:Lcom/vrem/wifianalyzer/c/i;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->c()Lcom/vrem/wifianalyzer/c/d/d;

    move-result-object v0

    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/j;->R:Lcom/vrem/wifianalyzer/c/i;

    invoke-virtual {v0, v1}, Lcom/vrem/wifianalyzer/c/d/d;->a(Lcom/vrem/wifianalyzer/c/d/f;)V

    return-object v3
.end method

.method public i()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/b/k;->i()V

    invoke-direct {p0}, Lcom/vrem/wifianalyzer/c/j;->S()V

    return-void
.end method

.method public m()V
    .locals 2

    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->c()Lcom/vrem/wifianalyzer/c/d/d;

    move-result-object v0

    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/j;->R:Lcom/vrem/wifianalyzer/c/i;

    invoke-virtual {v0, v1}, Lcom/vrem/wifianalyzer/c/d/d;->b(Lcom/vrem/wifianalyzer/c/d/f;)V

    invoke-super {p0}, Landroid/support/v4/b/k;->m()V

    return-void
.end method
