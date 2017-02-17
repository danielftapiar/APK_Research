.class Lcom/vrem/wifianalyzer/c/b/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vrem/wifianalyzer/c/b/c/f;


# instance fields
.field private final a:Lcom/vrem/wifianalyzer/c/a/b;

.field private b:Lcom/vrem/wifianalyzer/c/b/c/g;

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(Lcom/vrem/wifianalyzer/c/a/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/b/b/d;->a:Lcom/vrem/wifianalyzer/c/a/b;

    const/4 v0, 0x0

    iput v0, p0, Lcom/vrem/wifianalyzer/c/b/b/d;->d:I

    iput v0, p0, Lcom/vrem/wifianalyzer/c/b/b/d;->c:I

    invoke-direct {p0}, Lcom/vrem/wifianalyzer/c/b/b/d;->e()Lcom/vrem/wifianalyzer/c/b/c/g;

    move-result-object v0

    iput-object v0, p0, Lcom/vrem/wifianalyzer/c/b/b/d;->b:Lcom/vrem/wifianalyzer/c/b/c/g;

    return-void
.end method

.method private a(Lcom/vrem/wifianalyzer/c/c/j;)V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Lcom/a/a/a/b;

    iget v1, p0, Lcom/vrem/wifianalyzer/c/b/b/d;->d:I

    int-to-double v2, v1

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/c/c/j;->f()Lcom/vrem/wifianalyzer/c/c/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/c/c/k;->i()I

    move-result v1

    int-to-double v4, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/a/a/a/b;-><init>(DD)V

    new-instance v1, Lcom/a/a/a/d;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/a/a/a/b;

    aput-object v0, v2, v6

    invoke-direct {v1, v2}, Lcom/a/a/a/d;-><init>([Lcom/a/a/a/c;)V

    iget-object v2, p0, Lcom/vrem/wifianalyzer/c/b/b/d;->b:Lcom/vrem/wifianalyzer/c/b/c/g;

    iget v3, p0, Lcom/vrem/wifianalyzer/c/b/b/d;->c:I

    invoke-virtual {v2, p1, v1, v0, v3}, Lcom/vrem/wifianalyzer/c/b/c/g;->a(Lcom/vrem/wifianalyzer/c/c/j;Lcom/a/a/a/a;Lcom/a/a/a/b;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/b/d;->b:Lcom/vrem/wifianalyzer/c/b/c/g;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/b/c/g;->d()Lcom/vrem/wifianalyzer/c/b/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/b/c/b;->a()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Lcom/a/a/a/d;->a(I)V

    invoke-virtual {v1, v6}, Lcom/a/a/a/d;->a(Z)V

    :cond_0
    return-void
.end method

.method private b()Z
    .locals 2

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/b/d;->a:Lcom/vrem/wifianalyzer/c/a/b;

    sget-object v1, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/b;->a()Lcom/vrem/wifianalyzer/settings/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/settings/d;->h()Lcom/vrem/wifianalyzer/c/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vrem/wifianalyzer/c/a/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private c()I
    .locals 1

    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->f()Lcom/vrem/wifianalyzer/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x12

    goto :goto_0
.end method

.method private d()Lcom/a/a/b;
    .locals 4

    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->e()Lcom/vrem/wifianalyzer/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Lcom/vrem/wifianalyzer/c/b/c/e;

    invoke-direct {p0}, Lcom/vrem/wifianalyzer/c/b/b/d;->c()I

    move-result v3

    invoke-direct {v2, v0, v3}, Lcom/vrem/wifianalyzer/c/b/c/e;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/vrem/wifianalyzer/c/b/b/a;

    invoke-direct {v0}, Lcom/vrem/wifianalyzer/c/b/b/a;-><init>()V

    invoke-virtual {v2, v0}, Lcom/vrem/wifianalyzer/c/b/c/e;->a(Lcom/a/a/d;)Lcom/vrem/wifianalyzer/c/b/c/e;

    move-result-object v0

    const v2, 0x7f080034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vrem/wifianalyzer/c/b/c/e;->a(Ljava/lang/String;)Lcom/vrem/wifianalyzer/c/b/c/e;

    move-result-object v0

    const v2, 0x7f080036

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

    invoke-direct {p0}, Lcom/vrem/wifianalyzer/c/b/b/d;->d()Lcom/a/a/b;

    move-result-object v2

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/settings/d;->g()Lcom/vrem/wifianalyzer/c/b/c/d;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/vrem/wifianalyzer/c/b/c/g;-><init>(Lcom/a/a/b;Lcom/vrem/wifianalyzer/c/b/c/d;)V

    iput-object v1, p0, Lcom/vrem/wifianalyzer/c/b/b/d;->b:Lcom/vrem/wifianalyzer/c/b/c/g;

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/b/d;->b:Lcom/vrem/wifianalyzer/c/b/c/g;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/b/c/g;->a()V

    new-instance v0, Lcom/a/a/a/d;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/a/a/a/b;

    new-instance v2, Lcom/a/a/a/b;

    const-wide/16 v4, 0x0

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/a/a/a/b;-><init>(DD)V

    aput-object v2, v1, v8

    const/4 v2, 0x1

    new-instance v3, Lcom/a/a/a/b;

    invoke-direct {p0}, Lcom/vrem/wifianalyzer/c/b/b/d;->c()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-double v4, v4

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/a/a/a/b;-><init>(DD)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/a/a/a/d;-><init>([Lcom/a/a/a/c;)V

    sget-object v1, Lcom/vrem/wifianalyzer/c/b/c/b;->a:Lcom/vrem/wifianalyzer/c/b/c/b;

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/c/b/c/b;->a()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/a/a/a/d;->a(I)V

    invoke-virtual {v0, v8}, Lcom/a/a/a/d;->b(I)V

    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/b/b/d;->b:Lcom/vrem/wifianalyzer/c/b/c/g;

    invoke-virtual {v1, v0}, Lcom/vrem/wifianalyzer/c/b/c/g;->a(Lcom/a/a/a/a;)V

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/b/d;->b:Lcom/vrem/wifianalyzer/c/b/c/g;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/a/a/b;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/b/d;->b:Lcom/vrem/wifianalyzer/c/b/c/g;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/b/c/g;->e()Lcom/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/vrem/wifianalyzer/c/c/i;)V
    .locals 4

    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->a()Lcom/vrem/wifianalyzer/settings/d;

    move-result-object v1

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/b/d;->a:Lcom/vrem/wifianalyzer/c/a/b;

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/settings/d;->c()Lcom/vrem/wifianalyzer/c/c/e;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/vrem/wifianalyzer/c/c/i;->a(Lcom/vrem/wifianalyzer/c/a/b;Lcom/vrem/wifianalyzer/c/c/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/c/c/j;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/vrem/wifianalyzer/c/b/b/d;->a(Lcom/vrem/wifianalyzer/c/c/j;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/b/d;->b:Lcom/vrem/wifianalyzer/c/b/c/g;

    invoke-virtual {v0, v2}, Lcom/vrem/wifianalyzer/c/b/c/g;->a(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/b/d;->b:Lcom/vrem/wifianalyzer/c/b/c/g;

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/settings/d;->g()Lcom/vrem/wifianalyzer/c/b/c/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vrem/wifianalyzer/c/b/c/g;->a(Lcom/vrem/wifianalyzer/c/b/c/d;)V

    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/b/b/d;->b:Lcom/vrem/wifianalyzer/c/b/c/g;

    invoke-direct {p0}, Lcom/vrem/wifianalyzer/c/b/b/d;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/vrem/wifianalyzer/c/b/c/g;->a(I)V

    iget v0, p0, Lcom/vrem/wifianalyzer/c/b/b/d;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vrem/wifianalyzer/c/b/b/d;->d:I

    iget v0, p0, Lcom/vrem/wifianalyzer/c/b/b/d;->c:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/vrem/wifianalyzer/c/b/b/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vrem/wifianalyzer/c/b/b/d;->c:I

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method
