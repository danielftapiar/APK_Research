.class Lcom/prey/barcodereader/BarcodeCaptureActivity$2;
.super Ljava/lang/Object;
.source "BarcodeCaptureActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/barcodereader/BarcodeCaptureActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/barcodereader/BarcodeCaptureActivity;


# direct methods
.method constructor <init>(Lcom/prey/barcodereader/BarcodeCaptureActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/barcodereader/BarcodeCaptureActivity;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/prey/barcodereader/BarcodeCaptureActivity$2;->this$0:Lcom/prey/barcodereader/BarcodeCaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/prey/barcodereader/BarcodeCaptureActivity$2;->this$0:Lcom/prey/barcodereader/BarcodeCaptureActivity;

    invoke-virtual {v0}, Lcom/prey/barcodereader/BarcodeCaptureActivity;->finish()V

    .line 200
    return-void
.end method
