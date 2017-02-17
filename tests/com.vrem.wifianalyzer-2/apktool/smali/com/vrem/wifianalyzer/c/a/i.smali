.class Lcom/vrem/wifianalyzer/c/a/i;
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


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroid/support/v4/g/h;

    const/16 v1, 0x1324

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x170b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/v4/g/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/a/i;->b:Landroid/support/v4/g/h;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/support/v4/g/h;

    const/4 v1, 0x0

    new-instance v2, Landroid/support/v4/g/h;

    new-instance v3, Lcom/vrem/wifianalyzer/c/a/c;

    const/16 v4, 0x24

    const/16 v5, 0x143c

    invoke-direct {v3, v4, v5}, Lcom/vrem/wifianalyzer/c/a/c;-><init>(II)V

    new-instance v4, Lcom/vrem/wifianalyzer/c/a/c;

    const/16 v5, 0x40

    const/16 v6, 0x14c8

    invoke-direct {v4, v5, v6}, Lcom/vrem/wifianalyzer/c/a/c;-><init>(II)V

    invoke-direct {v2, v3, v4}, Landroid/support/v4/g/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/support/v4/g/h;

    new-instance v3, Lcom/vrem/wifianalyzer/c/a/c;

    const/16 v4, 0x64

    const/16 v5, 0x157c

    invoke-direct {v3, v4, v5}, Lcom/vrem/wifianalyzer/c/a/c;-><init>(II)V

    new-instance v4, Lcom/vrem/wifianalyzer/c/a/c;

    const/16 v5, 0x90

    const/16 v6, 0x1658

    invoke-direct {v4, v5, v6}, Lcom/vrem/wifianalyzer/c/a/c;-><init>(II)V

    invoke-direct {v2, v3, v4}, Landroid/support/v4/g/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Landroid/support/v4/g/h;

    new-instance v3, Lcom/vrem/wifianalyzer/c/a/c;

    const/16 v4, 0x95

    const/16 v5, 0x1671

    invoke-direct {v3, v4, v5}, Lcom/vrem/wifianalyzer/c/a/c;-><init>(II)V

    new-instance v4, Lcom/vrem/wifianalyzer/c/a/c;

    const/16 v5, 0xa5

    const/16 v6, 0x16c1

    invoke-direct {v4, v5, v6}, Lcom/vrem/wifianalyzer/c/a/c;-><init>(II)V

    invoke-direct {v2, v3, v4}, Landroid/support/v4/g/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vrem/wifianalyzer/c/a/i;->c:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    sget-object v0, Lcom/vrem/wifianalyzer/c/a/i;->b:Landroid/support/v4/g/h;

    sget-object v1, Lcom/vrem/wifianalyzer/c/a/i;->c:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/vrem/wifianalyzer/c/a/g;-><init>(Landroid/support/v4/g/h;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
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

    sget-object v0, Lcom/vrem/wifianalyzer/c/a/i;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

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

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/a/d;->e()Ljava/util/SortedSet;

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

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/c/a/i;->c(I)Lcom/vrem/wifianalyzer/c/a/c;

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

    invoke-virtual {v0, p2}, Lcom/vrem/wifianalyzer/c/a/d;->b(I)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Landroid/support/v4/g/h;
    .locals 4
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

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/a/i;->a()Ljava/util/List;

    move-result-object v2

    invoke-static {p1}, La/a/a/a/e;->c(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/g/h;

    iget-object v1, v0, Landroid/support/v4/g/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/vrem/wifianalyzer/c/a/c;

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/c/a/c;->a()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/vrem/wifianalyzer/c/a/i;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/g/h;

    goto :goto_0
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

    invoke-virtual {p0, p1}, Lcom/vrem/wifianalyzer/c/a/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/vrem/wifianalyzer/c/a/i;->a(ILandroid/support/v4/g/h;)Lcom/vrem/wifianalyzer/c/a/c;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/vrem/wifianalyzer/c/a/c;->a:Lcom/vrem/wifianalyzer/c/a/c;

    goto :goto_0
.end method
