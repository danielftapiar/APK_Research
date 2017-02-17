.class public Lcom/esotericsoftware/kryo/util/IntMap$Values;
.super Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;
.source "IntMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/util/IntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/esotericsoftware/kryo/util/IntMap$MapIterator",
        "<TV;>;",
        "Ljava/lang/Iterable",
        "<TV;>;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/util/IntMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/IntMap",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 689
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap$Values;, "Lcom/esotericsoftware/kryo/util/IntMap$Values<TV;>;"
    .local p1, "map":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<TV;>;"
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;-><init>(Lcom/esotericsoftware/kryo/util/IntMap;)V

    .line 690
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 693
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap$Values;, "Lcom/esotericsoftware/kryo/util/IntMap$Values<TV;>;"
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/IntMap$Values;->hasNext:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 709
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap$Values;, "Lcom/esotericsoftware/kryo/util/IntMap$Values<TV;>;"
    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 697
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap$Values;, "Lcom/esotericsoftware/kryo/util/IntMap$Values<TV;>;"
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/util/IntMap$Values;->hasNext:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 699
    :cond_0
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntMap$Values;->nextIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 700
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntMap$Values;->map:Lcom/esotericsoftware/kryo/util/IntMap;

    iget-object v0, v1, Lcom/esotericsoftware/kryo/util/IntMap;->zeroValue:Ljava/lang/Object;

    .line 703
    .local v0, "value":Ljava/lang/Object;, "TV;"
    :goto_0
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntMap$Values;->nextIndex:I

    iput v1, p0, Lcom/esotericsoftware/kryo/util/IntMap$Values;->currentIndex:I

    .line 704
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/IntMap$Values;->findNextIndex()V

    .line 705
    return-object v0

    .line 702
    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    :cond_1
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntMap$Values;->map:Lcom/esotericsoftware/kryo/util/IntMap;

    iget-object v1, v1, Lcom/esotericsoftware/kryo/util/IntMap;->valueTable:[Ljava/lang/Object;

    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntMap$Values;->nextIndex:I

    aget-object v0, v1, v2

    .restart local v0    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .prologue
    .line 687
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap$Values;, "Lcom/esotericsoftware/kryo/util/IntMap$Values<TV;>;"
    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .prologue
    .line 687
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap$Values;, "Lcom/esotericsoftware/kryo/util/IntMap$Values<TV;>;"
    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;->reset()V

    return-void
.end method

.method public toArray()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 714
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap$Values;, "Lcom/esotericsoftware/kryo/util/IntMap$Values<TV;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntMap$Values;->map:Lcom/esotericsoftware/kryo/util/IntMap;

    iget v1, v1, Lcom/esotericsoftware/kryo/util/IntMap;->size:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 715
    .local v0, "array":Ljava/util/ArrayList;
    :goto_0
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/util/IntMap$Values;->hasNext:Z

    if-eqz v1, :cond_0

    .line 716
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/IntMap$Values;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 717
    :cond_0
    return-object v0
.end method
