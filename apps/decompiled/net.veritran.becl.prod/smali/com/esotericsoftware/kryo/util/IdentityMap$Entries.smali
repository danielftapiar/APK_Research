.class public Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;
.super Lcom/esotericsoftware/kryo/util/IdentityMap$MapIterator;
.source "IdentityMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/util/IdentityMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/esotericsoftware/kryo/util/IdentityMap$MapIterator",
        "<TK;TV;>;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/esotericsoftware/kryo/util/IdentityMap$Entry",
        "<TK;TV;>;>;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/esotericsoftware/kryo/util/IdentityMap$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private entry:Lcom/esotericsoftware/kryo/util/IdentityMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/util/IdentityMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/util/IdentityMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/IdentityMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 605
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;, "Lcom/esotericsoftware/kryo/util/IdentityMap$Entries<TK;TV;>;"
    .local p1, "map":Lcom/esotericsoftware/kryo/util/IdentityMap;, "Lcom/esotericsoftware/kryo/util/IdentityMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/util/IdentityMap$MapIterator;-><init>(Lcom/esotericsoftware/kryo/util/IdentityMap;)V

    .line 602
    new-instance v0, Lcom/esotericsoftware/kryo/util/IdentityMap$Entry;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/IdentityMap$Entry;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;->entry:Lcom/esotericsoftware/kryo/util/IdentityMap$Entry;

    .line 606
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 620
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;, "Lcom/esotericsoftware/kryo/util/IdentityMap$Entries<TK;TV;>;"
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;->hasNext:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/esotericsoftware/kryo/util/IdentityMap$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 624
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;, "Lcom/esotericsoftware/kryo/util/IdentityMap$Entries<TK;TV;>;"
    return-object p0
.end method

.method public next()Lcom/esotericsoftware/kryo/util/IdentityMap$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/esotericsoftware/kryo/util/IdentityMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 610
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;, "Lcom/esotericsoftware/kryo/util/IdentityMap$Entries<TK;TV;>;"
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;->hasNext:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 611
    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;->map:Lcom/esotericsoftware/kryo/util/IdentityMap;

    iget-object v0, v1, Lcom/esotericsoftware/kryo/util/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 612
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;->entry:Lcom/esotericsoftware/kryo/util/IdentityMap$Entry;

    iget v2, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;->nextIndex:I

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/esotericsoftware/kryo/util/IdentityMap$Entry;->key:Ljava/lang/Object;

    .line 613
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;->entry:Lcom/esotericsoftware/kryo/util/IdentityMap$Entry;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;->map:Lcom/esotericsoftware/kryo/util/IdentityMap;

    iget-object v2, v2, Lcom/esotericsoftware/kryo/util/IdentityMap;->valueTable:[Ljava/lang/Object;

    iget v3, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;->nextIndex:I

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/esotericsoftware/kryo/util/IdentityMap$Entry;->value:Ljava/lang/Object;

    .line 614
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;->nextIndex:I

    iput v1, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;->currentIndex:I

    .line 615
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;->findNextIndex()V

    .line 616
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;->entry:Lcom/esotericsoftware/kryo/util/IdentityMap$Entry;

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 601
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;, "Lcom/esotericsoftware/kryo/util/IdentityMap$Entries<TK;TV;>;"
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;->next()Lcom/esotericsoftware/kryo/util/IdentityMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .prologue
    .line 601
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;, "Lcom/esotericsoftware/kryo/util/IdentityMap$Entries<TK;TV;>;"
    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/IdentityMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .prologue
    .line 601
    .local p0, "this":Lcom/esotericsoftware/kryo/util/IdentityMap$Entries;, "Lcom/esotericsoftware/kryo/util/IdentityMap$Entries<TK;TV;>;"
    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/IdentityMap$MapIterator;->reset()V

    return-void
.end method
