.class Lcom/vrem/wifianalyzer/c/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vrem/wifianalyzer/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/vrem/wifianalyzer/c/b;

.field private final b:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/vrem/wifianalyzer/c/b;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/b$a;->a:Lcom/vrem/wifianalyzer/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vrem/wifianalyzer/c/b$a;->b:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b$a;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
