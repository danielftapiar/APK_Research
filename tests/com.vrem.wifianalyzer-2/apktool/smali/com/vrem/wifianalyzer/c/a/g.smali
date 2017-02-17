.class public abstract Lcom/vrem/wifianalyzer/c/a/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroid/support/v4/g/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/h",
            "<",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/support/v4/g/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/h",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/g/h",
            "<",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/support/v4/g/h;

    sget-object v1, Lcom/vrem/wifianalyzer/c/a/c;->a:Lcom/vrem/wifianalyzer/c/a/c;

    sget-object v2, Lcom/vrem/wifianalyzer/c/a/c;->a:Lcom/vrem/wifianalyzer/c/a/c;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/g/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/a/g;->a:Landroid/support/v4/g/h;

    return-void
.end method

.method constructor <init>(Landroid/support/v4/g/h;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/g/h",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/g/h",
            "<",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/a/g;->b:Landroid/support/v4/g/h;

    iput-object p2, p0, Lcom/vrem/wifianalyzer/c/a/g;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method a(ILandroid/support/v4/g/h;)Lcom/vrem/wifianalyzer/c/a/c;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/g/h",
            "<",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            ">;)",
            "Lcom/vrem/wifianalyzer/c/a/c;"
        }
    .end annotation

    iget-object v0, p2, Landroid/support/v4/g/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/vrem/wifianalyzer/c/a/c;

    iget-object v1, p2, Landroid/support/v4/g/h;->b:Ljava/lang/Object;

    check-cast v1, Lcom/vrem/wifianalyzer/c/a/c;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/a/c;->b()I

    move-result v2

    sub-int v2, p1, v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    div-double/2addr v2, v4

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/a/c;->a()I

    move-result v4

    int-to-double v4, v4

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/a/c;->a()I

    move-result v0

    if-lt v2, v0, :cond_0

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/c/a/c;->a()I

    move-result v0

    if-gt v2, v0, :cond_0

    new-instance v0, Lcom/vrem/wifianalyzer/c/a/c;

    invoke-direct {v0, v2, p1}, Lcom/vrem/wifianalyzer/c/a/c;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/vrem/wifianalyzer/c/a/c;->a:Lcom/vrem/wifianalyzer/c/a/c;

    goto :goto_0
.end method

.method public abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/g/h",
            "<",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            ">;"
        }
    .end annotation
.end method

.method public a(I)Z
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/a/g;->b:Landroid/support/v4/g/h;

    iget-object v0, v0, Landroid/support/v4/g/h;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/a/g;->b:Landroid/support/v4/g/h;

    iget-object v0, v0, Landroid/support/v4/g/h;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract a(Ljava/lang/String;I)Z
.end method

.method public abstract b(Ljava/lang/String;)Landroid/support/v4/g/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/support/v4/g/h",
            "<",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            ">;"
        }
    .end annotation
.end method

.method public b(I)Lcom/vrem/wifianalyzer/c/a/c;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/vrem/wifianalyzer/c/a/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/a/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/g/h;

    invoke-virtual {p0, p1, v0}, Lcom/vrem/wifianalyzer/c/a/g;->a(ILandroid/support/v4/g/h;)Lcom/vrem/wifianalyzer/c/a/c;

    move-result-object v0

    sget-object v2, Lcom/vrem/wifianalyzer/c/a/c;->a:Lcom/vrem/wifianalyzer/c/a/c;

    invoke-virtual {v2, v0}, Lcom/vrem/wifianalyzer/c/a/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/vrem/wifianalyzer/c/a/c;->a:Lcom/vrem/wifianalyzer/c/a/c;

    goto :goto_0
.end method

.method public abstract b(ILandroid/support/v4/g/h;)Lcom/vrem/wifianalyzer/c/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/g/h",
            "<",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            ">;)",
            "Lcom/vrem/wifianalyzer/c/a/c;"
        }
    .end annotation
.end method

.method c(I)Lcom/vrem/wifianalyzer/c/a/c;
    .locals 4

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/a/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/g/h;

    iget-object v1, v0, Landroid/support/v4/g/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/vrem/wifianalyzer/c/a/c;

    iget-object v0, v0, Landroid/support/v4/g/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/vrem/wifianalyzer/c/a/c;

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/c/a/c;->a()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/a/c;->a()I

    move-result v0

    if-gt p1, v0, :cond_0

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/c/a/c;->b()I

    move-result v0

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/c/a/c;->a()I

    move-result v1

    sub-int v1, p1, v1

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v1, v0

    new-instance v0, Lcom/vrem/wifianalyzer/c/a/c;

    invoke-direct {v0, p1, v1}, Lcom/vrem/wifianalyzer/c/a/c;-><init>(II)V

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/vrem/wifianalyzer/c/a/c;->a:Lcom/vrem/wifianalyzer/c/a/c;

    goto :goto_0
.end method
