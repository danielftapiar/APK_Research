.class Lcom/prey/barcodereader/BarcodeActivity$5;
.super Ljava/lang/Object;
.source "BarcodeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/barcodereader/BarcodeActivity;->onPrepareDialog(ILandroid/app/Dialog;)V
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
    .line 257
    iput-object p1, p0, Lcom/prey/barcodereader/BarcodeActivity$5;->this$0:Lcom/prey/barcodereader/BarcodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 260
    return-void
.end method
