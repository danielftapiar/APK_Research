.class public final Lcom/google/tagmanager/protobuf/UnmodifiableLazyStringList;
.super Ljava/util/AbstractList;
.source "UnmodifiableLazyStringList.java"

# interfaces
.implements Lcom/google/tagmanager/protobuf/LazyStringList;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/tagmanager/protobuf/LazyStringList;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final list:Lcom/google/tagmanager/protobuf/LazyStringList;


# direct methods
.method public constructor <init>(Lcom/google/tagmanager/protobuf/LazyStringList;)V
    .locals 0
    .param p1, "list"    # Lcom/google/tagmanager/protobuf/LazyStringList;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/tagmanager/protobuf/UnmodifiableLazyStringList;->list:Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/google/tagmanager/protobuf/UnmodifiableLazyStringList;)Lcom/google/tagmanager/protobuf/LazyStringList;
    .locals 1
    .param p0, "x0"    # Lcom/google/tagmanager/protobuf/UnmodifiableLazyStringList;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/UnmodifiableLazyStringList;->list:Lcom/google/tagmanager/protobuf/LazyStringList;

    return-object v0
.end method


# virtual methods
.method public final add(Lcom/google/tagmanager/protobuf/ByteString;)V
    .locals 1
    .param p1, "element"    # Lcom/google/tagmanager/protobuf/ByteString;

    .prologue
    .line 45
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/UnmodifiableLazyStringList;->list:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/tagmanager/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getUnderlyingElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/UnmodifiableLazyStringList;->list:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/LazyStringList;->getUnderlyingElements()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lcom/google/tagmanager/protobuf/UnmodifiableLazyStringList$2;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/protobuf/UnmodifiableLazyStringList$2;-><init>(Lcom/google/tagmanager/protobuf/UnmodifiableLazyStringList;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Lcom/google/tagmanager/protobuf/UnmodifiableLazyStringList$1;

    invoke-direct {v0, p0, p1}, Lcom/google/tagmanager/protobuf/UnmodifiableLazyStringList$1;-><init>(Lcom/google/tagmanager/protobuf/UnmodifiableLazyStringList;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/UnmodifiableLazyStringList;->list:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method
