.class public Lcom/vrem/wifianalyzer/c/b/c/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I

.field private final c:Landroid/view/ViewGroup$LayoutParams;

.field private d:Lcom/a/a/d;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/b/c/e;->a:Landroid/content/Context;

    iput p2, p0, Lcom/vrem/wifianalyzer/c/b/c/e;->b:I

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/vrem/wifianalyzer/c/b/c/e;->c:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/b;
    .locals 2

    new-instance v0, Lcom/a/a/b;

    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/b/c/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/a/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/c/b/c/e;->a(Lcom/a/a/b;)V

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/c/b/c/e;->c(Lcom/a/a/b;)V

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/c/b/c/e;->b(Lcom/a/a/b;)V

    return-object v0
.end method

.method public a(Lcom/a/a/d;)Lcom/vrem/wifianalyzer/c/b/c/e;
    .locals 0

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/b/c/e;->d:Lcom/a/a/d;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/vrem/wifianalyzer/c/b/c/e;
    .locals 0

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/b/c/e;->e:Ljava/lang/String;

    return-object p0
.end method

.method a(Lcom/a/a/b;)V
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/c/e;->c:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Lcom/a/a/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/a/a/b;->setVisibility(I)V

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/vrem/wifianalyzer/c/b/c/e;
    .locals 0

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/b/c/e;->f:Ljava/lang/String;

    return-object p0
.end method

.method b(Lcom/a/a/b;)V
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/a/a/b;->getViewport()Lcom/a/a/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/a/a/h;->a(Z)V

    invoke-virtual {v0, v1}, Lcom/a/a/h;->g(Z)V

    const-wide/high16 v2, -0x3fa7000000000000L    # -100.0

    invoke-virtual {v0, v2, v3}, Lcom/a/a/h;->b(D)V

    const-wide/high16 v2, -0x3fcc000000000000L    # -20.0

    invoke-virtual {v0, v2, v3}, Lcom/a/a/h;->a(D)V

    invoke-virtual {v0, v1}, Lcom/a/a/h;->f(Z)V

    return-void
.end method

.method c(Lcom/a/a/b;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/a/a/b;->getGridLabelRenderer()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/a/a/c;->c(Z)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(I)V

    iget v1, p0, Lcom/vrem/wifianalyzer/c/b/c/e;->b:I

    invoke-virtual {v0, v1}, Lcom/a/a/c;->b(I)V

    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/b/c/e;->d:Lcom/a/a/d;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/b/c/e;->d:Lcom/a/a/d;

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/d;)V

    :cond_0
    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/b/c/e;->e:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/b/c/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/a/a/c;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/a/a/c;->e(Z)V

    :goto_0
    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/b/c/e;->f:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/b/c/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/a/a/c;->d(Z)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {v0, v2}, Lcom/a/a/c;->e(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Lcom/a/a/c;->d(Z)V

    goto :goto_1
.end method
