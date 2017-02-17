.class public final Lcom/nostra13/universalimageloader/core/assist/deque/LIFOLinkedBlockingDeque;
.super Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;
.source "LIFOLinkedBlockingDeque.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LIFOLinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LIFOLinkedBlockingDeque<TT;>;"
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;-><init>()V

    return-void
.end method


# virtual methods
.method public final offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LIFOLinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LIFOLinkedBlockingDeque<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    invoke-super {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LIFOLinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LIFOLinkedBlockingDeque<TT;>;"
    invoke-super {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
