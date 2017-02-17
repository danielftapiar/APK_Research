.class public Lcom/vrem/wifianalyzer/b/a/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/vrem/wifianalyzer/b/a/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/vrem/wifianalyzer/b/a/g;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vrem/wifianalyzer/b/a/g;->b:Ljava/util/Map;

    return-void
.end method

.method private b()Lcom/vrem/wifianalyzer/b/a/c;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/b/a/g;->c:Lcom/vrem/wifianalyzer/b/a/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vrem/wifianalyzer/b/a/c;

    invoke-direct {v0}, Lcom/vrem/wifianalyzer/b/a/c;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vrem/wifianalyzer/b/a/g;->c:Lcom/vrem/wifianalyzer/b/a/c;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/vrem/wifianalyzer/b/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/b/a/g;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vrem/wifianalyzer/b/a/g;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->d()Lcom/vrem/wifianalyzer/b/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vrem/wifianalyzer/b/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/vrem/wifianalyzer/b/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/vrem/wifianalyzer/b/a/g;->b:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/vrem/wifianalyzer/b/a/g;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vrem/wifianalyzer/b/a/g;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/vrem/wifianalyzer/b/a/g;->b()Lcom/vrem/wifianalyzer/b/a/c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/vrem/wifianalyzer/b/a/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public a()Ljava/util/SortedMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->d()Lcom/vrem/wifianalyzer/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b/a/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/b/a/e;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b/a/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vrem/wifianalyzer/b/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v4, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b/a/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-object v2
.end method
