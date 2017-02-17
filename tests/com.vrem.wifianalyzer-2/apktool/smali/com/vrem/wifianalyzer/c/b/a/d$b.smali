.class Lcom/vrem/wifianalyzer/c/b/a/d$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vrem/wifianalyzer/c/b/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/vrem/wifianalyzer/c/b/a/d;

.field private final b:Landroid/widget/Button;

.field private final c:Landroid/support/v4/g/h;
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
.method constructor <init>(Lcom/vrem/wifianalyzer/c/b/a/d;Landroid/widget/Button;Landroid/support/v4/g/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Button;",
            "Landroid/support/v4/g/h",
            "<",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            "Lcom/vrem/wifianalyzer/c/a/c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/b/a/d$b;->a:Lcom/vrem/wifianalyzer/c/b/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vrem/wifianalyzer/c/b/a/d$b;->b:Landroid/widget/Button;

    iput-object p3, p0, Lcom/vrem/wifianalyzer/c/b/a/d$b;->c:Landroid/support/v4/g/h;

    return-void
.end method


# virtual methods
.method a()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/a/d$b;->b:Landroid/widget/Button;

    return-object v0
.end method

.method b()Landroid/support/v4/g/h;
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

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/a/d$b;->c:Landroid/support/v4/g/h;

    return-object v0
.end method
