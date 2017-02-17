.class public abstract Lcom/a/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/a/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lcom/a/a/a/c;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/a/f",
        "<TE;>;"
    }
.end annotation


# instance fields
.field protected a:Lcom/a/a/a/e;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/graphics/PointF;",
            "TE;>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:I

.field private f:D

.field private g:D

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/a;->c:Ljava/util/Map;

    const v0, -0xff8834

    iput v0, p0, Lcom/a/a/a/a;->e:I

    iput-wide v2, p0, Lcom/a/a/a/a;->f:D

    iput-wide v2, p0, Lcom/a/a/a/a;->g:D

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/a;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>([Lcom/a/a/a/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/a;->c:Ljava/util/Map;

    const v0, -0xff8834

    iput v0, p0, Lcom/a/a/a/a;->e:I

    iput-wide v2, p0, Lcom/a/a/a/a;->f:D

    iput-wide v2, p0, Lcom/a/a/a/a;->g:D

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/a;->h:Ljava/util/List;

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/a/a/a/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()D
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/c;

    invoke-interface {v0}, Lcom/a/a/a/c;->a()D

    move-result-wide v0

    goto :goto_0
.end method

.method public a(DD)Ljava/util/Iterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/a/a/a/a;->a()D

    move-result-wide v0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/a/a;->b()D

    move-result-wide v0

    cmpl-double v0, p3, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/a/a/a/a$1;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/a/a/a/a$1;-><init>(Lcom/a/a/a/a;DD)V

    goto :goto_0
.end method

.method public a(FF)V
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/a;->a:Lcom/a/a/a/e;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/a/a/a/a;->b(FF)Lcom/a/a/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/a/a/a/a;->a:Lcom/a/a/a/e;

    invoke-interface {v1, p0, v0}, Lcom/a/a/a/e;->a(Lcom/a/a/a/f;Lcom/a/a/a/c;)V

    :cond_0
    return-void
.end method

.method protected a(FFLcom/a/a/a/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFTE;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/a/a;->a:Lcom/a/a/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/a;->c:Ljava/util/Map;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/a/a/a/a;->e:I

    return-void
.end method

.method protected a(Lcom/a/a/a/c;)V
    .locals 8

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/a/a/a/c;->a()D

    move-result-wide v2

    iget-object v0, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/c;

    invoke-interface {v0}, Lcom/a/a/a/c;->a()D

    move-result-wide v0

    cmpg-double v0, v2, v0

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "new x-value must be greater then the last value. x-values has to be ordered in ASC."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/c;

    invoke-interface {v0}, Lcom/a/a/a/c;->a()D

    move-result-wide v2

    :goto_0
    iget-object v0, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/c;

    invoke-interface {v0}, Lcom/a/a/a/c;->a()D

    move-result-wide v4

    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/c;

    invoke-interface {v0}, Lcom/a/a/a/c;->a()D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The order of the values is not correct. X-Values have to be ordered ASC. First the lowest x value and at least the highest x value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/c;

    invoke-interface {v0}, Lcom/a/a/a/c;->a()D

    move-result-wide v2

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method public a(Lcom/a/a/a/c;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZI)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/a/a/a/a;->a(Lcom/a/a/a/c;ZIZ)V

    return-void
.end method

.method public a(Lcom/a/a/a/c;ZIZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZIZ)V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/a/a/a/a;->a(Lcom/a/a/a/c;)V

    iget-object v0, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/a/a/a/c;->a()D

    move-result-wide v4

    iget-object v0, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/c;

    invoke-interface {v0}, Lcom/a/a/a/c;->a()D

    move-result-wide v6

    cmpg-double v0, v4, v6

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "new x-value must be greater then the last value. x-values has to be ordered in ASC."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v3, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p3, :cond_3

    iget-object v0, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {p1}, Lcom/a/a/a/c;->b()D

    move-result-wide v4

    iget-wide v6, p0, Lcom/a/a/a/a;->g:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v6, p0, Lcom/a/a/a/a;->g:D

    cmpl-double v0, v4, v6

    if-lez v0, :cond_1

    iput-wide v4, p0, Lcom/a/a/a/a;->g:D

    :cond_1
    iget-wide v6, p0, Lcom/a/a/a/a;->f:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v6, p0, Lcom/a/a/a/a;->f:D

    cmpg-double v0, v4, v6

    if-gez v0, :cond_2

    iput-wide v4, p0, Lcom/a/a/a/a;->f:D

    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p4, :cond_6

    iget-object v0, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v1, :cond_4

    :goto_1
    iget-object v0, p0, Lcom/a/a/a/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b;

    if-eqz p2, :cond_5

    invoke-virtual {v0}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/h;->f()V

    goto :goto_2

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v1, p2}, Lcom/a/a/b;->a(ZZ)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method public a(Lcom/a/a/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/a/a;->a:Lcom/a/a/a/e;

    return-void
.end method

.method public a(Lcom/a/a/b;)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/a;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/a/a;->d:Ljava/lang/String;

    return-void
.end method

.method public a([Lcom/a/a/a/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    iget-object v4, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/a/a/a/a;->a(Lcom/a/a/a/c;)V

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    iput-wide v2, p0, Lcom/a/a/a/a;->f:D

    iput-wide v2, p0, Lcom/a/a/a/a;->g:D

    iget-object v0, p0, Lcom/a/a/a/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/a/a/b;->a(ZZ)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public b()D
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/c;

    invoke-interface {v0}, Lcom/a/a/a/c;->a()D

    move-result-wide v0

    goto :goto_0
.end method

.method protected b(FF)Lcom/a/a/a/c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)TE;"
        }
    .end annotation

    const/4 v4, 0x0

    const/high16 v3, 0x7fc00000    # NaNf

    iget-object v0, p0, Lcom/a/a/a/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v4

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v6, v1, Landroid/graphics/PointF;->x:F

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float v7, v6, p1

    sub-float/2addr v6, p1

    mul-float/2addr v6, v7

    sub-float v7, v1, p2

    sub-float/2addr v1, p2

    mul-float/2addr v1, v7

    add-float/2addr v1, v6

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    if-eqz v2, :cond_0

    cmpg-float v6, v1, v3

    if-gez v6, :cond_3

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/c;

    :goto_1
    move-object v2, v0

    move v3, v1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const/high16 v0, 0x42f00000    # 120.0f

    cmpg-float v0, v3, v0

    if-gez v0, :cond_2

    :goto_2
    return-object v2

    :cond_2
    move-object v2, v4

    goto :goto_2

    :cond_3
    move-object v0, v2

    move v1, v3

    goto :goto_1
.end method

.method public c()D
    .locals 6

    iget-object v0, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    iget-wide v0, p0, Lcom/a/a/a/a;->f:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v2, p0, Lcom/a/a/a/a;->f:D

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/c;

    invoke-interface {v0}, Lcom/a/a/a/c;->b()D

    move-result-wide v2

    const/4 v0, 0x1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/c;

    invoke-interface {v0}, Lcom/a/a/a/c;->b()D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-lez v0, :cond_2

    move-wide v2, v4

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iput-wide v2, p0, Lcom/a/a/a/a;->f:D

    goto :goto_0
.end method

.method public d()D
    .locals 6

    iget-object v0, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    iget-wide v0, p0, Lcom/a/a/a/a;->g:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v2, p0, Lcom/a/a/a/a;->g:D

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/c;

    invoke-interface {v0}, Lcom/a/a/a/c;->b()D

    move-result-wide v2

    const/4 v0, 0x1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/c;

    invoke-interface {v0}, Lcom/a/a/a/c;->b()D

    move-result-wide v4

    cmpg-double v0, v2, v4

    if-gez v0, :cond_2

    move-wide v2, v4

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iput-wide v2, p0, Lcom/a/a/a/a;->g:D

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/a/a/a/a;->e:I

    return v0
.end method

.method protected g()V
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method
