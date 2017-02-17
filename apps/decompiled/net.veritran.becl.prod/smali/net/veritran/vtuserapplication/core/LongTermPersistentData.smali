.class public abstract Lnet/veritran/vtuserapplication/core/LongTermPersistentData;
.super Lnet/veritran/vtuserapplication/core/StorageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/core/StorageManager;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCachedData()V
    .locals 4

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/LongTermPersistentData;->_storageElement:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/core/elements/StorageElement;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/StorageElement;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/core/LongTermPersistentData;->isLongTermPersistent(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/veritran/vtuserapplication/core/LongTermPersistentData;->_storageElement:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected isLongTermPersistent(I)Z
    .locals 1

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/core/LongTermPersistentData;->longTermPersistentFromRange()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/core/LongTermPersistentData;->longTermPersistentToRange()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract longTermPersistentFromRange()I
.end method

.method protected abstract longTermPersistentToRange()I
.end method
