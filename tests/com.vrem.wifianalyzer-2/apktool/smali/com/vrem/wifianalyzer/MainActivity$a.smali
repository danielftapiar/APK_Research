.class Lcom/vrem/wifianalyzer/MainActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vrem/wifianalyzer/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/vrem/wifianalyzer/MainActivity;


# direct methods
.method private constructor <init>(Lcom/vrem/wifianalyzer/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/vrem/wifianalyzer/MainActivity$a;->a:Lcom/vrem/wifianalyzer/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vrem/wifianalyzer/MainActivity;Lcom/vrem/wifianalyzer/MainActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vrem/wifianalyzer/MainActivity$a;-><init>(Lcom/vrem/wifianalyzer/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/MainActivity$a;->a:Lcom/vrem/wifianalyzer/MainActivity;

    invoke-static {v0}, Lcom/vrem/wifianalyzer/MainActivity;->a(Lcom/vrem/wifianalyzer/MainActivity;)Lcom/vrem/wifianalyzer/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/a/g;->b()Lcom/vrem/wifianalyzer/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/a/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->a()Lcom/vrem/wifianalyzer/settings/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/settings/d;->j()V

    :cond_0
    return-void
.end method
