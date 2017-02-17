.class Lcom/vrem/wifianalyzer/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vrem/wifianalyzer/a/f;


# instance fields
.field private final a:Landroid/support/v4/b/k;


# direct methods
.method constructor <init>(Landroid/support/v4/b/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vrem/wifianalyzer/a/c;->a:Landroid/support/v4/b/k;

    return-void
.end method

.method private a(Lcom/vrem/wifianalyzer/MainActivity;)V
    .locals 3

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/MainActivity;->e()Landroid/support/v4/b/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/b/p;->a()Landroid/support/v4/b/u;

    move-result-object v0

    const v1, 0x7f0f00a5

    iget-object v2, p0, Lcom/vrem/wifianalyzer/a/c;->a:Landroid/support/v4/b/k;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/b/u;->a(ILandroid/support/v4/b/k;)Landroid/support/v4/b/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/b/u;->a()I

    return-void
.end method


# virtual methods
.method public a(Lcom/vrem/wifianalyzer/MainActivity;Landroid/view/MenuItem;Lcom/vrem/wifianalyzer/a/e;)V
    .locals 1

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/MainActivity;->l()Lcom/vrem/wifianalyzer/a/g;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/vrem/wifianalyzer/a/g;->a(Lcom/vrem/wifianalyzer/a/e;)V

    invoke-direct {p0, p1}, Lcom/vrem/wifianalyzer/a/c;->a(Lcom/vrem/wifianalyzer/MainActivity;)V

    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vrem/wifianalyzer/MainActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/MainActivity;->k()V

    return-void
.end method
