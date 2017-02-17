.class Lcom/vrem/wifianalyzer/c/b/b/b;
.super Lcom/vrem/wifianalyzer/c/b/c/a;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/vrem/wifianalyzer/c/b/b/b;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vrem/wifianalyzer/c/b/c/a;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private static b()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/b/c/f;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/vrem/wifianalyzer/c/a/b;->values()[Lcom/vrem/wifianalyzer/c/a/b;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    new-instance v5, Lcom/vrem/wifianalyzer/c/b/b/d;

    invoke-direct {v5, v4}, Lcom/vrem/wifianalyzer/c/b/b/d;-><init>(Lcom/vrem/wifianalyzer/c/a/b;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
