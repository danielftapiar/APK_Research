.class public Lcom/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d;


# instance fields
.field protected a:[Ljava/text/NumberFormat;

.field protected b:Lcom/a/a/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/text/NumberFormat;

    iput-object v0, p0, Lcom/a/a/a;->a:[Ljava/text/NumberFormat;

    return-void
.end method


# virtual methods
.method public a(DZ)Ljava/lang/String;
    .locals 13

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/a/a/a;->a:[Ljava/text/NumberFormat;

    aget-object v3, v3, v0

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/a/a/a;->a:[Ljava/text/NumberFormat;

    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v4

    aput-object v4, v3, v0

    if-eqz p3, :cond_2

    iget-object v3, p0, Lcom/a/a/a;->b:Lcom/a/a/h;

    invoke-virtual {v3, v2}, Lcom/a/a/h;->c(Z)D

    move-result-wide v4

    move-wide v6, v4

    :goto_1
    if-eqz p3, :cond_3

    iget-object v3, p0, Lcom/a/a/a;->b:Lcom/a/a/h;

    invoke-virtual {v3, v2}, Lcom/a/a/h;->b(Z)D

    move-result-wide v4

    :goto_2
    sub-double v8, v6, v4

    const-wide v10, 0x3fb999999999999aL    # 0.1

    cmpg-double v3, v8, v10

    if-gez v3, :cond_4

    iget-object v1, p0, Lcom/a/a/a;->a:[Ljava/text/NumberFormat;

    aget-object v1, v1, v0

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    :cond_0
    :goto_3
    iget-object v1, p0, Lcom/a/a/a;->a:[Ljava/text/NumberFormat;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/a/a/a;->b:Lcom/a/a/h;

    invoke-virtual {v3, v2}, Lcom/a/a/h;->e(Z)D

    move-result-wide v4

    move-wide v6, v4

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/a/a/a;->b:Lcom/a/a/h;

    invoke-virtual {v3, v2}, Lcom/a/a/h;->d(Z)D

    move-result-wide v4

    goto :goto_2

    :cond_4
    sub-double v8, v6, v4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v8, v10

    if-gez v3, :cond_5

    iget-object v1, p0, Lcom/a/a/a;->a:[Ljava/text/NumberFormat;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    goto :goto_3

    :cond_5
    sub-double v8, v6, v4

    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    cmpg-double v3, v8, v10

    if-gez v3, :cond_6

    iget-object v1, p0, Lcom/a/a/a;->a:[Ljava/text/NumberFormat;

    aget-object v1, v1, v0

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    goto :goto_3

    :cond_6
    sub-double v4, v6, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    cmpg-double v3, v4, v6

    if-gez v3, :cond_7

    iget-object v2, p0, Lcom/a/a/a;->a:[Ljava/text/NumberFormat;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/a/a/a;->a:[Ljava/text/NumberFormat;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    goto :goto_3
.end method

.method public a(Lcom/a/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/a;->b:Lcom/a/a/h;

    return-void
.end method
