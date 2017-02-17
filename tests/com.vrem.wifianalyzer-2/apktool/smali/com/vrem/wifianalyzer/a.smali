.class public Lcom/vrem/wifianalyzer/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Z

.field private b:Landroid/support/v4/g/h;
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
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/vrem/wifianalyzer/a;->a:Z

    sget-object v0, Lcom/vrem/wifianalyzer/c/a/g;->a:Landroid/support/v4/g/h;

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/a;->a(Landroid/support/v4/g/h;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/g/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/g/h",
            "<",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vrem/wifianalyzer/a;->b:Landroid/support/v4/g/h;

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vrem/wifianalyzer/a;->a:Z

    return v0
.end method

.method public b()Landroid/support/v4/g/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/g/h",
            "<",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vrem/wifianalyzer/a;->b:Landroid/support/v4/g/h;

    return-object v0
.end method
