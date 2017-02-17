.class public Lcom/mwr/jdiesel/reflection/ObjectStore;
.super Ljava/lang/Object;
.source "ObjectStore.java"


# instance fields
.field private objects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mwr/jdiesel/reflection/ObjectStore;->objects:Landroid/util/SparseArray;

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/mwr/jdiesel/reflection/ObjectStore;->objects:Landroid/util/SparseArray;

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 16
    return-void

    .line 14
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 15
    .local v0, "obj":Ljava/lang/Object;
    iget-object v2, p0, Lcom/mwr/jdiesel/reflection/ObjectStore;->objects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/mwr/jdiesel/reflection/ObjectStore;->objects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 20
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "ref"    # I

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mwr/jdiesel/reflection/ObjectStore;->objects:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;)I
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 28
    :try_start_0
    iget-object v3, p0, Lcom/mwr/jdiesel/reflection/ObjectStore;->objects:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v3, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 31
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    array-length v6, v3

    move v5, v4

    :goto_0
    if-lt v5, v6, :cond_1

    .line 35
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 38
    :goto_1
    return v3

    .line 31
    :cond_1
    aget-object v2, v3, v5

    .line 32
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lcom/mwr/jdiesel/reflection/ObjectStore;->put(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 37
    .end local v2    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/ClassCastException;
    move v3, v4

    .line 38
    goto :goto_1
.end method

.method public remove(I)V
    .locals 1
    .param p1, "ref"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mwr/jdiesel/reflection/ObjectStore;->objects:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 44
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mwr/jdiesel/reflection/ObjectStore;->objects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method
