.class Lcom/vrem/wifianalyzer/c/b/a/b;
.super Lcom/vrem/wifianalyzer/c/b/c/a;


# instance fields
.field private final a:Lcom/vrem/wifianalyzer/c/b/a/d;


# direct methods
.method constructor <init>(Lcom/vrem/wifianalyzer/c/b/a/d;)V
    .locals 1

    invoke-static {}, Lcom/vrem/wifianalyzer/c/b/a/b;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vrem/wifianalyzer/c/b/c/a;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/b/a/b;->a:Lcom/vrem/wifianalyzer/c/b/a/d;

    return-void
.end method

.method private static b()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/b/c/f;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/vrem/wifianalyzer/c/a/b;->values()[Lcom/vrem/wifianalyzer/c/a/b;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    invoke-virtual {v5}, Lcom/vrem/wifianalyzer/c/a/b;->d()Lcom/vrem/wifianalyzer/c/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/g/h;

    new-instance v7, Lcom/vrem/wifianalyzer/c/b/a/e;

    invoke-direct {v7, v5, v0}, Lcom/vrem/wifianalyzer/c/b/a/e;-><init>(Lcom/vrem/wifianalyzer/c/a/b;Landroid/support/v4/g/h;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public a(Lcom/vrem/wifianalyzer/c/c/i;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/vrem/wifianalyzer/c/b/c/a;->a(Lcom/vrem/wifianalyzer/c/c/i;)V

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/a/b;->a:Lcom/vrem/wifianalyzer/c/b/a/d;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/b/a/d;->b()V

    return-void
.end method
