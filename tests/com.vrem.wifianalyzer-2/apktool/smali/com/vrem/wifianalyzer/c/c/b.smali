.class public Lcom/vrem/wifianalyzer/c/c/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vrem/wifianalyzer/c/c/b$a;
    }
.end annotation


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
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vrem/wifianalyzer/c/c/b;->a:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/vrem/wifianalyzer/c/c/j;Lcom/vrem/wifianalyzer/c/c/j;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/c/c/j;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/vrem/wifianalyzer/c/c/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/vrem/wifianalyzer/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/c/c/j;->f()Lcom/vrem/wifianalyzer/c/c/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/c/c/k;->a()I

    move-result v1

    invoke-virtual {p2}, Lcom/vrem/wifianalyzer/c/c/j;->f()Lcom/vrem/wifianalyzer/c/c/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vrem/wifianalyzer/c/c/k;->a()I

    move-result v2

    sub-int/2addr v1, v2

    if-nez v1, :cond_3

    invoke-virtual {p2}, Lcom/vrem/wifianalyzer/c/c/j;->f()Lcom/vrem/wifianalyzer/c/c/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/c/c/k;->i()I

    move-result v1

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/c/c/j;->f()Lcom/vrem/wifianalyzer/c/c/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vrem/wifianalyzer/c/c/k;->i()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, -0x5

    if-gt v1, v2, :cond_2

    const/4 v2, 0x5

    if-ge v1, v2, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/16 v4, 0x10

    const/4 v3, 0x2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private c(Lcom/vrem/wifianalyzer/c/a/c;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/c/j;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/c/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/c/c/j;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/c/j;->f()Lcom/vrem/wifianalyzer/c/c/k;

    move-result-object v3

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/c/a/c;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/vrem/wifianalyzer/c/c/k;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private c(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/c/j;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/c/j;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/vrem/wifianalyzer/c/c/j;->a:Lcom/vrem/wifianalyzer/c/c/j;

    new-instance v1, Lcom/vrem/wifianalyzer/c/c/b$a;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/vrem/wifianalyzer/c/c/b$a;-><init>(Lcom/vrem/wifianalyzer/c/c/b$1;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/c/c/j;

    invoke-direct {p0, v0, v1}, Lcom/vrem/wifianalyzer/c/c/b;->a(Lcom/vrem/wifianalyzer/c/c/j;Lcom/vrem/wifianalyzer/c/c/j;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/vrem/wifianalyzer/c/c/e;->a:Lcom/vrem/wifianalyzer/c/c/e;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/c/e;->a()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v2
.end method


# virtual methods
.method public a(Lcom/vrem/wifianalyzer/c/a/c;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/vrem/wifianalyzer/c/c/b;->c(Lcom/vrem/wifianalyzer/c/a/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/c/j;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/vrem/wifianalyzer/c/c/b;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/vrem/wifianalyzer/c/c/b;->a:Ljava/util/List;

    return-void
.end method

.method public b(Lcom/vrem/wifianalyzer/c/a/c;)Lcom/vrem/wifianalyzer/c/c/f;
    .locals 4

    sget-object v0, Lcom/vrem/wifianalyzer/c/c/f;->a:Lcom/vrem/wifianalyzer/c/c/f;

    invoke-direct {p0, p1}, Lcom/vrem/wifianalyzer/c/c/b;->c(Lcom/vrem/wifianalyzer/c/a/c;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/c/c/j;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/c/j;->g()Lcom/vrem/wifianalyzer/c/c/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vrem/wifianalyzer/c/c/g;->b()Lcom/vrem/wifianalyzer/c/c/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vrem/wifianalyzer/c/c/h;->e()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/vrem/wifianalyzer/c/c/f;->values()[Lcom/vrem/wifianalyzer/c/c/f;

    move-result-object v3

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/c/c/f;->ordinal()I

    move-result v1

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/c/j;->f()Lcom/vrem/wifianalyzer/c/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/c/k;->j()Lcom/vrem/wifianalyzer/c/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/c/f;->ordinal()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aget-object v0, v3, v0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/c/a;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/c/a/c;

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/c/c/b;->b(Lcom/vrem/wifianalyzer/c/a/c;)Lcom/vrem/wifianalyzer/c/c/f;

    move-result-object v3

    sget-object v4, Lcom/vrem/wifianalyzer/c/c/f;->a:Lcom/vrem/wifianalyzer/c/c/f;

    invoke-virtual {v4, v3}, Lcom/vrem/wifianalyzer/c/c/f;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/vrem/wifianalyzer/c/c/f;->b:Lcom/vrem/wifianalyzer/c/c/f;

    invoke-virtual {v4, v3}, Lcom/vrem/wifianalyzer/c/c/f;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    new-instance v3, Lcom/vrem/wifianalyzer/c/c/a;

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/c/c/b;->a(Lcom/vrem/wifianalyzer/c/a/c;)I

    move-result v4

    invoke-direct {v3, v0, v4}, Lcom/vrem/wifianalyzer/c/c/a;-><init>(Lcom/vrem/wifianalyzer/c/a/c;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v1
.end method
