.class Lnet/veritran/vtuserapplication/api/qr/android/QrLibrary$1;
.super Ljava/lang/Object;
.source "QrLibrary.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/model/PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/vtuserapplication/api/qr/android/QrLibrary;->readQr(ILjava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/vtuserapplication/api/qr/android/QrLibrary;

.field final synthetic val$formatsToFilterFinal:Ljava/lang/String;

.field final synthetic val$timeoutfinal:I


# direct methods
.method constructor <init>(Lnet/veritran/vtuserapplication/api/qr/android/QrLibrary;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/vtuserapplication/api/qr/android/QrLibrary;

    .prologue
    .line 83
    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/qr/android/QrLibrary$1;->this$0:Lnet/veritran/vtuserapplication/api/qr/android/QrLibrary;

    iput p2, p0, Lnet/veritran/vtuserapplication/api/qr/android/QrLibrary$1;->val$timeoutfinal:I

    iput-object p3, p0, Lnet/veritran/vtuserapplication/api/qr/android/QrLibrary$1;->val$formatsToFilterFinal:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyResult(Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;)V
    .locals 3
    .param p1, "result"    # Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;

    .prologue
    .line 86
    sget-object v0, Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;->PERMISSION_GRANTED:Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;

    if-ne p1, v0, :cond_1

    .line 87
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/qr/android/QrLibrary$1;->this$0:Lnet/veritran/vtuserapplication/api/qr/android/QrLibrary;

    iget v1, p0, Lnet/veritran/vtuserapplication/api/qr/android/QrLibrary$1;->val$timeoutfinal:I

    iget-object v2, p0, Lnet/veritran/vtuserapplication/api/qr/android/QrLibrary$1;->val$formatsToFilterFinal:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/api/qr/android/QrLibrary;->readQrImplement(ILjava/lang/String;)I

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    sget-object v0, Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;->PERMISSION_DENIED:Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;

    if-ne p1, v0, :cond_0

    .line 89
    const-string v0, "104"

    invoke-static {v0}, Lnet/veritran/vtuserapplication/api/qr/VTAPIQRManager;->responseFail(Ljava/lang/String;)V

    .line 90
    const-string v0, "QR"

    const-string v1, "QR not execute - not permissions"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
