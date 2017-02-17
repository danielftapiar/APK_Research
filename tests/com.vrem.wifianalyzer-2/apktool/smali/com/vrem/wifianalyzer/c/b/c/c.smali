.class Lcom/vrem/wifianalyzer/c/b/c/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/b/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/vrem/wifianalyzer/c/b/c/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/vrem/wifianalyzer/c/b/c/c;->b:Ljava/util/Stack;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vrem/wifianalyzer/c/b/c/c;->a:Ljava/util/List;

    return-void
.end method

.method private b(J)Lcom/vrem/wifianalyzer/c/b/c/b;
    .locals 5

    invoke-direct {p0}, Lcom/vrem/wifianalyzer/c/b/c/c;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/c/b/c/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/b/c/b;->a()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/b/c/b;",
            ">;"
        }
    .end annotation

    const/16 v9, 0x10

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/c/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->e()Lcom/vrem/wifianalyzer/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/vrem/wifianalyzer/c/b/c/b;

    aget-object v3, v1, v0

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    add-int/lit8 v3, v0, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/vrem/wifianalyzer/c/b/c/b;-><init>(JJ)V

    iget-object v3, p0, Lcom/vrem/wifianalyzer/c/b/c/c;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/c/c;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method a()Lcom/vrem/wifianalyzer/c/b/c/b;
    .locals 2

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/c/c;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/c/c;->b:Ljava/util/Stack;

    invoke-direct {p0}, Lcom/vrem/wifianalyzer/c/b/c/c;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/c/c;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/c/b/c/b;

    return-object v0
.end method

.method a(J)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/vrem/wifianalyzer/c/b/c/c;->b(J)Lcom/vrem/wifianalyzer/c/b/c/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/b/c/c;->b:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/b/c/c;->b:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
