.class Lcom/vrem/wifianalyzer/c/a/h;
.super Lcom/vrem/wifianalyzer/c/a/g;


# static fields
.field private static final b:Landroid/support/v4/g/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/h",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/g/h",
            "<",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final d:Landroid/support/v4/g/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/h",
            "<",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v9, 0x9b4

    const/16 v8, 0xe

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Landroid/support/v4/g/h;

    const/16 v1, 0x960

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9c3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/v4/g/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/a/h;->b:Landroid/support/v4/g/h;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/support/v4/g/h;

    new-instance v1, Landroid/support/v4/g/h;

    new-instance v2, Lcom/vrem/wifianalyzer/c/a/c;

    const/16 v3, 0x96c

    invoke-direct {v2, v7, v3}, Lcom/vrem/wifianalyzer/c/a/c;-><init>(II)V

    new-instance v3, Lcom/vrem/wifianalyzer/c/a/c;

    const/16 v4, 0xd

    const/16 v5, 0x9a8

    invoke-direct {v3, v4, v5}, Lcom/vrem/wifianalyzer/c/a/c;-><init>(II)V

    invoke-direct {v1, v2, v3}, Landroid/support/v4/g/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/support/v4/g/h;

    new-instance v2, Lcom/vrem/wifianalyzer/c/a/c;

    invoke-direct {v2, v8, v9}, Lcom/vrem/wifianalyzer/c/a/c;-><init>(II)V

    new-instance v3, Lcom/vrem/wifianalyzer/c/a/c;

    invoke-direct {v3, v8, v9}, Lcom/vrem/wifianalyzer/c/a/c;-><init>(II)V

    invoke-direct {v1, v2, v3}, Landroid/support/v4/g/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v7

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vrem/wifianalyzer/c/a/h;->c:Ljava/util/List;

    new-instance v1, Landroid/support/v4/g/h;

    sget-object v0, Lcom/vrem/wifianalyzer/c/a/h;->c:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/g/h;

    iget-object v2, v0, Landroid/support/v4/g/h;->a:Ljava/lang/Object;

    sget-object v0, Lcom/vrem/wifianalyzer/c/a/h;->c:Ljava/util/List;

    sget-object v3, Lcom/vrem/wifianalyzer/c/a/h;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/g/h;

    iget-object v0, v0, Landroid/support/v4/g/h;->b:Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Landroid/support/v4/g/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v1, Lcom/vrem/wifianalyzer/c/a/h;->d:Landroid/support/v4/g/h;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    sget-object v0, Lcom/vrem/wifianalyzer/c/a/h;->b:Landroid/support/v4/g/h;

    sget-object v1, Lcom/vrem/wifianalyzer/c/a/h;->c:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/vrem/wifianalyzer/c/a/g;-><init>(Landroid/support/v4/g/h;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/g/h",
            "<",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/v4/g/h;

    const/4 v1, 0x0

    sget-object v2, Lcom/vrem/wifianalyzer/c/a/h;->d:Landroid/support/v4/g/h;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/vrem/wifianalyzer/c/a/d;->a(Ljava/lang/String;)Lcom/vrem/wifianalyzer/c/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/a/d;->d()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/c/a/h;->c(I)Lcom/vrem/wifianalyzer/c/a/c;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public a(Ljava/lang/String;I)Z
    .locals 1

    invoke-static {p1}, Lcom/vrem/wifianalyzer/c/a/d;->a(Ljava/lang/String;)Lcom/vrem/wifianalyzer/c/a/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/vrem/wifianalyzer/c/a/d;->a(I)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Landroid/support/v4/g/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/support/v4/g/h",
            "<",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/vrem/wifianalyzer/c/a/h;->d:Landroid/support/v4/g/h;

    return-object v0
.end method

.method public b(ILandroid/support/v4/g/h;)Lcom/vrem/wifianalyzer/c/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/g/h",
            "<",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            ">;)",
            "Lcom/vrem/wifianalyzer/c/a/c;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/vrem/wifianalyzer/c/a/h;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vrem/wifianalyzer/c/a/h;->d:Landroid/support/v4/g/h;

    invoke-virtual {p0, p1, v0}, Lcom/vrem/wifianalyzer/c/a/h;->a(ILandroid/support/v4/g/h;)Lcom/vrem/wifianalyzer/c/a/c;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/vrem/wifianalyzer/c/a/c;->a:Lcom/vrem/wifianalyzer/c/a/c;

    goto :goto_0
.end method
