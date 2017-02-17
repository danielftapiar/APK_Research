.class public Lcom/esotericsoftware/kryo/util/IntArray;
.super Ljava/lang/Object;
.source "IntArray.java"


# instance fields
.field public items:[I

.field public ordered:Z

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/util/IntArray;-><init>(ZI)V

    .line 17
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 21
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/esotericsoftware/kryo/util/IntArray;-><init>(ZI)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/util/IntArray;)V
    .locals 4
    .param p1, "array"    # Lcom/esotericsoftware/kryo/util/IntArray;

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iget-boolean v0, p1, Lcom/esotericsoftware/kryo/util/IntArray;->ordered:Z

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->ordered:Z

    .line 37
    iget v0, p1, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    iput v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    .line 38
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 39
    iget-object v0, p1, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "ordered"    # Z
    .param p2, "capacity"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->ordered:Z

    .line 29
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 30
    return-void
.end method

.method public constructor <init>(Z[I)V
    .locals 3
    .param p1, "ordered"    # Z
    .param p2, "array"    # [I

    .prologue
    const/4 v2, 0x0

    .line 53
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/util/IntArray;-><init>(ZI)V

    .line 54
    array-length v0, p2

    iput v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    .line 55
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    return-void
.end method

.method public constructor <init>([I)V
    .locals 1
    .param p1, "array"    # [I

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/esotericsoftware/kryo/util/IntArray;-><init>(Z[I)V

    .line 46
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 60
    .local v0, "items":[I
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v1, 0x8

    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/util/IntArray;->resize(I)[I

    move-result-object v0

    .line 61
    :cond_0
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    aput p1, v0, v1

    .line 62
    return-void
.end method

.method public addAll(Lcom/esotericsoftware/kryo/util/IntArray;)V
    .locals 2
    .param p1, "array"    # Lcom/esotericsoftware/kryo/util/IntArray;

    .prologue
    .line 65
    const/4 v0, 0x0

    iget v1, p1, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/util/IntArray;->addAll(Lcom/esotericsoftware/kryo/util/IntArray;II)V

    .line 66
    return-void
.end method

.method public addAll(Lcom/esotericsoftware/kryo/util/IntArray;II)V
    .locals 3
    .param p1, "array"    # Lcom/esotericsoftware/kryo/util/IntArray;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 69
    add-int v0, p2, p3

    iget v1, p1, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-le v0, v1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset + length must be <= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    iget-object v0, p1, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    invoke-virtual {p0, v0, p2, p3}, Lcom/esotericsoftware/kryo/util/IntArray;->addAll([III)V

    .line 72
    return-void
.end method

.method public addAll([I)V
    .locals 2
    .param p1, "array"    # [I

    .prologue
    .line 75
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/util/IntArray;->addAll([III)V

    .line 76
    return-void
.end method

.method public addAll([III)V
    .locals 5
    .param p1, "array"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 80
    .local v0, "items":[I
    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    add-int/2addr v2, p3

    sub-int v1, v2, p2

    .line 81
    .local v1, "sizeNeeded":I
    array-length v2, v0

    if-lt v1, v2, :cond_0

    const/16 v2, 0x8

    int-to-float v3, v1

    const/high16 v4, 0x3fe00000    # 1.75f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/util/IntArray;->resize(I)[I

    move-result-object v0

    .line 82
    :cond_0
    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    .line 84
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    .line 167
    return-void
.end method

.method public contains(I)Z
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 117
    iget v3, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    add-int/lit8 v0, v3, -0x1

    .line 118
    .local v0, "i":I
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .local v2, "items":[I
    move v1, v0

    .line 119
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 120
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget v3, v2, v1

    if-ne v3, p1, :cond_1

    const/4 v3, 0x1

    .line 121
    :goto_1
    return v3

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_0
    const/4 v3, 0x0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    :cond_1
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public ensureCapacity(I)[I
    .locals 2
    .param p1, "additionalCapacity"    # I

    .prologue
    .line 179
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    add-int v0, v1, p1

    .line 180
    .local v0, "sizeNeeded":I
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/util/IntArray;->resize(I)[I

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    return-object v1
.end method

.method public get(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 87
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    aget v0, v0, p1

    return v0
.end method

.method public indexOf(I)I
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 125
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 126
    .local v1, "items":[I
    const/4 v0, 0x0

    .local v0, "i":I
    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 127
    aget v3, v1, v0

    if-ne v3, p1, :cond_0

    .line 128
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 126
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public insert(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 98
    .local v0, "items":[I
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v1, 0x8

    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/util/IntArray;->resize(I)[I

    move-result-object v0

    .line 99
    :cond_0
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->ordered:Z

    if-eqz v1, :cond_1

    .line 100
    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    :goto_0
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    .line 104
    aput p2, v0, p1

    .line 105
    return-void

    .line 102
    :cond_1
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    aget v2, v0, p1

    aput v2, v0, v1

    goto :goto_0
.end method

.method public peek()I
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public pop()I
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    aget v0, v0, v1

    return v0
.end method

.method public removeIndex(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 144
    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-lt p1, v2, :cond_0

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 146
    .local v0, "items":[I
    aget v1, v0, p1

    .line 147
    .local v1, "value":I
    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    .line 148
    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->ordered:Z

    if-eqz v2, :cond_1

    .line 149
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    :goto_0
    return v1

    .line 151
    :cond_1
    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    aget v2, v0, v2

    aput v2, v0, p1

    goto :goto_0
.end method

.method public removeValue(I)Z
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 132
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 133
    .local v1, "items":[I
    const/4 v0, 0x0

    .local v0, "i":I
    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 134
    aget v3, v1, v0

    if-ne v3, p1, :cond_0

    .line 135
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/util/IntArray;->removeIndex(I)I

    .line 136
    const/4 v3, 0x1

    .line 139
    :goto_1
    return v3

    .line 133
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected resize(I)[I
    .locals 5
    .param p1, "newSize"    # I

    .prologue
    const/4 v4, 0x0

    .line 185
    new-array v1, p1, [I

    .line 186
    .local v1, "newItems":[I
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 187
    .local v0, "items":[I
    array-length v2, v0

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    iput-object v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 189
    return-object v1
.end method

.method public reverse()V
    .locals 7

    .prologue
    .line 197
    const/4 v0, 0x0

    .local v0, "i":I
    iget v5, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    add-int/lit8 v2, v5, -0x1

    .local v2, "lastIndex":I
    iget v5, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    div-int/lit8 v3, v5, 0x2

    .local v3, "n":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 198
    sub-int v1, v2, v0

    .line 199
    .local v1, "ii":I
    iget-object v5, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    aget v4, v5, v0

    .line 200
    .local v4, "temp":I
    iget-object v5, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    iget-object v6, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    aget v6, v6, v1

    aput v6, v5, v0

    .line 201
    iget-object v5, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    aput v4, v5, v1

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    .end local v1    # "ii":I
    .end local v4    # "temp":I
    :cond_0
    return-void
.end method

.method public set(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 92
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    aput p2, v0, p1

    .line 94
    return-void
.end method

.method public shrink()V
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/util/IntArray;->resize(I)[I

    .line 173
    return-void
.end method

.method public sort()V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([III)V

    .line 194
    return-void
.end method

.method public swap(II)V
    .locals 4
    .param p1, "first"    # I
    .param p2, "second"    # I

    .prologue
    .line 108
    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-lt p1, v2, :cond_0

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    :cond_0
    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-lt p2, v2, :cond_1

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 111
    .local v1, "items":[I
    aget v0, v1, p1

    .line 112
    .local v0, "firstValue":I
    aget v2, v1, p2

    aput v2, v1, p1

    .line 113
    aput v0, v1, p2

    .line 114
    return-void
.end method

.method public toArray()[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 212
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    new-array v0, v1, [I

    .line 213
    .local v0, "array":[I
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 218
    iget v3, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-nez v3, :cond_0

    const-string v3, "[]"

    .line 228
    :goto_0
    return-object v3

    .line 219
    :cond_0
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 220
    .local v2, "items":[I
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 221
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    const/4 v3, 0x0

    aget v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-ge v1, v3, :cond_1

    .line 224
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    aget v3, v2, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 227
    :cond_1
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 232
    iget v3, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-nez v3, :cond_0

    const-string v3, ""

    .line 240
    :goto_0
    return-object v3

    .line 233
    :cond_0
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 234
    .local v2, "items":[I
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 235
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    aget v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-ge v1, v3, :cond_1

    .line 237
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    aget v3, v2, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 240
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public truncate(I)V
    .locals 1
    .param p1, "newSize"    # I

    .prologue
    .line 208
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-le v0, p1, :cond_0

    iput p1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    .line 209
    :cond_0
    return-void
.end method
