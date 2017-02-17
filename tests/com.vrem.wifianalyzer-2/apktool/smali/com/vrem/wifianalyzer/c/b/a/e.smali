.class Lcom/vrem/wifianalyzer/c/b/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vrem/wifianalyzer/c/b/c/f;


# instance fields
.field private final a:Lcom/vrem/wifianalyzer/c/a/b;

.field private final b:Landroid/support/v4/g/h;
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

.field private c:Lcom/vrem/wifianalyzer/c/b/c/g;


# direct methods
.method constructor <init>(Lcom/vrem/wifianalyzer/c/a/b;Landroid/support/v4/g/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vrem/wifianalyzer/c/a/b;",
            "Landroid/support/v4/g/h",
            "<",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/b/a/e;->a:Lcom/vrem/wifianalyzer/c/a/b;

    iput-object p2, p0, Lcom/vrem/wifianalyzer/c/b/a/e;->b:Landroid/support/v4/g/h;

    invoke-direct {p0}, Lcom/vrem/wifianalyzer/c/b/a/e;->e()Lcom/vrem/wifianalyzer/c/b/c/g;

    move-result-object v0

    iput-object v0, p0, Lcom/vrem/wifianalyzer/c/b/a/e;->c:Lcom/vrem/wifianalyzer/c/b/c/g;

    return-void
.end method

.method private a(I)I
    .locals 1

    rem-int/lit8 v0, p1, 0x5

    sub-int v0, p1, v0

    return v0
.end method

.method private a(Lcom/vrem/wifianalyzer/c/c/j;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/vrem/wifianalyzer/c/b/a/e;->b(Lcom/vrem/wifianalyzer/c/c/j;)[Lcom/a/a/a/b;

    move-result-object v0

    new-instance v1, Lcom/a/a/a/g;

    invoke-direct {v1, v0}, Lcom/a/a/a/g;-><init>([Lcom/a/a/a/c;)V

    iget-object v2, p0, Lcom/vrem/wifianalyzer/c/b/a/e;->c:Lcom/vrem/wifianalyzer/c/b/c/g;

    invoke-virtual {v2, p1, v1, v0}, Lcom/vrem/wifianalyzer/c/b/c/g;->a(Lcom/vrem/wifianalyzer/c/c/j;Lcom/a/a/a/a;[Lcom/a/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/a/e;->c:Lcom/vrem/wifianalyzer/c/b/c/g;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/b/c/g;->d()Lcom/vrem/wifianalyzer/c/b/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/b/c/b;->a()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/a/a/a/g;->a(I)V

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/b/c/b;->b()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Lcom/a/a/a/g;->b(I)V

    :cond_0
    return-void
.end method

.method private a(ILandroid/support/v4/g/h;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/g/h",
            "<",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p2, Landroid/support/v4/g/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/vrem/wifianalyzer/c/a/c;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/a/c;->b()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p2, Landroid/support/v4/g/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/vrem/wifianalyzer/c/a/c;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/a/c;->b()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Z
    .locals 3

    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->a()Lcom/vrem/wifianalyzer/settings/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/settings/d;->h()Lcom/vrem/wifianalyzer/c/a/b;

    move-result-object v0

    sget-object v1, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/b;->f()Lcom/vrem/wifianalyzer/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/a;->b()Landroid/support/v4/g/h;

    move-result-object v1

    iget-object v2, p0, Lcom/vrem/wifianalyzer/c/b/a/e;->a:Lcom/vrem/wifianalyzer/c/a/b;

    invoke-virtual {v2, v0}, Lcom/vrem/wifianalyzer/c/a/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vrem/wifianalyzer/c/a/b;->a:Lcom/vrem/wifianalyzer/c/a/b;

    iget-object v2, p0, Lcom/vrem/wifianalyzer/c/b/a/e;->a:Lcom/vrem/wifianalyzer/c/a/b;

    invoke-virtual {v0, v2}, Lcom/vrem/wifianalyzer/c/a/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/a/e;->b:Landroid/support/v4/g/h;

    invoke-virtual {v0, v1}, Landroid/support/v4/g/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/vrem/wifianalyzer/c/c/j;)[Lcom/a/a/a/b;
    .locals 14

    const-wide/high16 v12, -0x3fa7000000000000L    # -100.0

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/c/c/j;->f()Lcom/vrem/wifianalyzer/c/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/c/k;->b()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/vrem/wifianalyzer/c/b/a/e;->a(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/c/k;->c()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/vrem/wifianalyzer/c/b/a/e;->a(I)I

    move-result v2

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/c/k;->d()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/vrem/wifianalyzer/c/b/a/e;->a(I)I

    move-result v3

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/c/k;->i()I

    move-result v0

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/a/a/a/b;

    const/4 v5, 0x0

    new-instance v6, Lcom/a/a/a/b;

    int-to-double v8, v2

    invoke-direct {v6, v8, v9, v12, v13}, Lcom/a/a/a/b;-><init>(DD)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/a/a/a/b;

    add-int/lit8 v2, v2, 0x5

    int-to-double v8, v2

    int-to-double v10, v0

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/a/a/a/b;-><init>(DD)V

    aput-object v6, v4, v5

    const/4 v2, 0x2

    new-instance v5, Lcom/a/a/a/b;

    int-to-double v6, v1

    int-to-double v8, v0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/a/a/a/b;-><init>(DD)V

    aput-object v5, v4, v2

    const/4 v1, 0x3

    new-instance v2, Lcom/a/a/a/b;

    add-int/lit8 v5, v3, -0x5

    int-to-double v6, v5

    int-to-double v8, v0

    invoke-direct {v2, v6, v7, v8, v9}, Lcom/a/a/a/b;-><init>(DD)V

    aput-object v2, v4, v1

    const/4 v0, 0x4

    new-instance v1, Lcom/a/a/a/b;

    int-to-double v2, v3

    invoke-direct {v1, v2, v3, v12, v13}, Lcom/a/a/a/b;-><init>(DD)V

    aput-object v1, v4, v0

    return-object v4
.end method

.method private c()I
    .locals 3

    const/16 v0, 0x18

    sget-object v1, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/b;->f()Lcom/vrem/wifianalyzer/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/vrem/wifianalyzer/c/a/b;->a:Lcom/vrem/wifianalyzer/c/a/b;

    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/b/a/e;->a:Lcom/vrem/wifianalyzer/c/a/b;

    invoke-virtual {v0, v1}, Lcom/vrem/wifianalyzer/c/a/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    :goto_0
    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/a/e;->b:Landroid/support/v4/g/h;

    iget-object v0, v0, Landroid/support/v4/g/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/vrem/wifianalyzer/c/a/c;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/a/c;->a()I

    move-result v0

    add-int/lit8 v2, v0, -0x2

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/a/e;->b:Landroid/support/v4/g/h;

    iget-object v0, v0, Landroid/support/v4/g/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/vrem/wifianalyzer/c/a/c;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/a/c;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x12

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1
.end method

.method private d()Lcom/a/a/b;
    .locals 5

    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->e()Lcom/vrem/wifianalyzer/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Lcom/vrem/wifianalyzer/c/b/c/e;

    invoke-direct {p0}, Lcom/vrem/wifianalyzer/c/b/a/e;->c()I

    move-result v3

    invoke-direct {v2, v0, v3}, Lcom/vrem/wifianalyzer/c/b/c/e;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/vrem/wifianalyzer/c/b/a/a;

    iget-object v3, p0, Lcom/vrem/wifianalyzer/c/b/a/e;->a:Lcom/vrem/wifianalyzer/c/a/b;

    iget-object v4, p0, Lcom/vrem/wifianalyzer/c/b/a/e;->b:Landroid/support/v4/g/h;

    invoke-direct {v0, v3, v4}, Lcom/vrem/wifianalyzer/c/b/a/a;-><init>(Lcom/vrem/wifianalyzer/c/a/b;Landroid/support/v4/g/h;)V

    invoke-virtual {v2, v0}, Lcom/vrem/wifianalyzer/c/b/c/e;->a(Lcom/a/a/d;)Lcom/vrem/wifianalyzer/c/b/c/e;

    move-result-object v0

    const v2, 0x7f080034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vrem/wifianalyzer/c/b/c/e;->a(Ljava/lang/String;)Lcom/vrem/wifianalyzer/c/b/c/e;

    move-result-object v0

    const v2, 0x7f080035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vrem/wifianalyzer/c/b/c/e;->b(Ljava/lang/String;)Lcom/vrem/wifianalyzer/c/b/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/b/c/e;->a()Lcom/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method private e()Lcom/vrem/wifianalyzer/c/b/c/g;
    .locals 9

    const/4 v8, 0x0

    const-wide/high16 v6, -0x3fa7000000000000L    # -100.0

    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->a()Lcom/vrem/wifianalyzer/settings/d;

    move-result-object v0

    new-instance v1, Lcom/vrem/wifianalyzer/c/b/c/g;

    invoke-direct {p0}, Lcom/vrem/wifianalyzer/c/b/a/e;->d()Lcom/a/a/b;

    move-result-object v2

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/settings/d;->f()Lcom/vrem/wifianalyzer/c/b/c/d;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/vrem/wifianalyzer/c/b/c/g;-><init>(Lcom/a/a/b;Lcom/vrem/wifianalyzer/c/b/c/d;)V

    iput-object v1, p0, Lcom/vrem/wifianalyzer/c/b/a/e;->c:Lcom/vrem/wifianalyzer/c/b/c/g;

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/a/e;->b:Landroid/support/v4/g/h;

    iget-object v0, v0, Landroid/support/v4/g/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/vrem/wifianalyzer/c/a/c;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/a/c;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/vrem/wifianalyzer/c/b/a/e;->a(I)I

    move-result v1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/a/e;->b:Landroid/support/v4/g/h;

    iget-object v0, v0, Landroid/support/v4/g/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/vrem/wifianalyzer/c/a/c;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/a/c;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/vrem/wifianalyzer/c/b/a/e;->a(I)I

    move-result v0

    add-int/lit8 v1, v1, -0xa

    iget-object v2, p0, Lcom/vrem/wifianalyzer/c/b/a/e;->c:Lcom/vrem/wifianalyzer/c/b/c/g;

    invoke-virtual {v2}, Lcom/vrem/wifianalyzer/c/b/c/g;->b()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/vrem/wifianalyzer/c/b/a/e;->c:Lcom/vrem/wifianalyzer/c/b/c/g;

    invoke-virtual {v3, v1, v2}, Lcom/vrem/wifianalyzer/c/b/c/g;->a(II)V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/a/a/a/b;

    new-instance v3, Lcom/a/a/a/b;

    int-to-double v4, v1

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/a/a/a/b;-><init>(DD)V

    aput-object v3, v2, v8

    const/4 v1, 0x1

    new-instance v3, Lcom/a/a/a/b;

    add-int/lit8 v0, v0, 0xa

    int-to-double v4, v0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/a/a/a/b;-><init>(DD)V

    aput-object v3, v2, v1

    new-instance v0, Lcom/a/a/a/g;

    invoke-direct {v0, v2}, Lcom/a/a/a/g;-><init>([Lcom/a/a/a/c;)V

    sget-object v1, Lcom/vrem/wifianalyzer/c/b/c/b;->a:Lcom/vrem/wifianalyzer/c/b/c/b;

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/c/b/c/b;->a()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/a/a/a/g;->a(I)V

    invoke-virtual {v0, v8}, Lcom/a/a/a/g;->c(I)V

    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/b/a/e;->c:Lcom/vrem/wifianalyzer/c/b/c/g;

    invoke-virtual {v1, v0}, Lcom/vrem/wifianalyzer/c/b/c/g;->a(Lcom/a/a/a/a;)V

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/a/e;->c:Lcom/vrem/wifianalyzer/c/b/c/g;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/a/a/b;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/a/e;->c:Lcom/vrem/wifianalyzer/c/b/c/g;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/b/c/g;->e()Lcom/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/vrem/wifianalyzer/c/c/i;)V
    .locals 6

    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->a()Lcom/vrem/wifianalyzer/settings/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/settings/d;->f()Lcom/vrem/wifianalyzer/c/b/c/d;

    move-result-object v1

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/settings/d;->c()Lcom/vrem/wifianalyzer/c/c/e;

    move-result-object v0

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iget-object v3, p0, Lcom/vrem/wifianalyzer/c/b/a/e;->a:Lcom/vrem/wifianalyzer/c/a/b;

    invoke-virtual {p1, v3, v0}, Lcom/vrem/wifianalyzer/c/c/i;->a(Lcom/vrem/wifianalyzer/c/a/b;Lcom/vrem/wifianalyzer/c/c/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/c/c/j;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/c/j;->f()Lcom/vrem/wifianalyzer/c/c/k;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vrem/wifianalyzer/c/c/k;->b()I

    move-result v4

    iget-object v5, p0, Lcom/vrem/wifianalyzer/c/b/a/e;->b:Landroid/support/v4/g/h;

    invoke-direct {p0, v4, v5}, Lcom/vrem/wifianalyzer/c/b/a/e;->a(ILandroid/support/v4/g/h;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/vrem/wifianalyzer/c/b/a/e;->a(Lcom/vrem/wifianalyzer/c/c/j;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/a/e;->c:Lcom/vrem/wifianalyzer/c/b/c/g;

    invoke-virtual {v0, v2}, Lcom/vrem/wifianalyzer/c/b/c/g;->a(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/a/e;->c:Lcom/vrem/wifianalyzer/c/b/c/g;

    invoke-virtual {v0, v1}, Lcom/vrem/wifianalyzer/c/b/c/g;->a(Lcom/vrem/wifianalyzer/c/b/c/d;)V

    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/b/a/e;->c:Lcom/vrem/wifianalyzer/c/b/c/g;

    invoke-direct {p0}, Lcom/vrem/wifianalyzer/c/b/a/e;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/vrem/wifianalyzer/c/b/c/g;->a(I)V

    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method
