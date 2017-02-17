.class public Lde/viktorreiser/toolbox/os/SynchronizedWeakPool;
.super Lde/viktorreiser/toolbox/os/SynchronizedGeneralPool;
.source "SynchronizedWeakPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lde/viktorreiser/toolbox/os/SynchronizedGeneralPool",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    .local p0, "this":Lde/viktorreiser/toolbox/os/SynchronizedWeakPool;, "Lde/viktorreiser/toolbox/os/SynchronizedWeakPool<TT;>;"
    invoke-direct {p0}, Lde/viktorreiser/toolbox/os/SynchronizedGeneralPool;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lde/viktorreiser/toolbox/os/SynchronizedGeneralPool;->clear()V

    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1}, Lde/viktorreiser/toolbox/os/SynchronizedGeneralPool;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getReference(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/ref/Reference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/ref/ReferenceQueue",
            "<TT;>;)",
            "Ljava/lang/ref/Reference",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lde/viktorreiser/toolbox/os/SynchronizedWeakPool;, "Lde/viktorreiser/toolbox/os/SynchronizedWeakPool<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-object v0
.end method

.method public bridge synthetic put(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lde/viktorreiser/toolbox/os/SynchronizedGeneralPool;->put(ILjava/lang/Object;)V

    return-void
.end method
