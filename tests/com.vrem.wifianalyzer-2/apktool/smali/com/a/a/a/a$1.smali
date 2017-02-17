.class Lcom/a/a/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/a/a;->a(DD)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field b:Lcom/a/a/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field c:Lcom/a/a/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field d:Z

.field final synthetic e:D

.field final synthetic f:D

.field final synthetic g:Lcom/a/a/a/a;


# direct methods
.method constructor <init>(Lcom/a/a/a/a;DD)V
    .locals 10

    const/4 v2, 0x1

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/a/a/a/a$1;->g:Lcom/a/a/a/a;

    iput-wide p2, p0, Lcom/a/a/a/a$1;->e:D

    iput-wide p4, p0, Lcom/a/a/a/a$1;->f:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/a/a/a/a$1;->g:Lcom/a/a/a/a;

    invoke-static {v0}, Lcom/a/a/a/a;->a(Lcom/a/a/a/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/a$1;->a:Ljava/util/Iterator;

    iput-object v4, p0, Lcom/a/a/a/a$1;->b:Lcom/a/a/a/c;

    iput-object v4, p0, Lcom/a/a/a/a$1;->c:Lcom/a/a/a/c;

    iput-boolean v2, p0, Lcom/a/a/a/a$1;->d:Z

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/a/a/a/a$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/a/a/a/a$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/c;

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/a/a/a/c;->a()D

    move-result-wide v6

    iget-wide v8, p0, Lcom/a/a/a/a$1;->e:D

    cmpl-double v1, v6, v8

    if-ltz v1, :cond_3

    iput-object v0, p0, Lcom/a/a/a/a$1;->b:Lcom/a/a/a/c;

    move v0, v2

    :goto_1
    if-nez v0, :cond_0

    iput-object v4, p0, Lcom/a/a/a/a$1;->b:Lcom/a/a/a/c;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/a$1;->b:Lcom/a/a/a/c;

    move-object v1, v0

    :goto_2
    iget-object v0, p0, Lcom/a/a/a/a$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/a/a$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/c;

    iput-object v0, p0, Lcom/a/a/a/a$1;->b:Lcom/a/a/a/c;

    iget-object v0, p0, Lcom/a/a/a/a$1;->b:Lcom/a/a/a/c;

    invoke-interface {v0}, Lcom/a/a/a/c;->a()D

    move-result-wide v6

    iget-wide v8, p0, Lcom/a/a/a/a$1;->e:D

    cmpl-double v0, v6, v8

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/a/a$1;->b:Lcom/a/a/a/c;

    iput-object v0, p0, Lcom/a/a/a/a$1;->c:Lcom/a/a/a/c;

    iput-object v1, p0, Lcom/a/a/a/a$1;->b:Lcom/a/a/a/c;

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_2

    :cond_4
    move-object v0, v4

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/a/a/a/c;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/a/a/a/a$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/a/a/a/a$1;->b:Lcom/a/a/a/c;

    invoke-interface {v1}, Lcom/a/a/a/c;->a()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/a/a/a/a$1;->f:D

    cmpl-double v0, v2, v4

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/a/a$1;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/a$1;->c:Lcom/a/a/a/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/a/a$1;->c:Lcom/a/a/a/c;

    iput-object v0, p0, Lcom/a/a/a/a$1;->b:Lcom/a/a/a/c;

    iput-object v6, p0, Lcom/a/a/a/a$1;->c:Lcom/a/a/a/c;

    :goto_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/a$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/a/a$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/c;

    iput-object v0, p0, Lcom/a/a/a/a$1;->b:Lcom/a/a/a/c;

    goto :goto_0

    :cond_2
    iput-object v6, p0, Lcom/a/a/a/a$1;->b:Lcom/a/a/a/c;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 4

    iget-object v0, p0, Lcom/a/a/a/a$1;->b:Lcom/a/a/a/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/a/a$1;->b:Lcom/a/a/a/c;

    invoke-interface {v0}, Lcom/a/a/a/c;->a()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/a/a/a/a$1;->f:D

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/a/a/a/a$1;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/a/a$1;->a()Lcom/a/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
