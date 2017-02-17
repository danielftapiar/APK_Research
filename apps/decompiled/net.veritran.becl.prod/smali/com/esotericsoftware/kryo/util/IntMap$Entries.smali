.class public Lcom/esotericsoftware/kryo/util/IntMap$Entries;
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
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/esotericsoftware/kryo/util/IntMap$MapIterator",
        "<TV;>;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/esotericsoftware/kryo/util/IntMap$Entry",
        "<TV;>;>;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/esotericsoftware/kryo/util/IntMap$Entry",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field private entry:Lcom/esotericsoftware/kryo/util/IntMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/util/IntMap$Entry",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/util/IntMap;)V
    .locals 1
    .param p1, "map"    # Lcom/esotericsoftware/kryo/util/IntMap;

    .prologue
    .line 659
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap$Entries;, "Lcom/esotericsoftware/kryo/util/IntMap$Entries<TV;>;"
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;-><init>(Lcom/esotericsoftware/kryo/util/IntMap;)V

    .line 656
    new-instance v0, Lcom/esotericsoftware/kryo/util/IntMap$Entry;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/IntMap$Entry;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/util/IntMap$Entries;->entry:Lcom/esotericsoftware/kryo/util/IntMap$Entry;

    .line 660
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 679
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap$Entries;, "Lcom/esotericsoftware/kryo/util/IntMap$Entries<TV;>;"
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/IntMap$Entries;->hasNext:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/esotericsoftware/kryo/util/IntMap$Entry",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 683
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap$Entries;, "Lcom/esotericsoftware/kryo/util/IntMap$Entries<TV;>;"
    return-object p0
.end method

.method public next()Lcom/esotericsoftware/kryo/util/IntMap$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/esotericsoftware/kryo/util/IntMap$Entry",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 664
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap$Entries;, "Lcom/esotericsoftware/kryo/util/IntMap$Entries<TV;>;"
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/util/IntMap$Entries;->hasNext:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 665
    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntMap$Entries;->map:Lcom/esotericsoftware/kryo/util/IntMap;

    iget-object v0, v1, Lcom/esotericsoftware/kryo/util/IntMap;->keyTable:[I

    .line 666
    .local v0, "keyTable":[I
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntMap$Entries;->nextIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 667
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntMap$Entries;->entry:Lcom/esotericsoftware/kryo/util/IntMap$Entry;

    const/4 v2, 0x0

    iput v2, v1, Lcom/esotericsoftware/kryo/util/IntMap$Entry;->key:I

    .line 668
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntMap$Entries;->entry:Lcom/esotericsoftware/kryo/util/IntMap$Entry;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/IntMap$Entries;->map:Lcom/esotericsoftware/kryo/util/IntMap;

    iget-object v2, v2, Lcom/esotericsoftware/kryo/util/IntMap;->zeroValue:Ljava/lang/Object;

    iput-object v2, v1, Lcom/esotericsoftware/kryo/util/IntMap$Entry;->value:Ljava/lang/Object;

    .line 673
    :goto_0
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntMap$Entries;->nextIndex:I

    iput v1, p0, Lcom/esotericsoftware/kryo/util/IntMap$Entries;->currentIndex:I

    .line 674
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/IntMap$Entries;->findNextIndex()V

    .line 675
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntMap$Entries;->entry:Lcom/esotericsoftware/kryo/util/IntMap$Entry;

    return-object v1

    .line 670
    :cond_1
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntMap$Entries;->entry:Lcom/esotericsoftware/kryo/util/IntMap$Entry;

    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntMap$Entries;->nextIndex:I

    aget v2, v0, v2

    iput v2, v1, Lcom/esotericsoftware/kryo/util/IntMap$Entry;->key:I

    .line 671
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntMap$Entries;->entry:Lcom/esotericsoftware/kryo/util/IntMap$Entry;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/IntMap$Entries;->map:Lcom/esotericsoftware/kryo/util/IntMap;

    iget-object v2, v2, Lcom/esotericsoftware/kryo/util/IntMap;->valueTable:[Ljava/lang/Object;

    iget v3, p0, Lcom/esotericsoftware/kryo/util/IntMap$Entries;->nextIndex:I

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/esotericsoftware/kryo/util/IntMap$Entry;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 655
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap$Entries;, "Lcom/esotericsoftware/kryo/util/IntMap$Entries<TV;>;"
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/IntMap$Entries;->next()Lcom/esotericsoftware/kryo/util/IntMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .prologue
    .line 655
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap$Entries;, "Lcom/esotericsoftware/kryo/util/IntMap$Entries<TV;>;"
    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .prologue
    .line 655
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IntMap$Entries;, "Lcom/esotericsoftware/kryo/util/IntMap$Entries<TV;>;"
    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/IntMap$MapIterator;->reset()V

    return-void
.end method
