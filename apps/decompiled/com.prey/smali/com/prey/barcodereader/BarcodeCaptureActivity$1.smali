.class Lcom/prey/barcodereader/BarcodeCaptureActivity$1;
.super Ljava/lang/Object;
.source "BarcodeCaptureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/barcodereader/BarcodeCaptureActivity;->requestCameraPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/barcodereader/BarcodeCaptureActivity;

.field final synthetic val$permissions:[Ljava/lang/String;

.field final synthetic val$thisActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/prey/barcodereader/BarcodeCaptureActivity;Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/barcodereader/BarcodeCaptureActivity;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/prey/barcodereader/BarcodeCaptureActivity$1;->this$0:Lcom/prey/barcodereader/BarcodeCaptureActivity;

    iput-object p2, p0, Lcom/prey/barcodereader/BarcodeCaptureActivity$1;->val$thisActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/prey/barcodereader/BarcodeCaptureActivity$1;->val$permissions:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/prey/barcodereader/BarcodeCaptureActivity$1;->val$thisActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/prey/barcodereader/BarcodeCaptureActivity$1;->val$permissions:[Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 100
    return-void
.end method
