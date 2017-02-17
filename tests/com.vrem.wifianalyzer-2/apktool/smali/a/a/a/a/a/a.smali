.class public La/a/a/a/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, La/a/a/a/a/a;->a:I

    return-void
.end method

.method private b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<*>;)V"
        }
    .end annotation

    instance-of v0, p1, [J

    if-eqz v0, :cond_0

    check-cast p1, [J

    check-cast p1, [J

    check-cast p2, [J

    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/a;->a([J[J)La/a/a/a/a/a;

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, [I

    if-eqz v0, :cond_1

    check-cast p1, [I

    check-cast p1, [I

    check-cast p2, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/a;->a([I[I)La/a/a/a/a/a;

    goto :goto_0

    :cond_1
    instance-of v0, p1, [S

    if-eqz v0, :cond_2

    check-cast p1, [S

    check-cast p1, [S

    check-cast p2, [S

    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/a;->a([S[S)La/a/a/a/a/a;

    goto :goto_0

    :cond_2
    instance-of v0, p1, [C

    if-eqz v0, :cond_3

    check-cast p1, [C

    check-cast p1, [C

    check-cast p2, [C

    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/a;->a([C[C)La/a/a/a/a/a;

    goto :goto_0

    :cond_3
    instance-of v0, p1, [B

    if-eqz v0, :cond_4

    check-cast p1, [B

    check-cast p1, [B

    check-cast p2, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/a;->a([B[B)La/a/a/a/a/a;

    goto :goto_0

    :cond_4
    instance-of v0, p1, [D

    if-eqz v0, :cond_5

    check-cast p1, [D

    check-cast p1, [D

    check-cast p2, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/a;->a([D[D)La/a/a/a/a/a;

    goto :goto_0

    :cond_5
    instance-of v0, p1, [F

    if-eqz v0, :cond_6

    check-cast p1, [F

    check-cast p1, [F

    check-cast p2, [F

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/a;->a([F[F)La/a/a/a/a/a;

    goto :goto_0

    :cond_6
    instance-of v0, p1, [Z

    if-eqz v0, :cond_7

    check-cast p1, [Z

    check-cast p1, [Z

    check-cast p2, [Z

    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/a;->a([Z[Z)La/a/a/a/a/a;

    goto :goto_0

    :cond_7
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, La/a/a/a/a/a;->a([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)La/a/a/a/a/a;

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, La/a/a/a/a/a;->a:I

    return v0
.end method

.method public a(BB)La/a/a/a/a/a;
    .locals 1

    iget v0, p0, La/a/a/a/a/a;->a:I

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(CC)La/a/a/a/a/a;
    .locals 1

    iget v0, p0, La/a/a/a/a/a;->a:I

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(DD)La/a/a/a/a/a;
    .locals 1

    iget v0, p0, La/a/a/a/a/a;->a:I

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0
.end method

.method public a(FF)La/a/a/a/a/a;
    .locals 1

    iget v0, p0, La/a/a/a/a/a;->a:I

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0
.end method

.method public a(II)La/a/a/a/a/a;
    .locals 1

    iget v0, p0, La/a/a/a/a/a;->a:I

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(JJ)La/a/a/a/a/a;
    .locals 1

    iget v0, p0, La/a/a/a/a/a;->a:I

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_1
    cmp-long v0, p1, p3

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/a/a;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, La/a/a/a/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)La/a/a/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)La/a/a/a/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<*>;)",
            "La/a/a/a/a/a;"
        }
    .end annotation

    iget v0, p0, La/a/a/a/a/a;->a:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-nez p1, :cond_2

    const/4 v0, -0x1

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    const/4 v0, 0x1

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, p2, p3}, La/a/a/a/a/a;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_4
    if-nez p3, :cond_5

    check-cast p1, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_5
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0
.end method

.method public a(SS)La/a/a/a/a/a;
    .locals 1

    iget v0, p0, La/a/a/a/a/a;->a:I

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(ZZ)La/a/a/a/a/a;
    .locals 1

    iget v0, p0, La/a/a/a/a/a;->a:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-nez p1, :cond_2

    const/4 v0, -0x1

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0
.end method

.method public a([B[B)La/a/a/a/a/a;
    .locals 4

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget v2, p0, La/a/a/a/a/a;->a:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-nez p1, :cond_2

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iput v1, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    :goto_1
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, La/a/a/a/a/a;->a:I

    if-nez v1, :cond_0

    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, La/a/a/a/a/a;->a(BB)La/a/a/a/a/a;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public a([C[C)La/a/a/a/a/a;
    .locals 4

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget v2, p0, La/a/a/a/a/a;->a:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-nez p1, :cond_2

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iput v1, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    :goto_1
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, La/a/a/a/a/a;->a:I

    if-nez v1, :cond_0

    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, La/a/a/a/a/a;->a(CC)La/a/a/a/a/a;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public a([D[D)La/a/a/a/a/a;
    .locals 6

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget v2, p0, La/a/a/a/a/a;->a:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-nez p1, :cond_2

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iput v1, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    :goto_1
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, La/a/a/a/a/a;->a:I

    if-nez v1, :cond_0

    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, La/a/a/a/a/a;->a(DD)La/a/a/a/a/a;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public a([F[F)La/a/a/a/a/a;
    .locals 4

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget v2, p0, La/a/a/a/a/a;->a:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-nez p1, :cond_2

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iput v1, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    :goto_1
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, La/a/a/a/a/a;->a:I

    if-nez v1, :cond_0

    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, La/a/a/a/a/a;->a(FF)La/a/a/a/a/a;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public a([I[I)La/a/a/a/a/a;
    .locals 4

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget v2, p0, La/a/a/a/a/a;->a:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-nez p1, :cond_2

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iput v1, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    :goto_1
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, La/a/a/a/a/a;->a:I

    if-nez v1, :cond_0

    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, La/a/a/a/a/a;->a(II)La/a/a/a/a/a;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public a([J[J)La/a/a/a/a/a;
    .locals 6

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget v2, p0, La/a/a/a/a/a;->a:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-nez p1, :cond_2

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iput v1, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    :goto_1
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, La/a/a/a/a/a;->a:I

    if-nez v1, :cond_0

    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, La/a/a/a/a/a;->a(JJ)La/a/a/a/a/a;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public a([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)La/a/a/a/a/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<*>;)",
            "La/a/a/a/a/a;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget v2, p0, La/a/a/a/a/a;->a:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-nez p1, :cond_2

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iput v1, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    :goto_1
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, La/a/a/a/a/a;->a:I

    if-nez v1, :cond_0

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2, p3}, La/a/a/a/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)La/a/a/a/a/a;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public a([S[S)La/a/a/a/a/a;
    .locals 4

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget v2, p0, La/a/a/a/a/a;->a:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-nez p1, :cond_2

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iput v1, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    :goto_1
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, La/a/a/a/a/a;->a:I

    if-nez v1, :cond_0

    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, La/a/a/a/a/a;->a(SS)La/a/a/a/a/a;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public a([Z[Z)La/a/a/a/a/a;
    .locals 4

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget v2, p0, La/a/a/a/a/a;->a:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-nez p1, :cond_2

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iput v1, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    :goto_1
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, La/a/a/a/a/a;->a:I

    if-nez v1, :cond_0

    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, La/a/a/a/a/a;->a(ZZ)La/a/a/a/a/a;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
