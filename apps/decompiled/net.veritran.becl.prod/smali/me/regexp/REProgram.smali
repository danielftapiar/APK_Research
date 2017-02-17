.class public Lme/regexp/REProgram;
.super Ljava/lang/Object;


# instance fields
.field a:[C

.field b:[C

.field c:I

.field d:I

.field private e:I


# direct methods
.method public constructor <init>(I[C)V
    .locals 1

    array-length v0, p2

    invoke-direct {p0, p2, v0}, Lme/regexp/REProgram;-><init>([CI)V

    iput p1, p0, Lme/regexp/REProgram;->d:I

    return-void
.end method

.method public constructor <init>([C)V
    .locals 1

    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lme/regexp/REProgram;-><init>([CI)V

    return-void
.end method

.method public constructor <init>([CI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lme/regexp/REProgram;->d:I

    invoke-virtual {p0, p1, p2}, Lme/regexp/REProgram;->setInstructions([CI)V

    return-void
.end method


# virtual methods
.method public getInstructions()[C
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lme/regexp/REProgram;->e:I

    if-eqz v0, :cond_0

    iget v0, p0, Lme/regexp/REProgram;->e:I

    new-array v0, v0, [C

    iget-object v1, p0, Lme/regexp/REProgram;->a:[C

    iget v2, p0, Lme/regexp/REProgram;->e:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrefix()[C
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lme/regexp/REProgram;->b:[C

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/regexp/REProgram;->b:[C

    array-length v0, v0

    new-array v0, v0, [C

    iget-object v1, p0, Lme/regexp/REProgram;->b:[C

    iget-object v2, p0, Lme/regexp/REProgram;->b:[C

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInstructions([CI)V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x3

    const/4 v0, 0x0

    iput-object p1, p0, Lme/regexp/REProgram;->a:[C

    iput p2, p0, Lme/regexp/REProgram;->e:I

    iput v0, p0, Lme/regexp/REProgram;->c:I

    const/4 v1, 0x0

    iput-object v1, p0, Lme/regexp/REProgram;->b:[C

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-lt p2, v3, :cond_0

    aget-char v1, p1, v0

    const/16 v2, 0x7c

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    aget-char v1, p1, v1

    int-to-short v1, v1

    aget-char v1, p1, v1

    const/16 v2, 0x45

    if-ne v1, v2, :cond_0

    if-lt p2, v4, :cond_0

    aget-char v1, p1, v3

    const/16 v2, 0x41

    if-ne v1, v2, :cond_1

    const/4 v1, 0x4

    aget-char v1, p1, v1

    new-array v2, v1, [C

    iput-object v2, p0, Lme/regexp/REProgram;->b:[C

    iget-object v2, p0, Lme/regexp/REProgram;->b:[C

    invoke-static {p1, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    :goto_0
    if-ge v0, p2, :cond_2

    aget-char v1, p1, v0

    sparse-switch v1, :sswitch_data_0

    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_1
    const/16 v2, 0x5e

    if-ne v1, v2, :cond_0

    iget v1, p0, Lme/regexp/REProgram;->c:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lme/regexp/REProgram;->c:I

    goto :goto_0

    :sswitch_0
    add-int/lit8 v1, v0, 0x1

    aget-char v1, p1, v1

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_1

    :sswitch_1
    add-int/lit8 v1, v0, 0x1

    aget-char v1, p1, v1

    add-int/2addr v0, v1

    goto :goto_1

    :sswitch_2
    iget v0, p0, Lme/regexp/REProgram;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lme/regexp/REProgram;->c:I

    :cond_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_2
        0x41 -> :sswitch_1
        0x5b -> :sswitch_0
    .end sparse-switch
.end method
