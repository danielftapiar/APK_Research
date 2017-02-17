.class Lcom/vrem/wifianalyzer/c/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vrem/wifianalyzer/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/vrem/wifianalyzer/c/b;

.field private final b:Lcom/vrem/wifianalyzer/c/c/j;


# direct methods
.method constructor <init>(Lcom/vrem/wifianalyzer/c/b;Lcom/vrem/wifianalyzer/c/c/j;)V
    .locals 0

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/b$b;->a:Lcom/vrem/wifianalyzer/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vrem/wifianalyzer/c/b$b;->b:Lcom/vrem/wifianalyzer/c/c/j;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b$b;->a:Lcom/vrem/wifianalyzer/c/b;

    new-instance v1, Lcom/vrem/wifianalyzer/c/a;

    invoke-direct {v1}, Lcom/vrem/wifianalyzer/c/a;-><init>()V

    iget-object v2, p0, Lcom/vrem/wifianalyzer/c/b$b;->b:Lcom/vrem/wifianalyzer/c/c/j;

    invoke-virtual {v1, v2}, Lcom/vrem/wifianalyzer/c/a;->a(Lcom/vrem/wifianalyzer/c/c/j;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vrem/wifianalyzer/c/b;->a(Landroid/view/View;)Landroid/app/Dialog;

    return-void
.end method
