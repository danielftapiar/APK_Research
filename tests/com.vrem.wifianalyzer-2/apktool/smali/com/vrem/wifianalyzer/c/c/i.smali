.class public Lcom/vrem/wifianalyzer/c/c/i;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/vrem/wifianalyzer/c/c/i;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/c/j;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/vrem/wifianalyzer/c/c/h;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vrem/wifianalyzer/c/c/i;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/vrem/wifianalyzer/c/c/h;->a:Lcom/vrem/wifianalyzer/c/c/h;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/vrem/wifianalyzer/c/c/i;-><init>(Ljava/util/List;Lcom/vrem/wifianalyzer/c/c/h;Ljava/util/List;)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/c/i;->a:Lcom/vrem/wifianalyzer/c/c/i;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/vrem/wifianalyzer/c/c/h;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/c/j;",
            ">;",
            "Lcom/vrem/wifianalyzer/c/c/h;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/c/i;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/vrem/wifianalyzer/c/c/i;->c:Lcom/vrem/wifianalyzer/c/c/h;

    iput-object p3, p0, Lcom/vrem/wifianalyzer/c/c/i;->d:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/vrem/wifianalyzer/c/a/b;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vrem/wifianalyzer/c/a/b;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/c/j;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/c/i;->a()Lcom/vrem/wifianalyzer/c/c/j;

    move-result-object v2

    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->b()Lcom/vrem/wifianalyzer/b/a/g;

    move-result-object v3

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/c/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/c/c/j;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/c/j;->f()Lcom/vrem/wifianalyzer/c/c/k;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vrem/wifianalyzer/c/c/k;->e()Lcom/vrem/wifianalyzer/c/a/b;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/vrem/wifianalyzer/c/a/b;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v2}, Lcom/vrem/wifianalyzer/c/c/j;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/c/j;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/vrem/wifianalyzer/b/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/vrem/wifianalyzer/c/c/i;->d:Ljava/util/List;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/c/j;->b()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    new-instance v7, Lcom/vrem/wifianalyzer/c/c/g;

    invoke-direct {v7, v5, v6}, Lcom/vrem/wifianalyzer/c/c/g;-><init>(Ljava/lang/String;Z)V

    new-instance v5, Lcom/vrem/wifianalyzer/c/c/j;

    invoke-direct {v5, v0, v7}, Lcom/vrem/wifianalyzer/c/c/j;-><init>(Lcom/vrem/wifianalyzer/c/c/j;Lcom/vrem/wifianalyzer/c/c/g;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public a()Lcom/vrem/wifianalyzer/c/c/j;
    .locals 6

    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->b()Lcom/vrem/wifianalyzer/b/a/g;

    move-result-object v1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/c/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/c/c/j;

    new-instance v3, Lcom/vrem/wifianalyzer/c/c/h;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/c/j;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/c/j;->d()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/vrem/wifianalyzer/c/c/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vrem/wifianalyzer/c/c/i;->c:Lcom/vrem/wifianalyzer/c/c/h;

    invoke-virtual {v4, v3}, Lcom/vrem/wifianalyzer/c/c/h;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/c/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vrem/wifianalyzer/b/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/vrem/wifianalyzer/c/c/g;

    iget-object v3, p0, Lcom/vrem/wifianalyzer/c/c/i;->c:Lcom/vrem/wifianalyzer/c/c/h;

    invoke-direct {v2, v1, v3}, Lcom/vrem/wifianalyzer/c/c/g;-><init>(Ljava/lang/String;Lcom/vrem/wifianalyzer/c/c/h;)V

    new-instance v1, Lcom/vrem/wifianalyzer/c/c/j;

    invoke-direct {v1, v0, v2}, Lcom/vrem/wifianalyzer/c/c/j;-><init>(Lcom/vrem/wifianalyzer/c/c/j;Lcom/vrem/wifianalyzer/c/c/g;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/vrem/wifianalyzer/c/c/j;->a:Lcom/vrem/wifianalyzer/c/c/j;

    goto :goto_0
.end method

.method public a(Lcom/vrem/wifianalyzer/c/a/b;Lcom/vrem/wifianalyzer/c/c/e;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vrem/wifianalyzer/c/a/b;",
            "Lcom/vrem/wifianalyzer/c/c/e;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/c/j;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/vrem/wifianalyzer/c/c/c;->a:Lcom/vrem/wifianalyzer/c/c/c;

    invoke-virtual {p0, p1, p2, v0}, Lcom/vrem/wifianalyzer/c/c/i;->a(Lcom/vrem/wifianalyzer/c/a/b;Lcom/vrem/wifianalyzer/c/c/e;Lcom/vrem/wifianalyzer/c/c/c;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/vrem/wifianalyzer/c/a/b;Lcom/vrem/wifianalyzer/c/c/e;Lcom/vrem/wifianalyzer/c/c/c;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vrem/wifianalyzer/c/a/b;",
            "Lcom/vrem/wifianalyzer/c/c/e;",
            "Lcom/vrem/wifianalyzer/c/c/c;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/c/j;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/vrem/wifianalyzer/c/c/i;->a(Lcom/vrem/wifianalyzer/c/a/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/vrem/wifianalyzer/c/c/c;->a:Lcom/vrem/wifianalyzer/c/c/c;

    invoke-virtual {v1, p3}, Lcom/vrem/wifianalyzer/c/c/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p2, p3}, Lcom/vrem/wifianalyzer/c/c/i;->a(Ljava/util/List;Lcom/vrem/wifianalyzer/c/c/e;Lcom/vrem/wifianalyzer/c/c/c;)Ljava/util/List;

    move-result-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/vrem/wifianalyzer/c/c/e;->a()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/util/List;Lcom/vrem/wifianalyzer/c/c/e;Lcom/vrem/wifianalyzer/c/c/c;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/c/j;",
            ">;",
            "Lcom/vrem/wifianalyzer/c/c/e;",
            "Lcom/vrem/wifianalyzer/c/c/c;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/c/j;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3}, Lcom/vrem/wifianalyzer/c/c/c;->a()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/c/c/j;

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Lcom/vrem/wifianalyzer/c/c/c;->b()Ljava/util/Comparator;

    move-result-object v4

    invoke-interface {v4, v1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/c/c/j;->h()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Lcom/vrem/wifianalyzer/c/c/e;->a()Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Lcom/vrem/wifianalyzer/c/c/j;->a(Lcom/vrem/wifianalyzer/c/c/j;)V

    move-object v0, v1

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/c/c/j;->h()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/vrem/wifianalyzer/c/c/e;->a()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_4
    invoke-virtual {p2}, Lcom/vrem/wifianalyzer/c/c/e;->a()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v2
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/c/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/c/i;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
