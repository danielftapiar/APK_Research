.class public Lnet/veritran/function/model/Array;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(IIIZZZ)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lnet/veritran/function/model/Array;->a:I

    iput v1, p0, Lnet/veritran/function/model/Array;->b:I

    iput v1, p0, Lnet/veritran/function/model/Array;->c:I

    iput-boolean v0, p0, Lnet/veritran/function/model/Array;->d:Z

    iput-boolean v0, p0, Lnet/veritran/function/model/Array;->e:Z

    iput-boolean v0, p0, Lnet/veritran/function/model/Array;->f:Z

    iput p1, p0, Lnet/veritran/function/model/Array;->a:I

    iput p2, p0, Lnet/veritran/function/model/Array;->b:I

    iput p3, p0, Lnet/veritran/function/model/Array;->c:I

    iput-boolean p4, p0, Lnet/veritran/function/model/Array;->d:Z

    iput-boolean p5, p0, Lnet/veritran/function/model/Array;->e:Z

    iput-boolean p6, p0, Lnet/veritran/function/model/Array;->f:Z

    return-void
.end method


# virtual methods
.method public countColumns()Z
    .locals 1

    iget-boolean v0, p0, Lnet/veritran/function/model/Array;->e:Z

    return v0
.end method

.method public countRows()Z
    .locals 1

    iget-boolean v0, p0, Lnet/veritran/function/model/Array;->f:Z

    return v0
.end method

.method public getCol()I
    .locals 1

    iget v0, p0, Lnet/veritran/function/model/Array;->c:I

    return v0
.end method

.method public getIdArray()I
    .locals 1

    iget v0, p0, Lnet/veritran/function/model/Array;->a:I

    return v0
.end method

.method public getRow()I
    .locals 1

    iget v0, p0, Lnet/veritran/function/model/Array;->b:I

    return v0
.end method

.method public isRowMarked()Z
    .locals 1

    iget-boolean v0, p0, Lnet/veritran/function/model/Array;->d:Z

    return v0
.end method

.method public setCol(I)V
    .locals 0

    iput p1, p0, Lnet/veritran/function/model/Array;->c:I

    return-void
.end method

.method public setIdArray(I)V
    .locals 0

    iput p1, p0, Lnet/veritran/function/model/Array;->a:I

    return-void
.end method

.method public setRow(I)V
    .locals 0

    iput p1, p0, Lnet/veritran/function/model/Array;->b:I

    return-void
.end method

.method public setRowMarked(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/veritran/function/model/Array;->d:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Array [idArray="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lnet/veritran/function/model/Array;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", row="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/veritran/function/model/Array;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", col="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/veritran/function/model/Array;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
