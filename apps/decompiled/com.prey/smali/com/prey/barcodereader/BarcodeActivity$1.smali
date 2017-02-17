.class Lcom/prey/barcodereader/BarcodeActivity$1;
.super Ljava/lang/Object;
.source "BarcodeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/barcodereader/BarcodeActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/barcodereader/BarcodeActivity;


# direct methods
.method constructor <init>(Lcom/prey/barcodereader/BarcodeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/barcodereader/BarcodeActivity;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/prey/barcodereader/BarcodeActivity$1;->this$0:Lcom/prey/barcodereader/BarcodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    const-string v1, "click"

    invoke-static {v1}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 77
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/prey/barcodereader/BarcodeActivity$1;->this$0:Lcom/prey/barcodereader/BarcodeActivity;

    invoke-virtual {v1}, Lcom/prey/barcodereader/BarcodeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/prey/barcodereader/BarcodeCaptureActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "AutoFocus"

    iget-object v2, p0, Lcom/prey/barcodereader/BarcodeActivity$1;->this$0:Lcom/prey/barcodereader/BarcodeActivity;

    # getter for: Lcom/prey/barcodereader/BarcodeActivity;->autoFocus:Landroid/widget/CompoundButton;
    invoke-static {v2}, Lcom/prey/barcodereader/BarcodeActivity;->access$000(Lcom/prey/barcodereader/BarcodeActivity;)Landroid/widget/CompoundButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 79
    const-string v1, "UseFlash"

    iget-object v2, p0, Lcom/prey/barcodereader/BarcodeActivity$1;->this$0:Lcom/prey/barcodereader/BarcodeActivity;

    # getter for: Lcom/prey/barcodereader/BarcodeActivity;->useFlash:Landroid/widget/CompoundButton;
    invoke-static {v2}, Lcom/prey/barcodereader/BarcodeActivity;->access$100(Lcom/prey/barcodereader/BarcodeActivity;)Landroid/widget/CompoundButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    iget-object v1, p0, Lcom/prey/barcodereader/BarcodeActivity$1;->this$0:Lcom/prey/barcodereader/BarcodeActivity;

    const/16 v2, 0x2329

    invoke-virtual {v1, v0, v2}, Lcom/prey/barcodereader/BarcodeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 81
    return-void
.end method
