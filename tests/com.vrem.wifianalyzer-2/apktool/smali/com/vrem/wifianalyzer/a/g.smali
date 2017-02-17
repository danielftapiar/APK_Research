.class public Lcom/vrem/wifianalyzer/a/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/support/design/widget/NavigationView;

.field private b:Lcom/vrem/wifianalyzer/a/e;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/vrem/wifianalyzer/a/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0f00a6

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/NavigationView;

    iput-object v0, p0, Lcom/vrem/wifianalyzer/a/g;->a:Landroid/support/design/widget/NavigationView;

    invoke-direct {p0}, Lcom/vrem/wifianalyzer/a/g;->c()V

    invoke-virtual {p0, p2}, Lcom/vrem/wifianalyzer/a/g;->a(Lcom/vrem/wifianalyzer/a/e;)V

    iget-object v0, p0, Lcom/vrem/wifianalyzer/a/g;->a:Landroid/support/design/widget/NavigationView;

    check-cast p1, Landroid/support/design/widget/NavigationView$a;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/NavigationView;->setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$a;)V

    return-void
.end method

.method private c()V
    .locals 14

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vrem/wifianalyzer/a/g;->a:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-static {}, Lcom/vrem/wifianalyzer/a/d;->values()[Lcom/vrem/wifianalyzer/a/d;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v6, v4, v2

    invoke-virtual {v6}, Lcom/vrem/wifianalyzer/a/d;->a()[Lcom/vrem/wifianalyzer/a/e;

    move-result-object v7

    array-length v8, v7

    move v0, v1

    :goto_1
    if-ge v0, v8, :cond_0

    aget-object v9, v7, v0

    invoke-virtual {v6}, Lcom/vrem/wifianalyzer/a/d;->ordinal()I

    move-result v10

    invoke-virtual {v9}, Lcom/vrem/wifianalyzer/a/e;->ordinal()I

    move-result v11

    invoke-virtual {v9}, Lcom/vrem/wifianalyzer/a/e;->ordinal()I

    move-result v12

    invoke-virtual {v9}, Lcom/vrem/wifianalyzer/a/e;->a()I

    move-result v13

    invoke-interface {v3, v10, v11, v12, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-virtual {v9}, Lcom/vrem/wifianalyzer/a/e;->c()I

    move-result v9

    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Landroid/view/MenuItem;
    .locals 2

    iget-object v0, p0, Lcom/vrem/wifianalyzer/a/g;->a:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/a/g;->b()Lcom/vrem/wifianalyzer/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/a/e;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/vrem/wifianalyzer/a/e;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/vrem/wifianalyzer/a/g;->b:Lcom/vrem/wifianalyzer/a/e;

    iget-object v0, p0, Lcom/vrem/wifianalyzer/a/g;->a:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v4

    move v0, v1

    :goto_0
    invoke-interface {v4}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-interface {v4, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/a/e;->ordinal()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v3

    :goto_1
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/a/e;->ordinal()I

    move-result v2

    if-ne v2, v0, :cond_1

    move v2, v3

    :goto_2
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public b()Lcom/vrem/wifianalyzer/a/e;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/a/g;->b:Lcom/vrem/wifianalyzer/a/e;

    return-object v0
.end method
