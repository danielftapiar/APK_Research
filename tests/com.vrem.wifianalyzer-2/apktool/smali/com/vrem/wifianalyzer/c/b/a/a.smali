.class Lcom/vrem/wifianalyzer/c/b/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d;


# instance fields
.field private final a:Lcom/vrem/wifianalyzer/c/a/b;

.field private final b:Landroid/support/v4/g/h;
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


# direct methods
.method constructor <init>(Lcom/vrem/wifianalyzer/c/a/b;Landroid/support/v4/g/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vrem/wifianalyzer/c/a/b;",
            "Landroid/support/v4/g/h",
            "<",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/b/a/a;->a:Lcom/vrem/wifianalyzer/c/a/b;

    iput-object p2, p0, Lcom/vrem/wifianalyzer/c/b/a/a;->b:Landroid/support/v4/g/h;

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/a/a;->a:Lcom/vrem/wifianalyzer/c/a/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/a/b;->d()Lcom/vrem/wifianalyzer/c/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/b/a/a;->b:Landroid/support/v4/g/h;

    invoke-virtual {v0, p1, v1}, Lcom/vrem/wifianalyzer/c/a/g;->b(ILandroid/support/v4/g/h;)Lcom/vrem/wifianalyzer/c/a/c;

    move-result-object v1

    sget-object v2, Lcom/vrem/wifianalyzer/c/a/c;->a:Lcom/vrem/wifianalyzer/c/a/c;

    if-ne v1, v2, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/c/a/c;->a()I

    move-result v1

    sget-object v2, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v2}, Lcom/vrem/wifianalyzer/b;->a()Lcom/vrem/wifianalyzer/settings/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vrem/wifianalyzer/settings/d;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/vrem/wifianalyzer/c/a/g;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(DZ)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const-wide/16 v2, 0x0

    cmpg-double v1, p1, v2

    if-gez v1, :cond_1

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    :goto_0
    add-double/2addr v2, p1

    double-to-int v1, v2

    if-eqz p3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/vrem/wifianalyzer/c/b/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    goto :goto_0

    :cond_2
    const/16 v2, -0x14

    if-gt v1, v2, :cond_0

    const/16 v2, -0x64

    if-le v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Lcom/a/a/h;)V
    .locals 0

    return-void
.end method
