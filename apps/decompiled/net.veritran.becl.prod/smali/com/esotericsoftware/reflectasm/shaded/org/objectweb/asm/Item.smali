.class final Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:J

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:I

.field k:Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->a:I

    return-void
.end method

.method constructor <init>(ILcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->a:I

    iget v0, p2, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->b:I

    iput v0, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->b:I

    iget v0, p2, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->c:I

    iput v0, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->c:I

    iget-wide v0, p2, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->d:J

    iput-wide v0, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->d:J

    iget-object v0, p2, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->g:Ljava/lang/String;

    iget-object v0, p2, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->h:Ljava/lang/String;

    iget-object v0, p2, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->i:Ljava/lang/String;

    iget v0, p2, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->j:I

    iput v0, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->j:I

    return-void
.end method


# virtual methods
.method a(D)V
    .locals 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->b:I

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->d:J

    const v0, 0x7fffffff

    iget v1, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->b:I

    double-to-int v2, p1

    add-int/2addr v1, v2

    and-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->j:I

    return-void
.end method

.method a(F)V
    .locals 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->b:I

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->c:I

    const v0, 0x7fffffff

    iget v1, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->b:I

    float-to-int v2, p1

    add-int/2addr v1, v2

    and-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->j:I

    return-void
.end method

.method a(I)V
    .locals 2

    const/4 v0, 0x3

    iput v0, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->b:I

    iput p1, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->c:I

    const v0, 0x7fffffff

    iget v1, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->b:I

    add-int/2addr v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->j:I

    return-void
.end method

.method a(II)V
    .locals 1

    const/16 v0, 0x21

    iput v0, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->b:I

    iput p1, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->c:I

    iput p2, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->j:I

    return-void
.end method

.method a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const v2, 0x7fffffff

    iput p1, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->b:I

    iput-object p2, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->i:Ljava/lang/String;

    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    and-int/2addr v0, v2

    iput v0, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->j:I

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, p1

    and-int/2addr v0, v2

    iput v0, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->j:I

    goto :goto_0

    :sswitch_1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    and-int/2addr v0, v2

    iput v0, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->j:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
        0x1e -> :sswitch_0
    .end sparse-switch
.end method

.method a(J)V
    .locals 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->b:I

    iput-wide p1, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->d:J

    const v0, 0x7fffffff

    iget v1, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->b:I

    long-to-int v2, p1

    add-int/2addr v1, v2

    and-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->j:I

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const/16 v0, 0x12

    iput v0, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->b:I

    int-to-long v0, p3

    iput-wide v0, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->d:J

    iput-object p1, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->h:Ljava/lang/String;

    const v0, 0x7fffffff

    iget-object v1, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v1, p3

    iget-object v2, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->h:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x12

    and-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->j:I

    return-void
.end method

.method a(Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->b:I

    sparse-switch v2, :sswitch_data_0

    iget-object v2, p1, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p1, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    iget-wide v2, p1, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->d:J

    iget-wide v4, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->d:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_2
    iget v2, p1, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->c:I

    iget v3, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->c:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_3
    iget v2, p1, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->c:I

    iget v3, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->c:I

    if-ne v2, v3, :cond_1

    iget-object v2, p1, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    :sswitch_4
    iget-object v2, p1, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :sswitch_5
    iget-wide v2, p1, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->d:J

    iget-wide v4, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/esotericsoftware/reflectasm/shaded/org/objectweb/asm/Item;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0xc -> :sswitch_4
        0x10 -> :sswitch_0
        0x12 -> :sswitch_5
        0x1e -> :sswitch_0
        0x1f -> :sswitch_3
        0x20 -> :sswitch_1
    .end sparse-switch
.end method
