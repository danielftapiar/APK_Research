.class final Lcom/google/tagmanager/protobuf/RopeByteString;
.super Lcom/google/tagmanager/protobuf/ByteString;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;,
        Lcom/google/tagmanager/protobuf/RopeByteString$RopeByteIterator;,
        Lcom/google/tagmanager/protobuf/RopeByteString$PieceIterator;,
        Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;
    }
.end annotation


# static fields
.field private static final minLengthByDepth:[I


# instance fields
.field private hash:I

.field private final left:Lcom/google/tagmanager/protobuf/ByteString;

.field private final leftLength:I

.field private final right:Lcom/google/tagmanager/protobuf/ByteString;

.field private final totalLength:I

.field private final treeDepth:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 61
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v3, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    .line 66
    .local v0, "f1":I
    const/4 v1, 0x1

    .line 69
    .local v1, "f2":I
    :goto_0
    if-lez v1, :cond_0

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    add-int v4, v0, v1

    .line 72
    .local v4, "temp":I
    move v0, v1

    .line 73
    move v1, v4

    .line 74
    goto :goto_0

    .line 78
    .end local v4    # "temp":I
    :cond_0
    const v5, 0x7fffffff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    sput-object v5, Lcom/google/tagmanager/protobuf/RopeByteString;->minLengthByDepth:[I

    .line 80
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v5, Lcom/google/tagmanager/protobuf/RopeByteString;->minLengthByDepth:[I

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 82
    sget-object v6, Lcom/google/tagmanager/protobuf/RopeByteString;->minLengthByDepth:[I

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v6, v2

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 84
    :cond_1
    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;)V
    .locals 2
    .param p1, "left"    # Lcom/google/tagmanager/protobuf/ByteString;
    .param p2, "right"    # Lcom/google/tagmanager/protobuf/ByteString;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/ByteString;-><init>()V

    .line 515
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->hash:I

    .line 102
    iput-object p1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->left:Lcom/google/tagmanager/protobuf/ByteString;

    .line 103
    iput-object p2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    .line 104
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v0

    iput v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    .line 105
    iget v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    invoke-virtual {p2}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->totalLength:I

    .line 106
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/ByteString;->getTreeDepth()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/tagmanager/protobuf/ByteString;->getTreeDepth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->treeDepth:I

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;B)V
    .locals 0
    .param p1, "x0"    # Lcom/google/tagmanager/protobuf/ByteString;
    .param p2, "x1"    # Lcom/google/tagmanager/protobuf/ByteString;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/tagmanager/protobuf/RopeByteString;-><init>(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$300()[I
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/tagmanager/protobuf/RopeByteString;->minLengthByDepth:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/tagmanager/protobuf/RopeByteString;)Lcom/google/tagmanager/protobuf/ByteString;
    .locals 1
    .param p0, "x0"    # Lcom/google/tagmanager/protobuf/RopeByteString;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->left:Lcom/google/tagmanager/protobuf/ByteString;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/tagmanager/protobuf/RopeByteString;)Lcom/google/tagmanager/protobuf/ByteString;
    .locals 1
    .param p0, "x0"    # Lcom/google/tagmanager/protobuf/RopeByteString;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    return-object v0
.end method

.method static concatenate(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/ByteString;
    .locals 8
    .param p0, "left"    # Lcom/google/tagmanager/protobuf/ByteString;
    .param p1, "right"    # Lcom/google/tagmanager/protobuf/ByteString;

    .prologue
    const/16 v7, 0x80

    .line 125
    instance-of v5, p0, Lcom/google/tagmanager/protobuf/RopeByteString;

    if-eqz v5, :cond_0

    move-object v5, p0

    check-cast v5, Lcom/google/tagmanager/protobuf/RopeByteString;

    move-object v0, v5

    .line 127
    .local v0, "leftRope":Lcom/google/tagmanager/protobuf/RopeByteString;
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 128
    move-object v4, p0

    .line 173
    .local v4, "result":Lcom/google/tagmanager/protobuf/ByteString;
    :goto_1
    return-object v4

    .line 125
    .end local v0    # "leftRope":Lcom/google/tagmanager/protobuf/RopeByteString;
    .end local v4    # "result":Lcom/google/tagmanager/protobuf/ByteString;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 129
    .restart local v0    # "leftRope":Lcom/google/tagmanager/protobuf/RopeByteString;
    :cond_1
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 130
    move-object v4, p1

    .restart local v4    # "result":Lcom/google/tagmanager/protobuf/ByteString;
    goto :goto_1

    .line 132
    .end local v4    # "result":Lcom/google/tagmanager/protobuf/ByteString;
    :cond_2
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v5

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v6

    add-int v2, v5, v6

    .line 133
    .local v2, "newLength":I
    if-ge v2, v7, :cond_3

    .line 136
    invoke-static {p0, p1}, Lcom/google/tagmanager/protobuf/RopeByteString;->concatenateBytes(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/LiteralByteString;

    move-result-object v4

    .restart local v4    # "result":Lcom/google/tagmanager/protobuf/ByteString;
    goto :goto_1

    .line 137
    .end local v4    # "result":Lcom/google/tagmanager/protobuf/ByteString;
    :cond_3
    if-eqz v0, :cond_4

    iget-object v5, v0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v5}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v5

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v5, v7, :cond_4

    .line 149
    iget-object v5, v0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-static {v5, p1}, Lcom/google/tagmanager/protobuf/RopeByteString;->concatenateBytes(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/LiteralByteString;

    move-result-object v3

    .line 150
    .local v3, "newRight":Lcom/google/tagmanager/protobuf/ByteString;
    new-instance v4, Lcom/google/tagmanager/protobuf/RopeByteString;

    iget-object v5, v0, Lcom/google/tagmanager/protobuf/RopeByteString;->left:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-direct {v4, v5, v3}, Lcom/google/tagmanager/protobuf/RopeByteString;-><init>(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;)V

    .line 151
    .restart local v4    # "result":Lcom/google/tagmanager/protobuf/ByteString;
    goto :goto_1

    .end local v3    # "newRight":Lcom/google/tagmanager/protobuf/ByteString;
    .end local v4    # "result":Lcom/google/tagmanager/protobuf/ByteString;
    :cond_4
    if-eqz v0, :cond_5

    iget-object v5, v0, Lcom/google/tagmanager/protobuf/RopeByteString;->left:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v5}, Lcom/google/tagmanager/protobuf/ByteString;->getTreeDepth()I

    move-result v5

    iget-object v6, v0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v6}, Lcom/google/tagmanager/protobuf/ByteString;->getTreeDepth()I

    move-result v6

    if-le v5, v6, :cond_5

    iget v5, v0, Lcom/google/tagmanager/protobuf/RopeByteString;->treeDepth:I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/ByteString;->getTreeDepth()I

    move-result v6

    if-le v5, v6, :cond_5

    .line 159
    new-instance v3, Lcom/google/tagmanager/protobuf/RopeByteString;

    iget-object v5, v0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-direct {v3, v5, p1}, Lcom/google/tagmanager/protobuf/RopeByteString;-><init>(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;)V

    .line 160
    .restart local v3    # "newRight":Lcom/google/tagmanager/protobuf/ByteString;
    new-instance v4, Lcom/google/tagmanager/protobuf/RopeByteString;

    iget-object v5, v0, Lcom/google/tagmanager/protobuf/RopeByteString;->left:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-direct {v4, v5, v3}, Lcom/google/tagmanager/protobuf/RopeByteString;-><init>(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;)V

    .line 161
    .restart local v4    # "result":Lcom/google/tagmanager/protobuf/ByteString;
    goto :goto_1

    .line 164
    .end local v3    # "newRight":Lcom/google/tagmanager/protobuf/ByteString;
    .end local v4    # "result":Lcom/google/tagmanager/protobuf/ByteString;
    :cond_5
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/ByteString;->getTreeDepth()I

    move-result v5

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/ByteString;->getTreeDepth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v1, v5, 0x1

    .line 165
    .local v1, "newDepth":I
    sget-object v5, Lcom/google/tagmanager/protobuf/RopeByteString;->minLengthByDepth:[I

    aget v5, v5, v1

    if-lt v2, v5, :cond_6

    .line 167
    new-instance v4, Lcom/google/tagmanager/protobuf/RopeByteString;

    invoke-direct {v4, p0, p1}, Lcom/google/tagmanager/protobuf/RopeByteString;-><init>(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;)V

    .restart local v4    # "result":Lcom/google/tagmanager/protobuf/ByteString;
    goto :goto_1

    .line 169
    .end local v4    # "result":Lcom/google/tagmanager/protobuf/ByteString;
    :cond_6
    new-instance v5, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;-><init>(B)V

    invoke-static {v5, p0, p1}, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->access$100(Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v4

    .restart local v4    # "result":Lcom/google/tagmanager/protobuf/ByteString;
    goto/16 :goto_1
.end method

.method private static concatenateBytes(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/LiteralByteString;
    .locals 5
    .param p0, "left"    # Lcom/google/tagmanager/protobuf/ByteString;
    .param p1, "right"    # Lcom/google/tagmanager/protobuf/ByteString;

    .prologue
    const/4 v4, 0x0

    .line 186
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v1

    .line 187
    .local v1, "leftSize":I
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v2

    .line 188
    .local v2, "rightSize":I
    add-int v3, v1, v2

    new-array v0, v3, [B

    .line 189
    .local v0, "bytes":[B
    invoke-virtual {p0, v0, v4, v4, v1}, Lcom/google/tagmanager/protobuf/ByteString;->copyTo([BIII)V

    .line 190
    invoke-virtual {p1, v0, v4, v1, v2}, Lcom/google/tagmanager/protobuf/ByteString;->copyTo([BIII)V

    .line 191
    new-instance v3, Lcom/google/tagmanager/protobuf/LiteralByteString;

    invoke-direct {v3, v0}, Lcom/google/tagmanager/protobuf/LiteralByteString;-><init>([B)V

    return-object v3
.end method


# virtual methods
.method protected final copyToInternal([BIII)V
    .locals 5
    .param p1, "target"    # [B
    .param p2, "sourceOffset"    # I
    .param p3, "targetOffset"    # I
    .param p4, "numberToCopy"    # I

    .prologue
    .line 332
    add-int v1, p2, p4

    iget v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    if-gt v1, v2, :cond_0

    .line 333
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->left:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/tagmanager/protobuf/ByteString;->copyToInternal([BIII)V

    .line 343
    :goto_0
    return-void

    .line 334
    :cond_0
    iget v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    if-lt p2, v1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    iget v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    sub-int v2, p2, v2

    invoke-virtual {v1, p1, v2, p3, p4}, Lcom/google/tagmanager/protobuf/ByteString;->copyToInternal([BIII)V

    goto :goto_0

    .line 338
    :cond_1
    iget v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    sub-int v0, v1, p2

    .line 339
    .local v0, "leftLength":I
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->left:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/google/tagmanager/protobuf/ByteString;->copyToInternal([BIII)V

    .line 340
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    const/4 v2, 0x0

    add-int v3, p3, v0

    sub-int v4, p4, v0

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/google/tagmanager/protobuf/ByteString;->copyToInternal([BIII)V

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 13
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 425
    if-ne p1, p0, :cond_0

    .line 426
    const/4 v2, 0x1

    .line 452
    :goto_0
    return v2

    .line 428
    :cond_0
    instance-of v2, p1, Lcom/google/tagmanager/protobuf/ByteString;

    if-nez v2, :cond_1

    .line 429
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 432
    check-cast v1, Lcom/google/tagmanager/protobuf/ByteString;

    .line 433
    .local v1, "otherByteString":Lcom/google/tagmanager/protobuf/ByteString;
    iget v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->totalLength:I

    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 434
    const/4 v2, 0x0

    goto :goto_0

    .line 436
    :cond_2
    iget v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->totalLength:I

    if-nez v2, :cond_3

    .line 437
    const/4 v2, 0x1

    goto :goto_0

    .line 445
    :cond_3
    iget v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->hash:I

    if-eqz v2, :cond_4

    .line 446
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/ByteString;->peekCachedHashCode()I

    move-result v0

    .line 447
    .local v0, "cachedOtherHash":I
    if-eqz v0, :cond_4

    iget v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->hash:I

    if-eq v2, v0, :cond_4

    .line 448
    const/4 v2, 0x0

    goto :goto_0

    .line 452
    .end local v0    # "cachedOtherHash":I
    :cond_4
    const/4 v6, 0x0

    new-instance v8, Lcom/google/tagmanager/protobuf/RopeByteString$PieceIterator;

    const/4 v2, 0x0

    invoke-direct {v8, p0, v2}, Lcom/google/tagmanager/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/google/tagmanager/protobuf/ByteString;B)V

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/protobuf/LiteralByteString;

    const/4 v5, 0x0

    new-instance v9, Lcom/google/tagmanager/protobuf/RopeByteString$PieceIterator;

    const/4 v3, 0x0

    invoke-direct {v9, v1, v3}, Lcom/google/tagmanager/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/google/tagmanager/protobuf/ByteString;B)V

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/tagmanager/protobuf/LiteralByteString;

    const/4 v4, 0x0

    move v7, v6

    move-object v6, v2

    move v2, v4

    move-object v4, v3

    :goto_1
    invoke-virtual {v6}, Lcom/google/tagmanager/protobuf/LiteralByteString;->size()I

    move-result v3

    sub-int v10, v3, v7

    invoke-virtual {v4}, Lcom/google/tagmanager/protobuf/LiteralByteString;->size()I

    move-result v3

    sub-int v11, v3, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v12

    if-nez v7, :cond_5

    invoke-virtual {v6, v4, v5, v12}, Lcom/google/tagmanager/protobuf/LiteralByteString;->equalsRange(Lcom/google/tagmanager/protobuf/LiteralByteString;II)Z

    move-result v3

    :goto_2
    if-nez v3, :cond_6

    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {v4, v6, v7, v12}, Lcom/google/tagmanager/protobuf/LiteralByteString;->equalsRange(Lcom/google/tagmanager/protobuf/LiteralByteString;II)Z

    move-result v3

    goto :goto_2

    :cond_6
    add-int v3, v2, v12

    iget v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->totalLength:I

    if-lt v3, v2, :cond_8

    iget v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->totalLength:I

    if-ne v3, v2, :cond_7

    const/4 v2, 0x1

    goto :goto_0

    :cond_7
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    :cond_8
    if-ne v12, v10, :cond_9

    const/4 v7, 0x0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/protobuf/LiteralByteString;

    move-object v6, v2

    :goto_3
    if-ne v12, v11, :cond_a

    const/4 v4, 0x0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/protobuf/LiteralByteString;

    move v5, v4

    move-object v4, v2

    move v2, v3

    goto :goto_1

    :cond_9
    add-int/2addr v7, v12

    goto :goto_3

    :cond_a
    add-int v2, v5, v12

    move v5, v2

    move v2, v3

    goto :goto_1
.end method

.method protected final getTreeDepth()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->treeDepth:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 519
    iget v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->hash:I

    .line 521
    .local v0, "h":I
    if-nez v0, :cond_1

    .line 522
    iget v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->totalLength:I

    .line 523
    const/4 v1, 0x0

    iget v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->totalLength:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/tagmanager/protobuf/RopeByteString;->partialHash(III)I

    move-result v0

    .line 524
    if-nez v0, :cond_0

    .line 525
    const/4 v0, 0x1

    .line 527
    :cond_0
    iput v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->hash:I

    .line 529
    :cond_1
    return v0
.end method

.method protected final isBalanced()Z
    .locals 3

    .prologue
    .line 262
    iget v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->totalLength:I

    sget-object v1, Lcom/google/tagmanager/protobuf/RopeByteString;->minLengthByDepth:[I

    iget v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->treeDepth:I

    aget v1, v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isValidUtf8()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 401
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->left:Lcom/google/tagmanager/protobuf/ByteString;

    iget v3, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    invoke-virtual {v2, v1, v1, v3}, Lcom/google/tagmanager/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v0

    .line 402
    .local v0, "leftPartial":I
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    iget-object v3, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/tagmanager/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v2

    .line 403
    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final iterator()Lcom/google/tagmanager/protobuf/ByteString$ByteIterator;
    .locals 2

    .prologue
    .line 752
    new-instance v0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeByteIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/tagmanager/protobuf/RopeByteString$RopeByteIterator;-><init>(Lcom/google/tagmanager/protobuf/RopeByteString;B)V

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/RopeByteString;->iterator()Lcom/google/tagmanager/protobuf/ByteString$ByteIterator;

    move-result-object v0

    return-object v0
.end method

.method public final newCodedInput()Lcom/google/tagmanager/protobuf/CodedInputStream;
    .locals 1

    .prologue
    .line 556
    new-instance v0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;-><init>(Lcom/google/tagmanager/protobuf/RopeByteString;)V

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/google/tagmanager/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method protected final partialHash(III)I
    .locals 5
    .param p1, "h"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 539
    add-int v2, p2, p3

    .line 540
    iget v3, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    if-gt v2, v3, :cond_0

    .line 541
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->left:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v2, p1, p2, p3}, Lcom/google/tagmanager/protobuf/ByteString;->partialHash(III)I

    move-result v2

    .line 547
    :goto_0
    return v2

    .line 542
    :cond_0
    iget v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    if-lt p2, v2, :cond_1

    .line 543
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    iget v3, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    sub-int v3, p2, v3

    invoke-virtual {v2, p1, v3, p3}, Lcom/google/tagmanager/protobuf/ByteString;->partialHash(III)I

    move-result v2

    goto :goto_0

    .line 545
    :cond_1
    iget v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    sub-int v0, v2, p2

    .line 546
    .local v0, "leftLength":I
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->left:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v2, p1, p2, v0}, Lcom/google/tagmanager/protobuf/ByteString;->partialHash(III)I

    move-result v1

    .line 547
    .local v1, "leftPartial":I
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    const/4 v3, 0x0

    sub-int v4, p3, v0

    invoke-virtual {v2, v1, v3, v4}, Lcom/google/tagmanager/protobuf/ByteString;->partialHash(III)I

    move-result v2

    goto :goto_0
.end method

.method protected final partialIsValidUtf8(III)I
    .locals 5
    .param p1, "state"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 408
    add-int v2, p2, p3

    .line 409
    iget v3, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    if-gt v2, v3, :cond_0

    .line 410
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->left:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v2, p1, p2, p3}, Lcom/google/tagmanager/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v2

    .line 416
    :goto_0
    return v2

    .line 411
    :cond_0
    iget v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    if-lt p2, v2, :cond_1

    .line 412
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    iget v3, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    sub-int v3, p2, v3

    invoke-virtual {v2, p1, v3, p3}, Lcom/google/tagmanager/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v2

    goto :goto_0

    .line 414
    :cond_1
    iget v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    sub-int v0, v2, p2

    .line 415
    .local v0, "leftLength":I
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->left:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v2, p1, p2, v0}, Lcom/google/tagmanager/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v1

    .line 416
    .local v1, "leftPartial":I
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    const/4 v3, 0x0

    sub-int v4, p3, v0

    invoke-virtual {v2, v1, v3, v4}, Lcom/google/tagmanager/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v2

    goto :goto_0
.end method

.method protected final peekCachedHashCode()I
    .locals 1

    .prologue
    .line 534
    iget v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->hash:I

    return v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->totalLength:I

    return v0
.end method

.method public final toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 393
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/RopeByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method final writeToInternal(Ljava/io/OutputStream;II)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "sourceOffset"    # I
    .param p3, "numberToWrite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    add-int v1, p2, p3

    iget v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    if-gt v1, v2, :cond_0

    .line 380
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->left:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/tagmanager/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    .line 388
    :goto_0
    return-void

    .line 381
    :cond_0
    iget v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    if-lt p2, v1, :cond_1

    .line 382
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    iget v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    sub-int v2, p2, v2

    invoke-virtual {v1, p1, v2, p3}, Lcom/google/tagmanager/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    goto :goto_0

    .line 384
    :cond_1
    iget v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    sub-int v0, v1, p2

    .line 385
    .local v0, "numberToWriteInLeft":I
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->left:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/tagmanager/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    .line 386
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    const/4 v2, 0x0

    sub-int v3, p3, v0

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/tagmanager/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    goto :goto_0
.end method
