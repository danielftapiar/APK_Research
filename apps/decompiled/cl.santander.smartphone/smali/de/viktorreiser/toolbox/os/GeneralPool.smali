.class abstract Lde/viktorreiser/toolbox/os/GeneralPool;
.super Ljava/lang/Object;
.source "GeneralPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CLEAN_REQUEST_COUNT:I = 0x64


# instance fields
.field private mObjectPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/Reference",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private mQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mReferencePool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/ref/Reference",
            "<TT;>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReqeustCount:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lde/viktorreiser/toolbox/os/GeneralPool;, "Lde/viktorreiser/toolbox/os/GeneralPool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lde/viktorreiser/toolbox/os/GeneralPool;->mReqeustCount:I

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/viktorreiser/toolbox/os/GeneralPool;->mObjectPool:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/viktorreiser/toolbox/os/GeneralPool;->mReferencePool:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lde/viktorreiser/toolbox/os/GeneralPool;->mQueue:Ljava/lang/ref/ReferenceQueue;

    .line 32
    return-void
.end method

.method private clean()V
    .locals 3

    .prologue
    .line 150
    .local p0, "this":Lde/viktorreiser/toolbox/os/GeneralPool;, "Lde/viktorreiser/toolbox/os/GeneralPool<TT;>;"
    iget v1, p0, Lde/viktorreiser/toolbox/os/GeneralPool;->mReqeustCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lde/viktorreiser/toolbox/os/GeneralPool;->mReqeustCount:I

    .line 152
    iget v1, p0, Lde/viktorreiser/toolbox/os/GeneralPool;->mReqeustCount:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 153
    const/4 v0, 0x0

    .line 155
    .local v0, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :goto_0
    iget-object v1, p0, Lde/viktorreiser/toolbox/os/GeneralPool;->mQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_1

    .line 159
    .end local v0    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :cond_0
    return-void

    .line 156
    .restart local v0    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :cond_1
    iget-object v1, p0, Lde/viktorreiser/toolbox/os/GeneralPool;->mObjectPool:Ljava/util/Map;

    iget-object v2, p0, Lde/viktorreiser/toolbox/os/GeneralPool;->mReferencePool:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 138
    .local p0, "this":Lde/viktorreiser/toolbox/os/GeneralPool;, "Lde/viktorreiser/toolbox/os/GeneralPool<TT;>;"
    const/4 v0, 0x0

    iput v0, p0, Lde/viktorreiser/toolbox/os/GeneralPool;->mReqeustCount:I

    .line 139
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lde/viktorreiser/toolbox/os/GeneralPool;->mQueue:Ljava/lang/ref/ReferenceQueue;

    .line 140
    iget-object v0, p0, Lde/viktorreiser/toolbox/os/GeneralPool;->mObjectPool:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 141
    iget-object v0, p0, Lde/viktorreiser/toolbox/os/GeneralPool;->mReferencePool:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 142
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lde/viktorreiser/toolbox/os/GeneralPool;, "Lde/viktorreiser/toolbox/os/GeneralPool<TT;>;"
    invoke-direct {p0}, Lde/viktorreiser/toolbox/os/GeneralPool;->clean()V

    .line 122
    iget-object v1, p0, Lde/viktorreiser/toolbox/os/GeneralPool;->mObjectPool:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 124
    .local v0, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    if-nez v0, :cond_0

    .line 125
    const/4 v1, 0x0

    .line 128
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method protected abstract getReference(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/ref/ReferenceQueue",
            "<TT;>;)",
            "Ljava/lang/ref/Reference",
            "<TT;>;"
        }
    .end annotation
.end method

.method public put(ILjava/lang/Object;)V
    .locals 4
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lde/viktorreiser/toolbox/os/GeneralPool;, "Lde/viktorreiser/toolbox/os/GeneralPool<TT;>;"
    .local p2, "object":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_0

    .line 106
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-direct {p0}, Lde/viktorreiser/toolbox/os/GeneralPool;->clean()V

    .line 97
    iget-object v2, p0, Lde/viktorreiser/toolbox/os/GeneralPool;->mQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, p2, v2}, Lde/viktorreiser/toolbox/os/GeneralPool;->getReference(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/ref/Reference;

    move-result-object v0

    .line 98
    .local v0, "cached":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    iget-object v2, p0, Lde/viktorreiser/toolbox/os/GeneralPool;->mObjectPool:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/Reference;

    .line 100
    .local v1, "oldCache":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    if-eqz v1, :cond_1

    .line 101
    iget-object v2, p0, Lde/viktorreiser/toolbox/os/GeneralPool;->mReferencePool:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_1
    iget-object v2, p0, Lde/viktorreiser/toolbox/os/GeneralPool;->mObjectPool:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v2, p0, Lde/viktorreiser/toolbox/os/GeneralPool;->mReferencePool:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
