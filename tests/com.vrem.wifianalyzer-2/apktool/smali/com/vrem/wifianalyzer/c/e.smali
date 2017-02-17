.class Lcom/vrem/wifianalyzer/c/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/c/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vrem/wifianalyzer/c/e;->a:Ljava/util/List;

    return-void
.end method

.method private b(II)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/vrem/wifianalyzer/c/e;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-ltz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/vrem/wifianalyzer/c/e;->b(I)I

    move-result v0

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(I)Z
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/e;->a()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()I
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method a(I)Lcom/vrem/wifianalyzer/c/c/j;
    .locals 1

    invoke-direct {p0, p1}, Lcom/vrem/wifianalyzer/c/e;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/c/c/j;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/vrem/wifianalyzer/c/c/j;->a:Lcom/vrem/wifianalyzer/c/c/j;

    goto :goto_0
.end method

.method a(II)Lcom/vrem/wifianalyzer/c/c/j;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/vrem/wifianalyzer/c/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/c/c/j;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/c/j;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/c/c/j;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/vrem/wifianalyzer/c/c/j;->a:Lcom/vrem/wifianalyzer/c/c/j;

    goto :goto_0
.end method

.method a(Lcom/vrem/wifianalyzer/c/c/i;)V
    .locals 3

    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->a()Lcom/vrem/wifianalyzer/settings/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/settings/d;->h()Lcom/vrem/wifianalyzer/c/a/b;

    move-result-object v1

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/settings/d;->c()Lcom/vrem/wifianalyzer/c/c/e;

    move-result-object v2

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/settings/d;->d()Lcom/vrem/wifianalyzer/c/c/c;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Lcom/vrem/wifianalyzer/c/c/i;->a(Lcom/vrem/wifianalyzer/c/a/b;Lcom/vrem/wifianalyzer/c/c/e;Lcom/vrem/wifianalyzer/c/c/c;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/vrem/wifianalyzer/c/e;->a:Ljava/util/List;

    return-void
.end method

.method b(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/vrem/wifianalyzer/c/e;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/c/c/j;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/c/j;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
