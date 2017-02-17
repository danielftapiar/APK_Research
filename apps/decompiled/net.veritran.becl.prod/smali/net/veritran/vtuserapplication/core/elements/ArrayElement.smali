.class public Lnet/veritran/vtuserapplication/core/elements/ArrayElement;
.super Lnet/veritran/vtuserapplication/core/elements/SerializableElement;


# instance fields
.field private a:I

.field private b:I

.field private c:[I

.field private d:Ljava/util/Vector;

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:I


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/core/elements/SerializableElement;-><init>()V

    iput v1, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->e:I

    iput v1, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->f:I

    const/4 v0, -0x1

    iput v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->g:I

    iput-boolean v1, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->h:Z

    iput v1, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->i:I

    return-void
.end method

.method public constructor <init>(III[I)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/core/elements/SerializableElement;-><init>()V

    iput v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->e:I

    iput v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->f:I

    const/4 v1, -0x1

    iput v1, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->g:I

    iput-boolean v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->h:Z

    iput v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->i:I

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->setId(I)V

    invoke-virtual {p0, p2}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->setRows(I)V

    invoke-virtual {p0, p3}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->setCols(I)V

    invoke-direct {p0, p2, p3}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->a(II)V

    new-array v1, p3, [I

    iput-object v1, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->c:[I

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->c:[I

    aget v2, p4, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(II)V
    .locals 5

    const/4 v2, 0x0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, p1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->d:Ljava/util/Vector;

    move v3, v2

    :goto_0
    if-le p1, v3, :cond_1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->d:Ljava/util/Vector;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v1, v2

    :goto_1
    if-le p2, v1, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->d:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(IILjava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0, p3, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(II)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/String;)Lnet/veritran/vtuserapplication/core/elements/ArrayElement;
    .locals 13

    const/16 v11, 0x2d

    const/4 v10, 0x3

    const/4 v4, 0x0

    new-instance v8, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    invoke-direct {v8}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;-><init>()V

    move v7, v4

    move v1, v4

    move v2, v4

    :goto_0
    const/4 v0, 0x5

    if-ge v7, v0, :cond_2

    invoke-virtual {p0, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    packed-switch v7, :pswitch_data_0

    move v0, v1

    move v1, v2

    move-object v2, v3

    :goto_1
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    move-object p0, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v8, v0}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->setId(I)V

    move v0, v1

    move v1, v2

    move-object v2, v3

    goto :goto_1

    :pswitch_1
    invoke-virtual {v8, v0}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->setCols(I)V

    move-object v2, v3

    move v12, v0

    move v0, v1

    move v1, v12

    goto :goto_1

    :pswitch_2
    invoke-virtual {v8, v0}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->setRows(I)V

    move v1, v2

    move-object v2, v3

    goto :goto_1

    :pswitch_3
    invoke-virtual {v8, v0}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->setRowSelected(I)V

    move v0, v1

    move v1, v2

    move-object v2, v3

    goto :goto_1

    :pswitch_4
    invoke-direct {v8, v1, v2}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->a(II)V

    new-array v5, v2, [I

    iput-object v5, v8, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->c:[I

    move v6, v4

    move v12, v0

    move-object v0, v3

    move v3, v12

    :goto_2
    if-ge v6, v2, :cond_3

    iget-object v5, v8, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->c:[I

    aput v3, v5, v6

    move v3, v4

    :goto_3
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v3, v6, v9}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->a(IILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object v0, v5

    goto :goto_3

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move-object v0, v5

    goto :goto_2

    :cond_2
    return-object v8

    :cond_3
    move v12, v1

    move v1, v2

    move-object v2, v0

    move v0, v12

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public addCell(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->e:I

    iget v1, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->f:I

    invoke-direct {p0, v0, v1, p1}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->a(IILjava/lang/String;)V

    iget v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->f:I

    iget v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->f:I

    iget v1, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->b:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->f:I

    iget v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->e:I

    :cond_0
    return-void
.end method

.method public delRow(I)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElementAt(I)V

    iget v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->a:I

    return-void
.end method

.method public getBufferArrayID()I
    .locals 1

    iget v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->i:I

    return v0
.end method

.method public getCols()I
    .locals 1

    iget v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->b:I

    return v0
.end method

.method public getRowSelected()I
    .locals 1

    iget v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->g:I

    return v0
.end method

.method public getRows()I
    .locals 1

    iget v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->a:I

    return v0
.end method

.method public getTitles()[I
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->c:[I

    return-object v0
.end method

.method public getValue(II)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move v2, v1

    move v0, v1

    :cond_1
    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getCols()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->c:[I

    aget v0, v0, v2

    if-ne p2, v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    if-nez v0, :cond_4

    const-string v0, ""

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, v2}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->b(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getValues()[Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    iget v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->a:I

    iget v2, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->b:I

    mul-int/2addr v0, v2

    new-array v3, v0, [Ljava/lang/String;

    move v0, v1

    :goto_0
    iget v2, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->a:I

    if-ge v0, v2, :cond_1

    move v2, v1

    :goto_1
    iget v4, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->b:I

    if-ge v2, v4, :cond_0

    invoke-direct {p0, v0, v2}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->b(II)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->b:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v2

    aput-object v4, v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public getValuesPerRow()[[Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    iget v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->a:I

    new-array v3, v0, [[Ljava/lang/String;

    move v0, v1

    :goto_0
    iget v2, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->a:I

    if-ge v0, v2, :cond_1

    iget v2, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->b:I

    new-array v4, v2, [Ljava/lang/String;

    move v2, v1

    :goto_1
    iget v5, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->b:I

    if-ge v2, v5, :cond_0

    invoke-direct {p0, v0, v2}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->b(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public isForSending()Z
    .locals 1

    iget-boolean v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->h:Z

    return v0
.end method

.method public serialize()Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x3

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getCols()I

    move-result v4

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getRows()I

    move-result v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->leftZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->leftZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->leftZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->leftZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->c:[I

    aget v6, v0, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->leftZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_0

    invoke-virtual {p0, v0, v6}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getValue(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->getStringWithLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCols(I)V
    .locals 0

    iput p1, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->b:I

    return-void
.end method

.method public setForSending(ZI)V
    .locals 0

    iput-boolean p1, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->h:Z

    iput p2, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->i:I

    return-void
.end method

.method public setRowSelected(I)V
    .locals 1

    iget v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->g:I

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ltz p1, :cond_2

    iget v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->a:I

    if-lt p1, v0, :cond_3

    :cond_2
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->unselectRow()V

    goto :goto_0

    :cond_3
    iput p1, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->g:I

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->notifyInternalStateChanged()V

    goto :goto_0
.end method

.method public setRows(I)V
    .locals 0

    iput p1, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->a:I

    return-void
.end method

.method public setValue(IILjava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getCols()I

    move-result v3

    move v2, v1

    move v0, v1

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    if-ge v2, v3, :cond_2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->c:[I

    aget v0, v0, v2

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    :try_start_0
    invoke-direct {p0, p1, v2, p3}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->a(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public unselectRow()V
    .locals 1

    iget v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->g:I

    if-ltz v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->g:I

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->notifyInternalStateChanged()V

    :cond_0
    return-void
.end method
