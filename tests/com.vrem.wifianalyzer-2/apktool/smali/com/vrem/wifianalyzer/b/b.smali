.class public Lcom/vrem/wifianalyzer/b/b;
.super Landroid/support/v4/b/x;


# instance fields
.field private Y:Lcom/vrem/wifianalyzer/b/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/b/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const v0, 0x7f04004d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/b;->b()Lcom/vrem/wifianalyzer/b/a/g;

    move-result-object v1

    new-instance v2, Lcom/vrem/wifianalyzer/b/a;

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/b/b;->c()Landroid/support/v4/b/l;

    move-result-object v3

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/b/a/g;->a()Ljava/util/SortedMap;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/vrem/wifianalyzer/b/a;-><init>(Landroid/content/Context;Ljava/util/SortedMap;)V

    iput-object v2, p0, Lcom/vrem/wifianalyzer/b/b;->Y:Lcom/vrem/wifianalyzer/b/a;

    iget-object v1, p0, Lcom/vrem/wifianalyzer/b/b;->Y:Lcom/vrem/wifianalyzer/b/a;

    invoke-virtual {p0, v1}, Lcom/vrem/wifianalyzer/b/b;->a(Landroid/widget/ListAdapter;)V

    return-object v0
.end method

.method public i()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/b/x;->i()V

    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->b()Lcom/vrem/wifianalyzer/b/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/vrem/wifianalyzer/b/b;->Y:Lcom/vrem/wifianalyzer/b/a;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b/a/g;->a()Ljava/util/SortedMap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/vrem/wifianalyzer/b/a;->a(Ljava/util/SortedMap;)V

    return-void
.end method
