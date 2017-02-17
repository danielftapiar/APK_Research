.class Lcom/vrem/wifianalyzer/c/d/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/vrem/wifianalyzer/c/d/d;

.field private final b:Landroid/os/Handler;

.field private final c:Lcom/vrem/wifianalyzer/settings/d;

.field private d:Z


# direct methods
.method constructor <init>(Lcom/vrem/wifianalyzer/c/d/d;Landroid/os/Handler;Lcom/vrem/wifianalyzer/settings/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/d/c;->a:Lcom/vrem/wifianalyzer/c/d/d;

    iput-object p2, p0, Lcom/vrem/wifianalyzer/c/d/c;->b:Landroid/os/Handler;

    iput-object p3, p0, Lcom/vrem/wifianalyzer/c/d/c;->c:Lcom/vrem/wifianalyzer/settings/d;

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/d/c;->b()V

    return-void
.end method

.method private a(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/d/c;->a()V

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/d/c;->b:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vrem/wifianalyzer/c/d/c;->d:Z

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/d/c;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vrem/wifianalyzer/c/d/c;->d:Z

    return-void
.end method

.method b()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vrem/wifianalyzer/c/d/c;->a(I)V

    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/d/c;->a:Lcom/vrem/wifianalyzer/c/d/d;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/d/d;->a()V

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/d/c;->c:Lcom/vrem/wifianalyzer/settings/d;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/settings/d;->b()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/vrem/wifianalyzer/c/d/c;->a(I)V

    return-void
.end method
