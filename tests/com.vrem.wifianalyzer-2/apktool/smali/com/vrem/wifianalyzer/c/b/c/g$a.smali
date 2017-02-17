.class Lcom/vrem/wifianalyzer/c/b/c/g$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vrem/wifianalyzer/c/b/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/vrem/wifianalyzer/c/b/c/g;


# direct methods
.method constructor <init>(Lcom/vrem/wifianalyzer/c/b/c/g;)V
    .locals 0

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/b/c/g$a;->a:Lcom/vrem/wifianalyzer/c/b/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Lcom/vrem/wifianalyzer/c/b;
    .locals 1

    new-instance v0, Lcom/vrem/wifianalyzer/c/b;

    invoke-direct {v0}, Lcom/vrem/wifianalyzer/c/b;-><init>()V

    return-object v0
.end method

.method private b()Lcom/vrem/wifianalyzer/c/a;
    .locals 1

    new-instance v0, Lcom/vrem/wifianalyzer/c/a;

    invoke-direct {v0}, Lcom/vrem/wifianalyzer/c/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/a/a/a/f;Lcom/a/a/a/c;)V
    .locals 2

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/c/g$a;->a:Lcom/vrem/wifianalyzer/c/b/c/g;

    invoke-static {v0}, Lcom/vrem/wifianalyzer/c/b/c/g;->a(Lcom/vrem/wifianalyzer/c/b/c/g;)Lcom/vrem/wifianalyzer/c/b/c/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vrem/wifianalyzer/c/b/c/h;->a(Lcom/a/a/a/f;)Lcom/vrem/wifianalyzer/c/c/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vrem/wifianalyzer/c/b/c/g$a;->b()Lcom/vrem/wifianalyzer/c/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vrem/wifianalyzer/c/a;->a(Lcom/vrem/wifianalyzer/c/c/j;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/vrem/wifianalyzer/c/b/c/g$a;->a()Lcom/vrem/wifianalyzer/c/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vrem/wifianalyzer/c/b;->a(Landroid/view/View;)Landroid/app/Dialog;

    :cond_0
    return-void
.end method
