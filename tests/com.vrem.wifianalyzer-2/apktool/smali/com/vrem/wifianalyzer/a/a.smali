.class Lcom/vrem/wifianalyzer/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vrem/wifianalyzer/a/f;


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vrem/wifianalyzer/a/a;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method a(Lcom/vrem/wifianalyzer/MainActivity;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vrem/wifianalyzer/a/a;->a:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public a(Lcom/vrem/wifianalyzer/MainActivity;Landroid/view/MenuItem;Lcom/vrem/wifianalyzer/a/e;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/vrem/wifianalyzer/a/a;->a(Lcom/vrem/wifianalyzer/MainActivity;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vrem/wifianalyzer/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
