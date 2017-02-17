.class public Lcom/vrem/wifianalyzer/c/b/c/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vrem/wifianalyzer/c/b/c/g$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/b;

.field private b:Lcom/vrem/wifianalyzer/c/b/c/h;

.field private c:Lcom/vrem/wifianalyzer/c/b/c/c;

.field private d:Lcom/vrem/wifianalyzer/c/b/c/d;


# direct methods
.method public constructor <init>(Lcom/a/a/b;Lcom/vrem/wifianalyzer/c/b/c/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/b/c/g;->a:Lcom/a/a/b;

    iput-object p2, p0, Lcom/vrem/wifianalyzer/c/b/c/g;->d:Lcom/vrem/wifianalyzer/c/b/c/d;

    new-instance v0, Lcom/vrem/wifianalyzer/c/b/c/h;

    invoke-direct {v0}, Lcom/vrem/wifianalyzer/c/b/c/h;-><init>()V

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/c/b/c/g;->a(Lcom/vrem/wifianalyzer/c/b/c/h;)V

    new-instance v0, Lcom/vrem/wifianalyzer/c/b/c/c;

    invoke-direct {v0}, Lcom/vrem/wifianalyzer/c/b/c/c;-><init>()V

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/c/b/c/g;->a(Lcom/vrem/wifianalyzer/c/b/c/c;)V

    return-void
.end method

.method static synthetic a(Lcom/vrem/wifianalyzer/c/b/c/g;)Lcom/vrem/wifianalyzer/c/b/c/h;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/c/g;->b:Lcom/vrem/wifianalyzer/c/b/c/h;

    return-object v0
.end method

.method private a(Lcom/vrem/wifianalyzer/c/c/j;Lcom/a/a/a/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vrem/wifianalyzer/c/c/j;",
            "Lcom/a/a/a/a",
            "<",
            "Lcom/a/a/a/b;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/vrem/wifianalyzer/c/b/c/g;->a(Lcom/a/a/a/a;)V

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/c/c/j;->f()Lcom/vrem/wifianalyzer/c/c/k;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/c/c/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/c/k;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/a/a/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/vrem/wifianalyzer/c/b/c/g$a;

    invoke-direct {v0, p0}, Lcom/vrem/wifianalyzer/c/b/c/g$a;-><init>(Lcom/vrem/wifianalyzer/c/b/c/g;)V

    invoke-virtual {p2, v0}, Lcom/a/a/a/a;->a(Lcom/a/a/a/e;)V

    return-void
.end method

.method private a(ZLcom/a/a/a/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/a/a/a/a",
            "<",
            "Lcom/a/a/a/b;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0xa

    const/4 v1, 0x5

    instance-of v2, p2, Lcom/a/a/a/d;

    if-eqz v2, :cond_2

    check-cast p2, Lcom/a/a/a/d;

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {p2, v0}, Lcom/a/a/a/d;->b(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v2, p2, Lcom/a/a/a/g;

    if-eqz v2, :cond_0

    check-cast p2, Lcom/a/a/a/g;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {p2, v0}, Lcom/a/a/a/g;->c(I)V

    invoke-virtual {p2, p1}, Lcom/a/a/a/g;->a(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private a(Lcom/a/a/a/a;Lcom/a/a/a/a;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/a/a",
            "<",
            "Lcom/a/a/a/b;",
            ">;",
            "Lcom/a/a/a/a",
            "<",
            "Lcom/a/a/a/b;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private b(Lcom/vrem/wifianalyzer/c/b/c/d;)V
    .locals 2

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/c/g;->d:Lcom/vrem/wifianalyzer/c/b/c/d;

    invoke-virtual {v0, p1}, Lcom/vrem/wifianalyzer/c/b/c/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/c/g;->a:Lcom/a/a/b;

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/b/c/g;->c()Lcom/a/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/b;->setLegendRenderer(Lcom/a/a/e;)V

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/b/c/g;->d:Lcom/vrem/wifianalyzer/c/b/c/d;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/c/g;->a:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/a/a/h;->d(D)V

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/b/c/g;->b()I

    move-result v1

    int-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/a/a/h;->c(D)V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/c/g;->a:Lcom/a/a/b;

    invoke-virtual {v0, p1}, Lcom/a/a/b;->setVisibility(I)V

    return-void
.end method

.method public a(II)V
    .locals 4

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/c/g;->a:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v0

    int-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/a/a/h;->d(D)V

    int-to-double v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/a/a/h;->c(D)V

    return-void
.end method

.method public a(Lcom/a/a/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/c/g;->a:Lcom/a/a/b;

    invoke-virtual {v0, p1}, Lcom/a/a/b;->a(Lcom/a/a/a/f;)V

    return-void
.end method

.method a(Lcom/vrem/wifianalyzer/c/b/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/b/c/g;->c:Lcom/vrem/wifianalyzer/c/b/c/c;

    return-void
.end method

.method public a(Lcom/vrem/wifianalyzer/c/b/c/d;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/vrem/wifianalyzer/c/b/c/g;->b(Lcom/vrem/wifianalyzer/c/b/c/d;)V

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/c/g;->a:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getLegendRenderer()Lcom/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/e;->a()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/a/a/e;->a(I)V

    invoke-virtual {v0}, Lcom/a/a/e;->b()F

    move-result v1

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/a/a/e;->a(F)V

    invoke-virtual {p1, v0}, Lcom/vrem/wifianalyzer/c/b/c/d;->a(Lcom/a/a/e;)V

    return-void
.end method

.method a(Lcom/vrem/wifianalyzer/c/b/c/h;)V
    .locals 0

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/b/c/g;->b:Lcom/vrem/wifianalyzer/c/b/c/h;

    return-void
.end method

.method public a(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/vrem/wifianalyzer/c/c/j;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/c/g;->b:Lcom/vrem/wifianalyzer/c/b/c/h;

    invoke-virtual {v0, p1}, Lcom/vrem/wifianalyzer/c/b/c/h;->a(Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f;

    iget-object v2, p0, Lcom/vrem/wifianalyzer/c/b/c/g;->c:Lcom/vrem/wifianalyzer/c/b/c/c;

    invoke-interface {v0}, Lcom/a/a/a/f;->f()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/vrem/wifianalyzer/c/b/c/c;->a(J)V

    iget-object v2, p0, Lcom/vrem/wifianalyzer/c/b/c/g;->a:Lcom/a/a/b;

    invoke-virtual {v2, v0}, Lcom/a/a/b;->b(Lcom/a/a/a/f;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/vrem/wifianalyzer/c/c/j;Lcom/a/a/a/a;Lcom/a/a/a/b;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vrem/wifianalyzer/c/c/j;",
            "Lcom/a/a/a/a",
            "<",
            "Lcom/a/a/a/b;",
            ">;",
            "Lcom/a/a/a/b;",
            "I)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/c/g;->b:Lcom/vrem/wifianalyzer/c/b/c/h;

    invoke-virtual {v0, p1, p2}, Lcom/vrem/wifianalyzer/c/b/c/h;->a(Lcom/vrem/wifianalyzer/c/c/j;Lcom/a/a/a/a;)Lcom/a/a/a/a;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vrem/wifianalyzer/c/b/c/g;->a(Lcom/a/a/a/a;Lcom/a/a/a/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/vrem/wifianalyzer/c/b/c/g;->a(Lcom/vrem/wifianalyzer/c/c/j;Lcom/a/a/a/a;)V

    :goto_0
    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/c/c/j;->g()Lcom/vrem/wifianalyzer/c/c/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vrem/wifianalyzer/c/c/g;->b()Lcom/vrem/wifianalyzer/c/c/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vrem/wifianalyzer/c/c/h;->e()Z

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/vrem/wifianalyzer/c/b/c/g;->a(ZLcom/a/a/a/a;)V

    return v1

    :cond_0
    const/4 v2, 0x1

    add-int/lit8 v3, p4, 0x1

    invoke-virtual {v0, p3, v2, v3}, Lcom/a/a/a/a;->a(Lcom/a/a/a/c;ZI)V

    goto :goto_0
.end method

.method public a(Lcom/vrem/wifianalyzer/c/c/j;Lcom/a/a/a/a;[Lcom/a/a/a/b;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vrem/wifianalyzer/c/c/j;",
            "Lcom/a/a/a/a",
            "<",
            "Lcom/a/a/a/b;",
            ">;[",
            "Lcom/a/a/a/b;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/c/g;->b:Lcom/vrem/wifianalyzer/c/b/c/h;

    invoke-virtual {v0, p1, p2}, Lcom/vrem/wifianalyzer/c/b/c/h;->a(Lcom/vrem/wifianalyzer/c/c/j;Lcom/a/a/a/a;)Lcom/a/a/a/a;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/vrem/wifianalyzer/c/b/c/g;->a(Lcom/a/a/a/a;Lcom/a/a/a/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/vrem/wifianalyzer/c/b/c/g;->a(Lcom/vrem/wifianalyzer/c/c/j;Lcom/a/a/a/a;)V

    :goto_0
    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/c/c/j;->g()Lcom/vrem/wifianalyzer/c/c/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vrem/wifianalyzer/c/c/g;->b()Lcom/vrem/wifianalyzer/c/c/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vrem/wifianalyzer/c/c/h;->e()Z

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/vrem/wifianalyzer/c/b/c/g;->a(ZLcom/a/a/a/a;)V

    return v1

    :cond_0
    invoke-virtual {v0, p3}, Lcom/a/a/a/a;->a([Lcom/a/a/a/c;)V

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/c/g;->a:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getGridLabelRenderer()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->y()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method c()Lcom/a/a/e;
    .locals 2

    new-instance v0, Lcom/a/a/e;

    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/b/c/g;->a:Lcom/a/a/b;

    invoke-direct {v0, v1}, Lcom/a/a/e;-><init>(Lcom/a/a/b;)V

    return-object v0
.end method

.method public d()Lcom/vrem/wifianalyzer/c/b/c/b;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/c/g;->c:Lcom/vrem/wifianalyzer/c/b/c/c;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/b/c/c;->a()Lcom/vrem/wifianalyzer/c/b/c/b;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/a/a/b;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/c/g;->a:Lcom/a/a/b;

    return-object v0
.end method
