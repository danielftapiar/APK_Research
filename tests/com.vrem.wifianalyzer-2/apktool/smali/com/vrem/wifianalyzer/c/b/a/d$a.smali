.class Lcom/vrem/wifianalyzer/c/b/a/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vrem/wifianalyzer/c/b/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/vrem/wifianalyzer/c/b/a/d;

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
.method constructor <init>(Lcom/vrem/wifianalyzer/c/b/a/d;Landroid/support/v4/g/h;)V
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

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/b/a/d$a;->a:Lcom/vrem/wifianalyzer/c/b/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vrem/wifianalyzer/c/b/a/d$a;->b:Landroid/support/v4/g/h;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/a/d$a;->a:Lcom/vrem/wifianalyzer/c/b/a/d;

    invoke-static {v0}, Lcom/vrem/wifianalyzer/c/b/a/d;->a(Lcom/vrem/wifianalyzer/c/b/a/d;)Lcom/vrem/wifianalyzer/a;

    move-result-object v0

    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/b/a/d$a;->b:Landroid/support/v4/g/h;

    invoke-virtual {v0, v1}, Lcom/vrem/wifianalyzer/a;->a(Landroid/support/v4/g/h;)V

    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->c()Lcom/vrem/wifianalyzer/c/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/d/d;->a()V

    return-void
.end method
