.class final Lme/regexp/RECompiler$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/regexp/RECompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:[I

.field b:[I

.field c:I

.field private d:I


# direct methods
.method constructor <init>(Lme/regexp/RECompiler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lme/regexp/RECompiler$a;->d:I

    iget v0, p0, Lme/regexp/RECompiler$a;->d:I

    new-array v0, v0, [I

    iput-object v0, p0, Lme/regexp/RECompiler$a;->a:[I

    iget v0, p0, Lme/regexp/RECompiler$a;->d:I

    new-array v0, v0, [I

    iput-object v0, p0, Lme/regexp/RECompiler$a;->b:[I

    const/4 v0, 0x0

    iput v0, p0, Lme/regexp/RECompiler$a;->c:I

    return-void
.end method

.method private a(I)V
    .locals 3

    iget v0, p0, Lme/regexp/RECompiler$a;->c:I

    if-eqz v0, :cond_0

    iget v0, p0, Lme/regexp/RECompiler$a;->c:I

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lme/regexp/RECompiler$a;->c:I

    if-ge p1, v0, :cond_2

    add-int/lit8 v0, p1, -0x1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lme/regexp/RECompiler$a;->a:[I

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lme/regexp/RECompiler$a;->a:[I

    aget v2, v2, p1

    aput v2, v0, v1

    iget-object v0, p0, Lme/regexp/RECompiler$a;->b:[I

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lme/regexp/RECompiler$a;->b:[I

    aget v2, v2, p1

    aput v2, v0, v1

    goto :goto_1

    :cond_2
    iget v0, p0, Lme/regexp/RECompiler$a;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lme/regexp/RECompiler$a;->c:I

    goto :goto_0
.end method

.method private a(II)V
    .locals 5

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    :goto_1
    iget v2, p0, Lme/regexp/RECompiler$a;->c:I

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lme/regexp/RECompiler$a;->a:[I

    aget v2, v2, v0

    if-lt p1, v2, :cond_0

    iget-object v2, p0, Lme/regexp/RECompiler$a;->b:[I

    aget v2, v2, v0

    if-gt p2, v2, :cond_0

    :goto_2
    return-void

    :cond_0
    iget-object v2, p0, Lme/regexp/RECompiler$a;->a:[I

    aget v2, v2, v0

    if-gt p1, v2, :cond_1

    iget-object v2, p0, Lme/regexp/RECompiler$a;->b:[I

    aget v2, v2, v0

    if-lt p2, v2, :cond_1

    invoke-direct {p0, v0}, Lme/regexp/RECompiler$a;->a(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lme/regexp/RECompiler$a;->a:[I

    aget v2, v2, v0

    if-lt p1, v2, :cond_2

    iget-object v2, p0, Lme/regexp/RECompiler$a;->b:[I

    aget v2, v2, v0

    if-gt p1, v2, :cond_2

    iget-object v2, p0, Lme/regexp/RECompiler$a;->a:[I

    aget p1, v2, v0

    invoke-direct {p0, v0}, Lme/regexp/RECompiler$a;->a(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lme/regexp/RECompiler$a;->a:[I

    aget v2, v2, v0

    if-lt p2, v2, :cond_3

    iget-object v2, p0, Lme/regexp/RECompiler$a;->b:[I

    aget v2, v2, v0

    if-gt p2, v2, :cond_3

    iget-object v2, p0, Lme/regexp/RECompiler$a;->b:[I

    aget p2, v2, v0

    invoke-direct {p0, v0}, Lme/regexp/RECompiler$a;->a(I)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget v0, p0, Lme/regexp/RECompiler$a;->c:I

    iget v2, p0, Lme/regexp/RECompiler$a;->d:I

    if-lt v0, v2, :cond_5

    iget v0, p0, Lme/regexp/RECompiler$a;->d:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lme/regexp/RECompiler$a;->d:I

    iget v0, p0, Lme/regexp/RECompiler$a;->d:I

    new-array v0, v0, [I

    iget v2, p0, Lme/regexp/RECompiler$a;->d:I

    new-array v2, v2, [I

    iget-object v3, p0, Lme/regexp/RECompiler$a;->a:[I

    iget v4, p0, Lme/regexp/RECompiler$a;->c:I

    invoke-static {v3, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lme/regexp/RECompiler$a;->b:[I

    iget v4, p0, Lme/regexp/RECompiler$a;->c:I

    invoke-static {v3, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lme/regexp/RECompiler$a;->a:[I

    iput-object v2, p0, Lme/regexp/RECompiler$a;->b:[I

    :cond_5
    iget-object v0, p0, Lme/regexp/RECompiler$a;->a:[I

    iget v1, p0, Lme/regexp/RECompiler$a;->c:I

    aput p1, v0, v1

    iget-object v0, p0, Lme/regexp/RECompiler$a;->b:[I

    iget v1, p0, Lme/regexp/RECompiler$a;->c:I

    aput p2, v0, v1

    iget v0, p0, Lme/regexp/RECompiler$a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lme/regexp/RECompiler$a;->c:I

    goto :goto_2
.end method


# virtual methods
.method final a(CZ)V
    .locals 0

    invoke-virtual {p0, p1, p1, p2}, Lme/regexp/RECompiler$a;->a(IIZ)V

    return-void
.end method

.method final a(IIZ)V
    .locals 3

    if-eqz p3, :cond_1

    invoke-direct {p0, p1, p2}, Lme/regexp/RECompiler$a;->a(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lme/regexp/RECompiler$a;->c:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lme/regexp/RECompiler$a;->a:[I

    aget v1, v1, v0

    if-lt v1, p1, :cond_2

    iget-object v1, p0, Lme/regexp/RECompiler$a;->b:[I

    aget v1, v1, v0

    if-gt v1, p2, :cond_2

    invoke-direct {p0, v0}, Lme/regexp/RECompiler$a;->a(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lme/regexp/RECompiler$a;->a:[I

    aget v1, v1, v0

    if-lt p1, v1, :cond_4

    iget-object v1, p0, Lme/regexp/RECompiler$a;->b:[I

    aget v1, v1, v0

    if-gt p2, v1, :cond_4

    iget-object v1, p0, Lme/regexp/RECompiler$a;->a:[I

    aget v1, v1, v0

    iget-object v2, p0, Lme/regexp/RECompiler$a;->b:[I

    aget v2, v2, v0

    invoke-direct {p0, v0}, Lme/regexp/RECompiler$a;->a(I)V

    if-ge v1, p1, :cond_3

    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v1, v0}, Lme/regexp/RECompiler$a;->a(II)V

    :cond_3
    if-ge p2, v2, :cond_0

    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v0, v2}, Lme/regexp/RECompiler$a;->a(II)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lme/regexp/RECompiler$a;->a:[I

    aget v1, v1, v0

    if-lt v1, p1, :cond_5

    iget-object v1, p0, Lme/regexp/RECompiler$a;->a:[I

    aget v1, v1, v0

    if-gt v1, p2, :cond_5

    iget-object v1, p0, Lme/regexp/RECompiler$a;->a:[I

    add-int/lit8 v2, p2, 0x1

    aput v2, v1, v0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lme/regexp/RECompiler$a;->b:[I

    aget v1, v1, v0

    if-lt v1, p1, :cond_6

    iget-object v1, p0, Lme/regexp/RECompiler$a;->b:[I

    aget v1, v1, v0

    if-gt v1, p2, :cond_6

    iget-object v1, p0, Lme/regexp/RECompiler$a;->b:[I

    add-int/lit8 v2, p1, -0x1

    aput v2, v1, v0

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
