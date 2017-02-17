.class final Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;
.super Ljava/lang/Object;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/protobuf/RopeByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Balancer"
.end annotation


# instance fields
.field private final prefixesStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/google/tagmanager/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    new-instance v0, Ljava/util/ArrayDeque;

    # getter for: Lcom/google/tagmanager/protobuf/RopeByteString;->minLengthByDepth:[I
    invoke-static {}, Lcom/google/tagmanager/protobuf/RopeByteString;->access$300()[I

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Deque;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 574
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/ByteString;
    .locals 4
    .param p0, "x0"    # Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;
    .param p1, "x1"    # Lcom/google/tagmanager/protobuf/ByteString;
    .param p2, "x2"    # Lcom/google/tagmanager/protobuf/ByteString;

    .prologue
    .line 574
    invoke-direct {p0, p1}, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->doBalance(Lcom/google/tagmanager/protobuf/ByteString;)V

    invoke-direct {p0, p2}, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->doBalance(Lcom/google/tagmanager/protobuf/ByteString;)V

    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    new-instance v2, Lcom/google/tagmanager/protobuf/RopeByteString;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/google/tagmanager/protobuf/RopeByteString;-><init>(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;B)V

    move-object v1, v2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private doBalance(Lcom/google/tagmanager/protobuf/ByteString;)V
    .locals 6
    .param p1, "root"    # Lcom/google/tagmanager/protobuf/ByteString;

    .prologue
    const/4 v5, 0x0

    .line 601
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/ByteString;->isBalanced()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 602
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->getDepthBinForLength(I)I

    move-result v2

    # getter for: Lcom/google/tagmanager/protobuf/RopeByteString;->minLengthByDepth:[I
    invoke-static {}, Lcom/google/tagmanager/protobuf/RopeByteString;->access$300()[I

    move-result-object v1

    add-int/lit8 v3, v2, 0x1

    aget v3, v1, v3

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v1

    if-lt v1, v3, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Deque;

    invoke-interface {v1, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_1
    # getter for: Lcom/google/tagmanager/protobuf/RopeByteString;->minLengthByDepth:[I
    invoke-static {}, Lcom/google/tagmanager/protobuf/RopeByteString;->access$300()[I

    move-result-object v1

    aget v4, v1, v2

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/protobuf/ByteString;

    move-object v2, v1

    :goto_2
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v1

    if-ge v1, v4, :cond_2

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/protobuf/ByteString;

    new-instance v3, Lcom/google/tagmanager/protobuf/RopeByteString;

    invoke-direct {v3, v1, v2, v5}, Lcom/google/tagmanager/protobuf/RopeByteString;-><init>(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;B)V

    move-object v2, v3

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/google/tagmanager/protobuf/RopeByteString;

    invoke-direct {v1, v2, p1, v5}, Lcom/google/tagmanager/protobuf/RopeByteString;-><init>(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;B)V

    move-object v2, v1

    :goto_3
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->getDepthBinForLength(I)I

    move-result v1

    # getter for: Lcom/google/tagmanager/protobuf/RopeByteString;->minLengthByDepth:[I
    invoke-static {}, Lcom/google/tagmanager/protobuf/RopeByteString;->access$300()[I

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    aget v3, v3, v1

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v1

    if-ge v1, v3, :cond_3

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/protobuf/ByteString;

    new-instance v3, Lcom/google/tagmanager/protobuf/RopeByteString;

    invoke-direct {v3, v1, v2, v5}, Lcom/google/tagmanager/protobuf/RopeByteString;-><init>(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;B)V

    move-object v2, v3

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Deque;

    invoke-interface {v1, v2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    goto :goto_1

    .line 603
    :cond_4
    instance-of v1, p1, Lcom/google/tagmanager/protobuf/RopeByteString;

    if-eqz v1, :cond_5

    move-object v0, p1

    .line 604
    check-cast v0, Lcom/google/tagmanager/protobuf/RopeByteString;

    .line 605
    .local v0, "rbs":Lcom/google/tagmanager/protobuf/RopeByteString;
    # getter for: Lcom/google/tagmanager/protobuf/RopeByteString;->left:Lcom/google/tagmanager/protobuf/ByteString;
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/RopeByteString;->access$500(Lcom/google/tagmanager/protobuf/RopeByteString;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->doBalance(Lcom/google/tagmanager/protobuf/ByteString;)V

    .line 606
    # getter for: Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/RopeByteString;->access$600(Lcom/google/tagmanager/protobuf/RopeByteString;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    goto/16 :goto_0

    .line 607
    .end local v0    # "rbs":Lcom/google/tagmanager/protobuf/RopeByteString;
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Has a new type of ByteString been created? Found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getDepthBinForLength(I)I
    .locals 2
    .param p0, "length"    # I

    .prologue
    .line 668
    # getter for: Lcom/google/tagmanager/protobuf/RopeByteString;->minLengthByDepth:[I
    invoke-static {}, Lcom/google/tagmanager/protobuf/RopeByteString;->access$300()[I

    move-result-object v1

    invoke-static {v1, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 669
    .local v0, "depth":I
    if-gez v0, :cond_0

    .line 672
    add-int/lit8 v1, v0, 0x1

    neg-int v1, v1

    .line 673
    add-int/lit8 v0, v1, -0x1

    .line 676
    :cond_0
    return v0
.end method
