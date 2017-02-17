.class public Lcom/vrem/wifianalyzer/c/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vrem/wifianalyzer/c/b$b;,
        Lcom/vrem/wifianalyzer/c/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/Dialog;

    sget-object v1, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/b;->e()Lcom/vrem/wifianalyzer/MainActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const v1, 0x7f0f0087

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vrem/wifianalyzer/c/b$a;

    invoke-direct {v2, p0, v0}, Lcom/vrem/wifianalyzer/c/b$a;-><init>(Lcom/vrem/wifianalyzer/c/b;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method

.method a(Landroid/view/View;Lcom/vrem/wifianalyzer/c/c/j;)V
    .locals 1

    new-instance v0, Lcom/vrem/wifianalyzer/c/b$b;

    invoke-direct {v0, p0, p2}, Lcom/vrem/wifianalyzer/c/b$b;-><init>(Lcom/vrem/wifianalyzer/c/b;Lcom/vrem/wifianalyzer/c/c/j;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
