.class public Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:I

.field private b:Lnet/veritran/vtuserapplication/core/elements/ArrayElement;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->b:Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->b:Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->setArray(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->clone()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public delete()V
    .locals 2

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->b:Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->cleanArray(I)V

    return-void
.end method

.method public exists(I)Z
    .locals 1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/model/Model;->existsArray(I)Z

    move-result v0

    return v0
.end method

.method public getArrayId()I
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->b:Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getId()I

    move-result v0

    return v0
.end method

.method public getColumnCount()I
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->b:Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->b:Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getCols()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentRowId()I
    .locals 1

    iget v0, p0, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->a:I

    return v0
.end method

.method public getRowCount()I
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->b:Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->b:Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getRows()I

    move-result v0

    goto :goto_0
.end method

.method public isMarked()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->b:Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getRowSelected()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->a:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public readRow()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->b:Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->a:I

    iget-object v2, p0, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->b:Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getRows()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    iget v0, p0, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->a:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public render(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->b:Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    if-nez v0, :cond_0

    const-string v0, "FERRRRRRRRR"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->b:Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    iget v1, p0, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->a:I

    invoke-virtual {v0, v1, p1}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getValue(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lnet/veritran/vtuserapplication/adapters/StringFormatter;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->a:I

    return-void
.end method

.method public setArray(I)V
    .locals 1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/model/Model;->getArray(I)Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->b:Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    return-void
.end method
