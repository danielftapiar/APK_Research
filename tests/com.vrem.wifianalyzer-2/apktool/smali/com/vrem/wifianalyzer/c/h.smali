.class public Lcom/vrem/wifianalyzer/c/h;
.super Landroid/support/v4/b/x;


# instance fields
.field private Y:Lcom/vrem/wifianalyzer/c/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/b/x;-><init>()V

    return-void
.end method

.method private S()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/a/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/b;->a()Lcom/vrem/wifianalyzer/settings/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/settings/d;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vrem/wifianalyzer/c/a/d;->a(Ljava/lang/String;)Lcom/vrem/wifianalyzer/c/a/d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const v0, 0x7f040020

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vrem/wifianalyzer/c/g;

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/h;->c()Landroid/support/v4/b/l;

    move-result-object v2

    invoke-direct {p0}, Lcom/vrem/wifianalyzer/c/h;->S()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/vrem/wifianalyzer/c/g;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/vrem/wifianalyzer/c/h;->Y:Lcom/vrem/wifianalyzer/c/g;

    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/h;->Y:Lcom/vrem/wifianalyzer/c/g;

    invoke-virtual {p0, v1}, Lcom/vrem/wifianalyzer/c/h;->a(Landroid/widget/ListAdapter;)V

    return-object v0
.end method

.method public i()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/b/x;->i()V

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/h;->Y:Lcom/vrem/wifianalyzer/c/g;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/g;->clear()V

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/h;->Y:Lcom/vrem/wifianalyzer/c/g;

    invoke-direct {p0}, Lcom/vrem/wifianalyzer/c/h;->S()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vrem/wifianalyzer/c/g;->addAll(Ljava/util/Collection;)V

    return-void
.end method
