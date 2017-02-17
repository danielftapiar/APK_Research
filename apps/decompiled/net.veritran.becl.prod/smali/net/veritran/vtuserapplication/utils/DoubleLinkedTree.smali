.class public Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lnet/veritran/vtuserapplication/utils/Link;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/veritran/vtuserapplication/utils/Link",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->a:Lnet/veritran/vtuserapplication/utils/Link;

    return-void
.end method

.method private a(Ljava/lang/Object;Lnet/veritran/vtuserapplication/utils/Link;)Lnet/veritran/vtuserapplication/utils/Link;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lnet/veritran/vtuserapplication/utils/Link",
            "<TT;>;)",
            "Lnet/veritran/vtuserapplication/utils/Link",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lnet/veritran/vtuserapplication/utils/Link;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p2}, Lnet/veritran/vtuserapplication/utils/Link;->getSons()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p2}, Lnet/veritran/vtuserapplication/utils/Link;->getSons()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/utils/Link;

    invoke-direct {p0, p1, v0}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->a(Ljava/lang/Object;Lnet/veritran/vtuserapplication/utils/Link;)Lnet/veritran/vtuserapplication/utils/Link;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p2, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;Lnet/veritran/vtuserapplication/utils/Link;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Lnet/veritran/vtuserapplication/utils/Link",
            "<TT;>;)Z"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p3}, Lnet/veritran/vtuserapplication/utils/Link;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lnet/veritran/vtuserapplication/utils/Link;

    invoke-direct {v0, p1}, Lnet/veritran/vtuserapplication/utils/Link;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lnet/veritran/vtuserapplication/utils/Link;->getSons()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p3}, Lnet/veritran/vtuserapplication/utils/Link;->setPrevious(Lnet/veritran/vtuserapplication/utils/Link;)V

    move v2, v3

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p3}, Lnet/veritran/vtuserapplication/utils/Link;->getSons()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p3}, Lnet/veritran/vtuserapplication/utils/Link;->getSons()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/utils/Link;

    invoke-direct {p0, p1, p2, v0}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->a(Ljava/lang/Object;Ljava/lang/Object;Lnet/veritran/vtuserapplication/utils/Link;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->a:Lnet/veritran/vtuserapplication/utils/Link;

    invoke-direct {p0, p1, p2, v0}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->a(Ljava/lang/Object;Ljava/lang/Object;Lnet/veritran/vtuserapplication/utils/Link;)Z

    move-result v0

    return v0
.end method

.method public getFirst()Lnet/veritran/vtuserapplication/utils/Link;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/veritran/vtuserapplication/utils/Link",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->a:Lnet/veritran/vtuserapplication/utils/Link;

    return-object v0
.end method

.method public getLink(Ljava/lang/Object;)Lnet/veritran/vtuserapplication/utils/Link;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lnet/veritran/vtuserapplication/utils/Link",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->a:Lnet/veritran/vtuserapplication/utils/Link;

    invoke-direct {p0, p1, v0}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->a(Ljava/lang/Object;Lnet/veritran/vtuserapplication/utils/Link;)Lnet/veritran/vtuserapplication/utils/Link;

    move-result-object v0

    return-object v0
.end method

.method public insertParent(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    new-instance v0, Lnet/veritran/vtuserapplication/utils/Link;

    invoke-direct {v0, p1}, Lnet/veritran/vtuserapplication/utils/Link;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->a:Lnet/veritran/vtuserapplication/utils/Link;

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/utils/Link;->setPrevious(Lnet/veritran/vtuserapplication/utils/Link;)V

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/Link;->getSons()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->a:Lnet/veritran/vtuserapplication/utils/Link;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iput-object v0, p0, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->a:Lnet/veritran/vtuserapplication/utils/Link;

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->a:Lnet/veritran/vtuserapplication/utils/Link;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
