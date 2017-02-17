.class public Lcom/a/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/c$a;,
        Lcom/a/a/c$b;,
        Lcom/a/a/c$c;
    }
.end annotation


# instance fields
.field protected a:Lcom/a/a/c$b;

.field protected b:Z

.field private final c:Lcom/a/a/b;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Paint;

.field private j:Ljava/lang/Integer;

.field private k:Z

.field private l:Ljava/lang/Integer;

.field private m:Z

.field private n:Ljava/lang/Integer;

.field private o:Ljava/lang/Integer;

.field private p:Ljava/lang/Integer;

.field private q:Ljava/lang/Integer;

.field private r:Lcom/a/a/d;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:I

.field private v:I

.field private w:Z


# direct methods
.method public constructor <init>(Lcom/a/a/b;)V
    .locals 2

    const/4 v1, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    new-instance v0, Lcom/a/a/a;

    invoke-direct {v0}, Lcom/a/a/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/a/a/c;->a(Lcom/a/a/d;)V

    new-instance v0, Lcom/a/a/c$b;

    invoke-direct {v0, p0}, Lcom/a/a/c$b;-><init>(Lcom/a/a/c;)V

    iput-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    invoke-virtual {p0}, Lcom/a/a/c;->a()V

    iput v1, p0, Lcom/a/a/c;->u:I

    iput v1, p0, Lcom/a/a/c;->v:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/c;->w:Z

    return-void
.end method


# virtual methods
.method protected a(DZ)D
    .locals 13

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpl-double v1, v8, v6

    if-ltz v1, :cond_0

    div-double/2addr p1, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpg-double v1, v8, v10

    if-gez v1, :cond_1

    mul-double/2addr p1, v6

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_6

    cmpl-double v1, p1, v10

    if-nez v1, :cond_3

    :cond_2
    :goto_2
    int-to-double v0, v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, p1

    return-wide v0

    :cond_3
    cmpg-double v1, p1, v2

    if-gtz v1, :cond_4

    move-wide p1, v2

    goto :goto_2

    :cond_4
    cmpg-double v1, p1, v4

    if-gtz v1, :cond_5

    move-wide p1, v4

    goto :goto_2

    :cond_5
    cmpg-double v1, p1, v6

    if-gez v1, :cond_2

    move-wide p1, v6

    goto :goto_2

    :cond_6
    cmpl-double v1, p1, v10

    if-eqz v1, :cond_2

    const-wide v8, 0x401399999999999aL    # 4.9

    cmpg-double v1, p1, v8

    if-gtz v1, :cond_7

    move-wide p1, v2

    goto :goto_2

    :cond_7
    const-wide v2, 0x4023cccccccccccdL    # 9.9

    cmpg-double v1, p1, v2

    if-gtz v1, :cond_8

    move-wide p1, v4

    goto :goto_2

    :cond_8
    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    cmpg-double v1, p1, v2

    if-gez v1, :cond_2

    move-wide p1, v6

    goto :goto_2
.end method

.method public a()V
    .locals 10

    const v4, -0x777778

    const/high16 v6, -0x1000000

    const/16 v1, 0x14

    const/4 v9, 0x1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v2, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v2}, Lcom/a/a/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010042

    invoke-virtual {v2, v3, v0, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    :try_start_0
    iget-object v2, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v2}, Lcom/a/a/b;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v0, v0, Landroid/util/TypedValue;->data:I

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v7

    const/4 v0, 0x0

    const/high16 v2, -0x1000000

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    const/4 v0, 0x1

    const v2, -0x777778

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    const/4 v0, 0x2

    const/16 v2, 0x14

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/4 v0, 0x3

    const/16 v8, 0x14

    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    move v2, v3

    move v3, v5

    :goto_0
    iget-object v4, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iput v3, v4, Lcom/a/a/c$b;->d:I

    iget-object v4, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iput v3, v4, Lcom/a/a/c$b;->e:I

    iget-object v4, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iput v3, v4, Lcom/a/a/c$b;->f:I

    iget-object v3, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iput v2, v3, Lcom/a/a/c$b;->g:I

    iget-object v2, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    int-to-float v1, v1

    iput v1, v2, Lcom/a/a/c$b;->a:F

    iget-object v1, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iput v0, v1, Lcom/a/a/c$b;->i:I

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget-object v1, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v1, v1, Lcom/a/a/c$b;->a:F

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x5

    iput v1, v0, Lcom/a/a/c$b;->r:I

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iput-object v1, v0, Lcom/a/a/c$b;->b:Landroid/graphics/Paint$Align;

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v1, v0, Lcom/a/a/c$b;->c:Landroid/graphics/Paint$Align;

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iput-boolean v9, v0, Lcom/a/a/c$b;->h:Z

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget-object v1, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v1, v1, Lcom/a/a/c$b;->d:I

    iput v1, v0, Lcom/a/a/c$b;->k:I

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget-object v1, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v1, v1, Lcom/a/a/c$b;->f:I

    iput v1, v0, Lcom/a/a/c$b;->m:I

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget-object v1, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v1, v1, Lcom/a/a/c$b;->a:F

    iput v1, v0, Lcom/a/a/c$b;->j:F

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget-object v1, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v1, v1, Lcom/a/a/c$b;->a:F

    iput v1, v0, Lcom/a/a/c$b;->l:F

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iput-boolean v9, v0, Lcom/a/a/c$b;->o:Z

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iput-boolean v9, v0, Lcom/a/a/c$b;->p:Z

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    const/4 v1, 0x0

    iput v1, v0, Lcom/a/a/c$b;->n:F

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    sget-object v1, Lcom/a/a/c$a;->a:Lcom/a/a/c$a;

    iput-object v1, v0, Lcom/a/a/c$b;->q:Lcom/a/a/c$a;

    invoke-virtual {p0}, Lcom/a/a/c;->b()V

    return-void

    :catch_0
    move-exception v0

    move v0, v1

    move v2, v4

    move v3, v6

    goto :goto_0

    :array_0
    .array-data 4
        0x1010036
        0x1010038
        0x1010095
        0x101023f
    .end array-data
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/a/a/c;->u:I

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/a/c;->r:Lcom/a/a/d;

    iget-object v2, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v2}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/a/a/h;->e(Z)D

    move-result-wide v2

    invoke-interface {v0, v2, v3, v1}, Lcom/a/a/d;->a(DZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/a/a/c;->h:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v0, v1, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->j:Ljava/lang/Integer;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->l:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/a/a/c;->r:Lcom/a/a/d;

    iget-object v3, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v3}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/a/a/h;->d(Z)D

    move-result-wide v4

    invoke-interface {v0, v4, v5, v1}, Lcom/a/a/d;->a(DZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    iget-object v3, p0, Lcom/a/a/c;->h:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v0, v1, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/a/a/c;->j:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/a/a/c;->j:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/a/a/c;->j:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/a/a/c;->j:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/a/a/c;->j:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v3, v3, Lcom/a/a/c$b;->r:I

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/a/a/c;->j:Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v4, v3

    move v0, v2

    :goto_0
    if-ge v1, v4, :cond_3

    aget-byte v2, v3, v1

    const/16 v5, 0xa

    if-ne v2, v5, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/a/a/c;->l:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->l:Ljava/lang/Integer;

    return-void
.end method

.method public a(Lcom/a/a/d;)V
    .locals 1

    iput-object p1, p0, Lcom/a/a/c;->r:Lcom/a/a/d;

    iget-object v0, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/a/a/d;->a(Lcom/a/a/h;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/c;->s:Ljava/lang/String;

    return-void
.end method

.method public a(ZZ)V
    .locals 2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/c;->b:Z

    :cond_0
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/a/a/c;->k:Z

    if-nez v0, :cond_1

    iput-object v1, p0, Lcom/a/a/c;->j:Ljava/lang/Integer;

    :cond_1
    iput-object v1, p0, Lcom/a/a/c;->l:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/a/a/c;->n:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/a/a/c;->o:Ljava/lang/Integer;

    :cond_2
    return-void
.end method

.method protected a(Z)Z
    .locals 14

    iget-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/a/a/h;->d(Z)D

    move-result-wide v8

    iget-object v0, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/a/a/h;->e(Z)D

    move-result-wide v10

    cmpl-double v0, v8, v10

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v12, p0, Lcom/a/a/c;->u:I

    sub-double v0, v10, v8

    add-int/lit8 v2, v12, -0x1

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double v6, v0, v2

    invoke-virtual {p0}, Lcom/a/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v6, v7, p1}, Lcom/a/a/c;->a(DZ)D

    move-result-wide v0

    :goto_1
    iget-object v2, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v2}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/h;->h()D

    move-result-wide v2

    sub-double v4, v8, v2

    div-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    mul-double/2addr v4, v0

    add-double/2addr v4, v2

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v2}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lcom/a/a/h;->b(D)V

    iget-object v2, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v2}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v2

    add-int/lit8 v3, v12, -0x1

    int-to-double v6, v3

    mul-double/2addr v6, v0

    add-double/2addr v6, v4

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/a/a/h;->a(D)V

    iget-object v2, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v2}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v2

    sget-object v3, Lcom/a/a/h$a;->b:Lcom/a/a/h$a;

    iput-object v3, v2, Lcom/a/a/h;->m:Lcom/a/a/h$a;

    :cond_2
    iget-object v2, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v2}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v2

    iget-object v2, v2, Lcom/a/a/h;->d:Lcom/a/a/f;

    invoke-virtual {v2}, Lcom/a/a/f;->b()D

    move-result-wide v2

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    mul-double/2addr v2, v6

    div-double/2addr v2, v0

    double-to-int v2, v2

    add-int/lit8 v3, v2, 0x2

    iget-object v2, p0, Lcom/a/a/c;->d:Ljava/util/Map;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/a/a/c;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    :goto_2
    iget-object v2, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v2}, Lcom/a/a/b;->getGraphContentHeight()I

    move-result v2

    int-to-double v6, v2

    iget-object v2, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v2}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v2

    iget-object v2, v2, Lcom/a/a/h;->d:Lcom/a/a/f;

    invoke-virtual {v2}, Lcom/a/a/f;->b()D

    move-result-wide v8

    div-double/2addr v6, v8

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    mul-double/2addr v6, v8

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_d

    int-to-double v8, v2

    mul-double/2addr v8, v0

    add-double/2addr v8, v4

    iget-object v10, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v10}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v10

    iget-object v10, v10, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v10, v10, Lcom/a/a/f;->c:D

    cmpl-double v8, v8, v10

    if-lez v8, :cond_c

    :cond_3
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/a/a/c;->d:Ljava/util/Map;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/a/a/c;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_e

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/a/a/c;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v1, v0

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_6
    sub-double v4, v0, v2

    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-lez v0, :cond_e

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    cmpl-double v0, v4, v6

    if-lez v0, :cond_7

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v2, v4, v0

    :cond_6
    :goto_7
    sub-double v0, v10, v8

    div-double/2addr v0, v4

    double-to-int v0, v0

    sub-double v6, v10, v8

    div-double/2addr v6, v2

    double-to-int v1, v6

    if-gt v0, v12, :cond_9

    if-gt v1, v12, :cond_9

    if-le v1, v0, :cond_8

    const/4 v0, 0x1

    :goto_8
    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    cmpl-double v6, v2, v6

    if-eqz v6, :cond_a

    if-eqz v0, :cond_a

    if-gt v1, v12, :cond_a

    move-wide v0, v2

    goto/16 :goto_1

    :cond_7
    cmpg-double v0, v4, v6

    if-gez v0, :cond_6

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v2, v4, v0

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    goto :goto_8

    :cond_9
    const/4 v0, 0x1

    goto :goto_8

    :cond_a
    move-wide v0, v4

    goto/16 :goto_1

    :cond_b
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v2, p0, Lcom/a/a/c;->d:Ljava/util/Map;

    goto/16 :goto_2

    :cond_c
    int-to-double v8, v2

    mul-double/2addr v8, v0

    add-double/2addr v8, v4

    iget-object v10, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v10}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v10

    iget-object v10, v10, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v10, v10, Lcom/a/a/f;->d:D

    cmpg-double v8, v8, v10

    if-ltz v8, :cond_3

    int-to-double v8, v2

    mul-double/2addr v8, v0

    add-double/2addr v8, v4

    iget-object v10, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v10}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v10

    iget-object v10, v10, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v10, v10, Lcom/a/a/f;->d:D

    sub-double v10, v8, v10

    mul-double/2addr v10, v6

    iget-object v12, p0, Lcom/a/a/c;->d:Ljava/util/Map;

    double-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v12, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_d
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_e
    move-wide v0, v6

    goto/16 :goto_1

    :cond_f
    move-wide v0, v4

    goto :goto_6
.end method

.method public b()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/a/a/c;->g:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/a/a/c;->g:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v1, v1, Lcom/a/a/c$b;->g:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/a/a/c;->g:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/a/a/c;->h:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/a/a/c;->h:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/a/a/c;->d()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/a/a/c;->h:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/a/a/c;->i:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/a/a/c;->i:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/a/a/c;->d()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/a/a/c;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/a/a/c;->v:I

    return-void
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    iget-object v1, v1, Lcom/a/a/b;->a:Lcom/a/a/g;

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/a/a/c;->n:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->o:Ljava/lang/Integer;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    iget-object v1, v1, Lcom/a/a/b;->a:Lcom/a/a/g;

    invoke-virtual {v1, v0}, Lcom/a/a/g;->b(Z)D

    move-result-wide v2

    iget-object v1, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    iget-object v1, v1, Lcom/a/a/b;->a:Lcom/a/a/g;

    invoke-virtual {v1, v0}, Lcom/a/a/g;->a(Z)D

    move-result-wide v4

    sub-double/2addr v2, v4

    const-wide v4, 0x3fe90e5604189375L    # 0.783

    mul-double/2addr v2, v4

    iget-object v1, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    iget-object v1, v1, Lcom/a/a/b;->a:Lcom/a/a/g;

    invoke-virtual {v1, v0}, Lcom/a/a/g;->a(Z)D

    move-result-wide v4

    add-double/2addr v2, v4

    iget-object v1, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    iget-object v1, v1, Lcom/a/a/b;->a:Lcom/a/a/g;

    invoke-virtual {v1}, Lcom/a/a/g;->c()Lcom/a/a/d;

    move-result-object v1

    invoke-interface {v1, v2, v3, v0}, Lcom/a/a/d;->a(DZ)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/a/a/c;->h:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v2, v0, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/a/a/c;->n:Ljava/lang/Integer;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/a/a/c;->o:Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v2

    move v6, v0

    move v0, v1

    move v1, v6

    :goto_1
    if-ge v1, v3, :cond_2

    aget-byte v4, v2, v1

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/a/a/c;->o:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->o:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/c;->t:Ljava/lang/String;

    return-void
.end method

.method protected b(Z)Z
    .locals 14

    iget-object v0, p0, Lcom/a/a/c;->j:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/a/a/h;->b(Z)D

    move-result-wide v8

    iget-object v0, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/a/a/h;->c(Z)D

    move-result-wide v10

    cmpl-double v0, v8, v10

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v12, p0, Lcom/a/a/c;->v:I

    sub-double v0, v10, v8

    add-int/lit8 v2, v12, -0x1

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double v6, v0, v2

    invoke-virtual {p0}, Lcom/a/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v6, v7, v0}, Lcom/a/a/c;->a(DZ)D

    move-result-wide v0

    :goto_1
    iget-object v2, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v2}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/h;->a()D

    move-result-wide v2

    sub-double v4, v8, v2

    div-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    mul-double/2addr v4, v0

    add-double/2addr v4, v2

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v2}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lcom/a/a/h;->d(D)V

    iget-object v2, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v2}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v2

    add-int/lit8 v3, v12, -0x1

    int-to-double v6, v3

    mul-double/2addr v6, v0

    add-double/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Lcom/a/a/h;->c(D)V

    iget-object v2, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v2}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v2

    sget-object v3, Lcom/a/a/h$a;->b:Lcom/a/a/h$a;

    iput-object v3, v2, Lcom/a/a/h;->l:Lcom/a/a/h$a;

    :cond_2
    iget-object v2, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v2}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v2

    iget-object v2, v2, Lcom/a/a/h;->d:Lcom/a/a/f;

    invoke-virtual {v2}, Lcom/a/a/f;->a()D

    move-result-wide v2

    div-double/2addr v2, v0

    double-to-int v2, v2

    add-int/lit8 v3, v2, 0x1

    iget-object v2, p0, Lcom/a/a/c;->f:Ljava/util/Map;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/a/a/c;->f:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    :goto_2
    iget-object v2, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v2}, Lcom/a/a/b;->getGraphContentWidth()I

    move-result v2

    int-to-double v6, v2

    iget-object v2, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v2}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v2

    iget-object v2, v2, Lcom/a/a/h;->d:Lcom/a/a/f;

    invoke-virtual {v2}, Lcom/a/a/f;->a()D

    move-result-wide v8

    div-double/2addr v6, v8

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_c

    int-to-double v8, v2

    mul-double/2addr v8, v0

    add-double/2addr v8, v4

    iget-object v10, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v10}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v10

    iget-object v10, v10, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v10, v10, Lcom/a/a/f;->a:D

    cmpg-double v8, v8, v10

    if-gez v8, :cond_b

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/a/a/c;->f:Ljava/util/Map;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/a/a/c;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_d

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/a/a/c;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v1, v0

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_6
    sub-double v4, v0, v2

    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-lez v0, :cond_d

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    cmpl-double v0, v4, v6

    if-lez v0, :cond_6

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v2, v4, v0

    :cond_5
    :goto_7
    sub-double v0, v10, v8

    div-double/2addr v0, v4

    double-to-int v0, v0

    sub-double v6, v10, v8

    div-double/2addr v6, v2

    double-to-int v1, v6

    if-gt v0, v12, :cond_8

    if-gt v1, v12, :cond_8

    if-le v1, v0, :cond_7

    const/4 v0, 0x1

    :goto_8
    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    cmpl-double v6, v2, v6

    if-eqz v6, :cond_9

    if-eqz v0, :cond_9

    if-gt v1, v12, :cond_9

    move-wide v0, v2

    goto/16 :goto_1

    :cond_6
    cmpg-double v0, v4, v6

    if-gez v0, :cond_5

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v2, v4, v0

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    goto :goto_8

    :cond_8
    const/4 v0, 0x1

    goto :goto_8

    :cond_9
    move-wide v0, v4

    goto/16 :goto_1

    :cond_a
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v2, p0, Lcom/a/a/c;->f:Ljava/util/Map;

    goto/16 :goto_2

    :cond_b
    int-to-double v8, v2

    mul-double/2addr v8, v0

    add-double/2addr v8, v4

    iget-object v10, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v10}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v10

    iget-object v10, v10, Lcom/a/a/h;->d:Lcom/a/a/f;

    iget-wide v10, v10, Lcom/a/a/f;->a:D

    sub-double v10, v8, v10

    mul-double/2addr v10, v6

    iget-object v12, p0, Lcom/a/a/c;->f:Ljava/util/Map;

    double-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v12, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_c
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_d
    move-wide v0, v6

    goto/16 :goto_1

    :cond_e
    move-wide v0, v4

    goto :goto_6
.end method

.method protected c(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/a/a/h;->c(Z)D

    move-result-wide v4

    iget-object v0, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/a/a/h;->b(Z)D

    move-result-wide v6

    sub-double/2addr v4, v6

    const-wide v6, 0x3fe90e5604189375L    # 0.783

    mul-double/2addr v4, v6

    iget-object v0, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/a/a/h;->b(Z)D

    move-result-wide v6

    add-double/2addr v4, v6

    iget-object v0, p0, Lcom/a/a/c;->r:Lcom/a/a/d;

    invoke-interface {v0, v4, v5, v2}, Lcom/a/a/d;->a(DZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/a/a/c;->h:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v0, v1, v5, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/a/a/c;->p:Ljava/lang/Integer;

    iget-boolean v4, p0, Lcom/a/a/c;->m:Z

    if-nez v4, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v4, v3

    move v0, v2

    :goto_0
    if-ge v1, v4, :cond_2

    aget-byte v2, v3, v1

    const/16 v5, 0xa

    if-ne v2, v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v1, v1, Lcom/a/a/c$b;->a:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    :cond_3
    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v0, v0, Lcom/a/a/c$b;->n:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v0, v0, Lcom/a/a/c$b;->n:F

    const/high16 v1, 0x43340000    # 180.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v2, v2, Lcom/a/a/c$b;->n:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/a/a/c;->p:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v2, v1

    iget-object v1, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v1, v1, Lcom/a/a/c$b;->n:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    iget-object v2, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v4, v4, Lcom/a/a/c$b;->n:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    iget-object v3, p0, Lcom/a/a/c;->p:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v4, v3

    iget-object v3, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v3, v3, Lcom/a/a/c$b;->n:F

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    add-int v0, v2, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->p:Ljava/lang/Integer;

    :cond_4
    iget-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v1, v1, Lcom/a/a/c$b;->r:I

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    return-void
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iput-boolean p1, v0, Lcom/a/a/c$b;->h:Z

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/c;->w:Z

    return v0
.end method

.method public d()F
    .locals 1

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v0, v0, Lcom/a/a/c$b;->a:F

    return v0
.end method

.method public d(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/a/a/c;->p:Ljava/lang/Integer;

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/a/a/c;->c(Landroid/graphics/Canvas;)V

    move v0, v1

    :cond_0
    iget-object v2, p0, Lcom/a/a/c;->j:Ljava/lang/Integer;

    if-nez v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/a/a/c;->a(Landroid/graphics/Canvas;)V

    move v0, v1

    :cond_1
    iget-object v2, p0, Lcom/a/a/c;->n:Ljava/lang/Integer;

    if-nez v2, :cond_5

    invoke-virtual {p0, p1}, Lcom/a/a/c;->b(Landroid/graphics/Canvas;)V

    :goto_0
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v0, p1}, Lcom/a/a/b;->a(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/a/a/c;->b:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/a/a/c;->i()V

    :cond_4
    iget-boolean v0, p0, Lcom/a/a/c;->b:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/a/a/c;->i(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/a/a/c;->h(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/a/a/c;->g(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/a/a/c;->e(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/a/a/c;->f(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    iget-object v0, v0, Lcom/a/a/b;->a:Lcom/a/a/g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    iget-object v0, v0, Lcom/a/a/b;->a:Lcom/a/a/g;

    invoke-virtual {v0, p1}, Lcom/a/a/g;->a(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_5
    move v1, v0

    goto :goto_0
.end method

.method public d(Z)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iput-boolean p1, v0, Lcom/a/a/c$b;->o:Z

    return-void
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v0, v0, Lcom/a/a/c$b;->d:I

    return v0
.end method

.method protected e(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/a/a/c;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/c;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/c;->i:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/a/a/c;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/a/a/c;->i:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/a/a/c;->r()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v2, v2, Lcom/a/a/c$b;->i:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/a/a/c;->s:Ljava/lang/String;

    iget-object v3, p0, Lcom/a/a/c;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iput-boolean p1, v0, Lcom/a/a/c$b;->p:Z

    return-void
.end method

.method public f()Landroid/graphics/Paint$Align;
    .locals 1

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget-object v0, v0, Lcom/a/a/c$b;->b:Landroid/graphics/Paint$Align;

    return-object v0
.end method

.method protected f(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/a/a/c;->t:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/c;->t:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/c;->i:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/a/a/c;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/a/a/c;->i:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/a/a/c;->p()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/a/a/c;->k()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v2, p0, Lcom/a/a/c;->t:Ljava/lang/String;

    iget-object v3, p0, Lcom/a/a/c;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v0, v0, Lcom/a/a/c$b;->f:I

    return v0
.end method

.method protected g(Landroid/graphics/Canvas;)V
    .locals 14

    const/high16 v13, 0x42b40000    # 90.0f

    const/high16 v12, 0x43340000    # 180.0f

    const/4 v11, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/a/a/c;->h:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/a/a/c;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/a/a/c;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v7, v8

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget-boolean v0, v0, Lcom/a/a/c$b;->h:Z

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/a/a/c;->g:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget-object v0, v0, Lcom/a/a/c$b;->q:Lcom/a/a/c$a;

    invoke-virtual {v0}, Lcom/a/a/c$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v1}, Lcom/a/a/b;->getGraphContentWidth()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getGraphContentLeft()I

    move-result v1

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    int-to-float v1, v0

    iget-object v0, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getGraphContentTop()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getGraphContentLeft()I

    move-result v3

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getGraphContentTop()I

    move-result v0

    iget-object v4, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v4}, Lcom/a/a/b;->getGraphContentHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/a/a/c;->g:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    invoke-virtual {p0}, Lcom/a/a/c;->w()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v0, v0, Lcom/a/a/c$b;->n:F

    cmpl-float v0, v0, v11

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v0, v0, Lcom/a/a/c$b;->n:F

    cmpg-float v0, v0, v12

    if-gtz v0, :cond_6

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v0, v0, Lcom/a/a/c$b;->n:F

    cmpg-float v0, v0, v13

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/a/a/c;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/a/a/c;->r:Lcom/a/a/d;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v0, 0x1

    invoke-interface {v1, v2, v3, v0}, Lcom/a/a/d;->a(DZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v0, v0, Lcom/a/a/c$b;->n:F

    cmpl-float v0, v0, v11

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v0, v0, Lcom/a/a/c$b;->n:F

    cmpg-float v0, v0, v12

    if-gtz v0, :cond_c

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/a/a/c;->h:Landroid/graphics/Paint;

    aget-object v2, v3, v8

    aget-object v4, v3, v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v8, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v2, v2, Lcom/a/a/c$b;->n:F

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v0, v0

    move v1, v0

    :goto_3
    move v2, v8

    :goto_4
    array-length v0, v3

    if-ge v2, v0, :cond_a

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iget-object v4, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v4, v4, Lcom/a/a/c$b;->i:I

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/a/a/c;->j()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    array-length v4, v3

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/a/a/c;->d()F

    move-result v5

    mul-float/2addr v4, v5

    const v5, 0x3f8ccccd    # 1.1f

    mul-float/2addr v4, v5

    sub-float/2addr v0, v4

    iget-object v4, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v4, v4, Lcom/a/a/c$b;->r:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget-object v0, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getGraphContentLeft()I

    move-result v5

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v5

    int-to-float v0, v0

    iget-object v5, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v5, v5, Lcom/a/a/c$b;->n:F

    cmpl-float v5, v5, v11

    if-lez v5, :cond_8

    iget-object v5, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v5, v5, Lcom/a/a/c$b;->n:F

    cmpg-float v5, v5, v13

    if-gez v5, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v5, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v5, v5, Lcom/a/a/c$b;->n:F

    int-to-float v10, v1

    add-float/2addr v10, v0

    invoke-virtual {p1, v5, v10, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    aget-object v5, v3, v2

    int-to-float v10, v1

    add-float/2addr v0, v10

    iget-object v10, p0, Lcom/a/a/c;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v0, v4, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/a/a/c;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v0, v0, Lcom/a/a/c$b;->n:F

    cmpg-float v0, v0, v12

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/c;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/a/a/c;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/a/a/c;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v7, v0, :cond_7

    iget-object v0, p0, Lcom/a/a/c;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_7
    if-nez v7, :cond_2

    iget-object v0, p0, Lcom/a/a/c;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_2

    :cond_8
    iget-object v5, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v5, v5, Lcom/a/a/c$b;->n:F

    cmpl-float v5, v5, v11

    if-lez v5, :cond_9

    iget-object v5, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v5, v5, Lcom/a/a/c$b;->n:F

    cmpg-float v5, v5, v12

    if-gtz v5, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v5, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v5, v5, Lcom/a/a/c$b;->n:F

    sub-float/2addr v5, v12

    int-to-float v10, v1

    sub-float v10, v0, v10

    invoke-virtual {p1, v5, v10, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    aget-object v5, v3, v2

    int-to-float v10, v1

    sub-float/2addr v0, v10

    iget-object v10, p0, Lcom/a/a/c;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v0, v4, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_5

    :cond_9
    aget-object v5, v3, v2

    iget-object v10, p0, Lcom/a/a/c;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v0, v4, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_a
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_0

    :cond_b
    return-void

    :cond_c
    move v1, v8

    goto/16 :goto_3
.end method

.method protected h(Landroid/graphics/Canvas;)V
    .locals 12

    const/4 v2, 0x0

    const v11, 0x3f8ccccd    # 1.1f

    iget-object v0, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    iget-object v0, v0, Lcom/a/a/b;->a:Lcom/a/a/g;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getGraphContentLeft()I

    move-result v0

    iget-object v1, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v1}, Lcom/a/a/b;->getGraphContentWidth()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/a/a/c;->h:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/a/a/c;->u()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/a/a/c;->h:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/a/a/c;->t()Landroid/graphics/Paint$Align;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/a/a/c;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v1}, Lcom/a/a/b;->getGraphContentTop()I

    move-result v1

    iget-object v5, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v5}, Lcom/a/a/b;->getGraphContentHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v1, v5, v1

    int-to-float v5, v1

    iget-object v1, p0, Lcom/a/a/c;->n:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    float-to-int v1, v3

    invoke-virtual {p0}, Lcom/a/a/c;->t()Landroid/graphics/Paint$Align;

    move-result-object v7

    sget-object v8, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    if-ne v7, v8, :cond_4

    add-int/2addr v1, v6

    :cond_3
    :goto_0
    iget-object v6, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    iget-object v6, v6, Lcom/a/a/b;->a:Lcom/a/a/g;

    iget-object v6, v6, Lcom/a/a/g;->e:Lcom/a/a/d;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-interface {v6, v8, v9, v2}, Lcom/a/a/d;->a(DZ)Ljava/lang/String;

    move-result-object v0

    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v0, v6

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/a/a/c;->d()F

    move-result v7

    mul-float/2addr v0, v7

    mul-float/2addr v0, v11

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v0, v7

    add-float/2addr v5, v0

    move v0, v2

    :goto_1
    array-length v7, v6

    if-ge v0, v7, :cond_2

    array-length v7, v6

    sub-int/2addr v7, v0

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/a/a/c;->d()F

    move-result v8

    mul-float/2addr v7, v8

    mul-float/2addr v7, v11

    sub-float v7, v5, v7

    aget-object v8, v6, v0

    int-to-float v9, v1

    iget-object v10, p0, Lcom/a/a/c;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v7, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/a/a/c;->t()Landroid/graphics/Paint$Align;

    move-result-object v7

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    if-ne v7, v8, :cond_3

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v1, v6

    goto :goto_0
.end method

.method protected h()Z
    .locals 14

    iget-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    iget-object v0, v0, Lcom/a/a/b;->a:Lcom/a/a/g;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    iget-object v0, v0, Lcom/a/a/b;->a:Lcom/a/a/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/a/a/g;->a(Z)D

    move-result-wide v8

    iget-object v0, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    iget-object v0, v0, Lcom/a/a/b;->a:Lcom/a/a/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/a/a/g;->b(Z)D

    move-result-wide v10

    iget v12, p0, Lcom/a/a/c;->u:I

    iget-object v0, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    iget-object v0, v0, Lcom/a/a/b;->a:Lcom/a/a/g;

    invoke-virtual {v0}, Lcom/a/a/g;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    sub-double v0, v10, v8

    add-int/lit8 v2, v12, -0x1

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double v6, v0, v2

    iget-object v0, p0, Lcom/a/a/c;->e:Ljava/util/Map;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/a/a/c;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_d

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/a/a/c;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v1, v0

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_2
    sub-double v4, v0, v2

    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-lez v0, :cond_d

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    cmpl-double v0, v4, v6

    if-lez v0, :cond_6

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v2, v4, v0

    :cond_4
    :goto_3
    sub-double v0, v10, v8

    div-double/2addr v0, v4

    double-to-int v0, v0

    sub-double v6, v10, v8

    div-double/2addr v6, v2

    double-to-int v1, v6

    if-gt v0, v12, :cond_8

    if-gt v1, v12, :cond_8

    if-le v1, v0, :cond_7

    const/4 v0, 0x1

    :goto_4
    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    cmpl-double v6, v2, v6

    if-eqz v6, :cond_9

    if-eqz v0, :cond_9

    if-gt v1, v12, :cond_9

    move-wide v0, v2

    :goto_5
    iget-object v2, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v2}, Lcom/a/a/b;->getSecondScale()Lcom/a/a/g;

    move-result-object v2

    iget-wide v2, v2, Lcom/a/a/g;->f:D

    sub-double v4, v8, v2

    div-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    mul-double/2addr v4, v0

    add-double/2addr v4, v2

    iget-object v2, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v2}, Lcom/a/a/b;->getSecondScale()Lcom/a/a/g;

    move-result-object v2

    iget-object v2, v2, Lcom/a/a/g;->d:Lcom/a/a/f;

    invoke-virtual {v2}, Lcom/a/a/f;->b()D

    move-result-wide v2

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    mul-double/2addr v2, v6

    div-double/2addr v2, v0

    double-to-int v2, v2

    add-int/lit8 v3, v2, 0x2

    iget-object v2, p0, Lcom/a/a/c;->e:Ljava/util/Map;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/a/a/c;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    :goto_6
    iget-object v2, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v2}, Lcom/a/a/b;->getGraphContentHeight()I

    move-result v2

    int-to-double v6, v2

    iget-object v2, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v2}, Lcom/a/a/b;->getSecondScale()Lcom/a/a/g;

    move-result-object v2

    iget-object v2, v2, Lcom/a/a/g;->d:Lcom/a/a/f;

    invoke-virtual {v2}, Lcom/a/a/f;->b()D

    move-result-wide v8

    div-double/2addr v6, v8

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    mul-double/2addr v6, v8

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_c

    int-to-double v8, v2

    mul-double/2addr v8, v0

    add-double/2addr v8, v4

    iget-object v10, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v10}, Lcom/a/a/b;->getSecondScale()Lcom/a/a/g;

    move-result-object v10

    iget-object v10, v10, Lcom/a/a/g;->d:Lcom/a/a/f;

    iget-wide v10, v10, Lcom/a/a/f;->c:D

    cmpl-double v8, v8, v10

    if-lez v8, :cond_b

    :cond_5
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_6
    cmpg-double v0, v4, v6

    if-gez v0, :cond_4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v2, v4, v0

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    goto :goto_4

    :cond_8
    const/4 v0, 0x1

    goto :goto_4

    :cond_9
    move-wide v0, v4

    goto :goto_5

    :cond_a
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v2, p0, Lcom/a/a/c;->e:Ljava/util/Map;

    goto :goto_6

    :cond_b
    int-to-double v8, v2

    mul-double/2addr v8, v0

    add-double/2addr v8, v4

    iget-object v10, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v10}, Lcom/a/a/b;->getSecondScale()Lcom/a/a/g;

    move-result-object v10

    iget-object v10, v10, Lcom/a/a/g;->d:Lcom/a/a/f;

    iget-wide v10, v10, Lcom/a/a/f;->d:D

    cmpg-double v8, v8, v10

    if-ltz v8, :cond_5

    int-to-double v8, v2

    mul-double/2addr v8, v0

    add-double/2addr v8, v4

    iget-object v10, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v10}, Lcom/a/a/b;->getSecondScale()Lcom/a/a/g;

    move-result-object v10

    iget-object v10, v10, Lcom/a/a/g;->d:Lcom/a/a/f;

    iget-wide v10, v10, Lcom/a/a/f;->d:D

    sub-double v10, v8, v10

    mul-double/2addr v10, v6

    iget-object v12, p0, Lcom/a/a/c;->e:Ljava/util/Map;

    double-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v12, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_c
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_d
    move-wide v0, v6

    goto/16 :goto_5

    :cond_e
    move-wide v0, v4

    goto/16 :goto_2
.end method

.method protected i()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/a/a/h$a;->c:Lcom/a/a/h$a;

    iget-object v3, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v3}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v3

    iget-object v3, v3, Lcom/a/a/h;->m:Lcom/a/a/h$a;

    invoke-virtual {v0, v3}, Lcom/a/a/h$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/a/a/c;->a(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/a/a/c;->b:Z

    iget-boolean v0, p0, Lcom/a/a/c;->b:Z

    invoke-virtual {p0}, Lcom/a/a/c;->h()Z

    move-result v3

    and-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/a/a/c;->b:Z

    iget-boolean v0, p0, Lcom/a/a/c;->b:Z

    sget-object v3, Lcom/a/a/h$a;->c:Lcom/a/a/h$a;

    iget-object v4, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v4}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v4

    iget-object v4, v4, Lcom/a/a/h;->l:Lcom/a/a/h$a;

    invoke-virtual {v3, v4}, Lcom/a/a/h$a;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/a/a/c;->b(Z)Z

    move-result v1

    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/a/a/c;->b:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method protected i(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v0, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getGraphContentLeft()I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/a/a/c;->h:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/a/a/c;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/a/a/c;->h:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/a/a/c;->f()Landroid/graphics/Paint$Align;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/a/a/c;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v8

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/a/a/c;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v7, v0

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getGraphContentTop()I

    move-result v0

    iget-object v2, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v2}, Lcom/a/a/b;->getGraphContentHeight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v2, v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget-boolean v0, v0, Lcom/a/a/c$b;->h:Z

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmpl-double v0, v4, v10

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/a/a/c;->g:Landroid/graphics/Paint;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget-object v0, v0, Lcom/a/a/c$b;->q:Lcom/a/a/c$a;

    invoke-virtual {v0}, Lcom/a/a/c$a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/c;->c:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->getGraphContentWidth()I

    move-result v0

    int-to-float v0, v0

    add-float v3, v1, v0

    iget-object v5, p0, Lcom/a/a/c;->g:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    const/4 v0, 0x1

    iget-object v3, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget-object v3, v3, Lcom/a/a/c$b;->s:Lcom/a/a/c$c;

    sget-object v4, Lcom/a/a/c$c;->a:Lcom/a/a/c$c;

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    if-eq v7, v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget-object v3, v3, Lcom/a/a/c$b;->s:Lcom/a/a/c$c;

    sget-object v4, Lcom/a/a/c$c;->c:Lcom/a/a/c$c;

    if-ne v3, v4, :cond_4

    if-ne v7, v8, :cond_4

    :cond_3
    const/4 v0, 0x0

    :cond_4
    invoke-virtual {p0}, Lcom/a/a/c;->x()Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/a/a/c;->j:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/a/a/c;->f()Landroid/graphics/Paint$Align;

    move-result-object v4

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    if-ne v4, v5, :cond_8

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v0, v0, Lcom/a/a/c$b;->r:I

    sub-int v0, v3, v0

    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v3, v3, Lcom/a/a/c$b;->i:I

    invoke-virtual {p0}, Lcom/a/a/c;->k()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/a/a/c;->r:Lcom/a/a/d;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const/4 v0, 0x0

    invoke-interface {v4, v10, v11, v0}, Lcom/a/a/d;->a(DZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/a/a/c$1;->a:[I

    iget-object v5, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget-object v5, v5, Lcom/a/a/c$b;->s:Lcom/a/a/c$c;

    invoke-virtual {v5}, Lcom/a/a/c$c;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_0

    :goto_3
    const/4 v0, 0x0

    :goto_4
    array-length v5, v4

    if-ge v0, v5, :cond_9

    array-length v5, v4

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/a/a/c;->d()F

    move-result v6

    mul-float/2addr v5, v6

    const v6, 0x3f8ccccd    # 1.1f

    mul-float/2addr v5, v6

    sub-float v5, v2, v5

    aget-object v6, v4, v0

    int-to-float v10, v3

    iget-object v11, p0, Lcom/a/a/c;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v10, v5, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/a/a/c;->g:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/a/a/c;->f()Landroid/graphics/Paint$Align;

    move-result-object v4

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    if-ne v4, v5, :cond_5

    div-int/lit8 v0, v3, 0x2

    goto :goto_2

    :pswitch_0
    array-length v0, v4

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/a/a/c;->d()F

    move-result v5

    mul-float/2addr v0, v5

    const v5, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    add-float/2addr v2, v0

    goto :goto_3

    :pswitch_1
    const/high16 v0, 0x40a00000    # 5.0f

    sub-float/2addr v2, v0

    goto :goto_3

    :pswitch_2
    array-length v0, v4

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/a/a/c;->d()F

    move-result v5

    mul-float/2addr v0, v5

    const v5, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v5

    const/high16 v5, 0x40a00000    # 5.0f

    add-float/2addr v0, v5

    add-float/2addr v2, v0

    goto :goto_3

    :cond_9
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_0

    :cond_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, Lcom/a/a/c;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/c;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/c;->r()F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Lcom/a/a/c;->t:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/c;->t:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/c;->p()F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Lcom/a/a/c$b;
    .locals 1

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    return-object v0
.end method

.method public m()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget-object v1, v1, Lcom/a/a/c$b;->s:Lcom/a/a/c$c;

    sget-object v2, Lcom/a/a/c$c;->a:Lcom/a/a/c$c;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget-object v1, v1, Lcom/a/a/c$b;->s:Lcom/a/a/c$c;

    sget-object v2, Lcom/a/a/c$c;->c:Lcom/a/a/c$c;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/a/a/c;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/a/a/c;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/a/a/c;->j:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public n()I
    .locals 1

    iget-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/c;->w()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public o()I
    .locals 1

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v0, v0, Lcom/a/a/c$b;->g:I

    return v0
.end method

.method public p()F
    .locals 1

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v0, v0, Lcom/a/a/c$b;->j:F

    return v0
.end method

.method public q()I
    .locals 1

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v0, v0, Lcom/a/a/c$b;->k:I

    return v0
.end method

.method public r()F
    .locals 1

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v0, v0, Lcom/a/a/c$b;->l:F

    return v0
.end method

.method public s()I
    .locals 1

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v0, v0, Lcom/a/a/c$b;->m:I

    return v0
.end method

.method public t()Landroid/graphics/Paint$Align;
    .locals 1

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget-object v0, v0, Lcom/a/a/c$b;->c:Landroid/graphics/Paint$Align;

    return-object v0
.end method

.method public u()I
    .locals 1

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget v0, v0, Lcom/a/a/c$b;->e:I

    return v0
.end method

.method public v()I
    .locals 1

    iget-object v0, p0, Lcom/a/a/c;->n:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/c;->n:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public w()Z
    .locals 1

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget-boolean v0, v0, Lcom/a/a/c$b;->o:Z

    return v0
.end method

.method public x()Z
    .locals 1

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/c$b;

    iget-boolean v0, v0, Lcom/a/a/c$b;->p:Z

    return v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lcom/a/a/c;->v:I

    return v0
.end method
