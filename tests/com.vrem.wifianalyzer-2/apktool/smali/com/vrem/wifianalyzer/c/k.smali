.class public Lcom/vrem/wifianalyzer/c/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vrem/wifianalyzer/c/d/f;


# instance fields
.field private final a:Lcom/vrem/wifianalyzer/MainActivity;

.field private b:Lcom/vrem/wifianalyzer/c/a;

.field private c:Lcom/vrem/wifianalyzer/c/b;


# direct methods
.method public constructor <init>(Lcom/vrem/wifianalyzer/MainActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/k;->a:Lcom/vrem/wifianalyzer/MainActivity;

    new-instance v0, Lcom/vrem/wifianalyzer/c/a;

    invoke-direct {v0}, Lcom/vrem/wifianalyzer/c/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/c/k;->a(Lcom/vrem/wifianalyzer/c/a;)V

    new-instance v0, Lcom/vrem/wifianalyzer/c/b;

    invoke-direct {v0}, Lcom/vrem/wifianalyzer/c/b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/c/k;->a(Lcom/vrem/wifianalyzer/c/b;)V

    return-void
.end method

.method private a(Landroid/view/View;Lcom/vrem/wifianalyzer/c/c/h;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/vrem/wifianalyzer/c/c/h;->c()Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0f00aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f00a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/vrem/wifianalyzer/c/c/h;->d()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "%d%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    const-string v5, "Mbps"

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Lcom/vrem/wifianalyzer/c/c/j;)V
    .locals 2

    const v0, 0x7f0f007a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/k;->c:Lcom/vrem/wifianalyzer/c/b;

    invoke-virtual {v1, v0, p2}, Lcom/vrem/wifianalyzer/c/b;->a(Landroid/view/View;Lcom/vrem/wifianalyzer/c/c/j;)V

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/k;->c:Lcom/vrem/wifianalyzer/c/b;

    const v1, 0x7f0f0079

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/vrem/wifianalyzer/c/b;->a(Landroid/view/View;Lcom/vrem/wifianalyzer/c/c/j;)V

    :cond_0
    return-void
.end method

.method private b(Lcom/vrem/wifianalyzer/c/c/i;)V
    .locals 5

    const/16 v1, 0x8

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/vrem/wifianalyzer/c/k;->a:Lcom/vrem/wifianalyzer/MainActivity;

    invoke-virtual {v2}, Lcom/vrem/wifianalyzer/MainActivity;->l()Lcom/vrem/wifianalyzer/a/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vrem/wifianalyzer/a/g;->b()Lcom/vrem/wifianalyzer/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vrem/wifianalyzer/a/e;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v2}, Lcom/vrem/wifianalyzer/b;->a()Lcom/vrem/wifianalyzer/settings/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vrem/wifianalyzer/settings/d;->h()Lcom/vrem/wifianalyzer/c/a/b;

    move-result-object v3

    invoke-virtual {v2}, Lcom/vrem/wifianalyzer/settings/d;->c()Lcom/vrem/wifianalyzer/c/c/e;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/vrem/wifianalyzer/c/c/i;->a(Lcom/vrem/wifianalyzer/c/a/b;Lcom/vrem/wifianalyzer/c/c/e;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/c/c/i;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/vrem/wifianalyzer/c/k;->a:Lcom/vrem/wifianalyzer/MainActivity;

    const v3, 0x7f0f00ab

    invoke-virtual {v2, v3}, Lcom/vrem/wifianalyzer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/k;->a:Lcom/vrem/wifianalyzer/MainActivity;

    const v2, 0x7f0f00ac

    invoke-virtual {v1, v2}, Lcom/vrem/wifianalyzer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/k;->a:Lcom/vrem/wifianalyzer/MainActivity;

    const v2, 0x7f0f00ad

    invoke-virtual {v1, v2}, Lcom/vrem/wifianalyzer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private c(Lcom/vrem/wifianalyzer/c/c/i;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/c/c/i;->a()Lcom/vrem/wifianalyzer/c/c/j;

    move-result-object v1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/k;->a:Lcom/vrem/wifianalyzer/MainActivity;

    const v2, 0x7f0f00a7

    invoke-virtual {v0, v2}, Lcom/vrem/wifianalyzer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/c/c/j;->g()Lcom/vrem/wifianalyzer/c/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/c/g;->b()Lcom/vrem/wifianalyzer/c/c/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vrem/wifianalyzer/c/c/h;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0f00a8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/vrem/wifianalyzer/c/k;->b:Lcom/vrem/wifianalyzer/c/a;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5, v0, v1, v6}, Lcom/vrem/wifianalyzer/c/a;->a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/vrem/wifianalyzer/c/c/j;Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/vrem/wifianalyzer/c/k;->a(Landroid/view/View;Lcom/vrem/wifianalyzer/c/c/h;)V

    invoke-direct {p0, v4, v1}, Lcom/vrem/wifianalyzer/c/k;->a(Landroid/view/View;Lcom/vrem/wifianalyzer/c/c/j;)V

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/vrem/wifianalyzer/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/k;->b:Lcom/vrem/wifianalyzer/c/a;

    return-void
.end method

.method a(Lcom/vrem/wifianalyzer/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/k;->c:Lcom/vrem/wifianalyzer/c/b;

    return-void
.end method

.method public a(Lcom/vrem/wifianalyzer/c/c/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vrem/wifianalyzer/c/k;->c(Lcom/vrem/wifianalyzer/c/c/i;)V

    invoke-direct {p0, p1}, Lcom/vrem/wifianalyzer/c/k;->b(Lcom/vrem/wifianalyzer/c/c/i;)V

    return-void
.end method
