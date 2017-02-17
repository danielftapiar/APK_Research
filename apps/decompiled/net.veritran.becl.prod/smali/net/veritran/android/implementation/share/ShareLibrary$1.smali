.class Lnet/veritran/android/implementation/share/ShareLibrary$1;
.super Ljava/lang/Object;
.source "ShareLibrary.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/model/PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/android/implementation/share/ShareLibrary;->shareScreenCapture(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lnet/veritran/vtuserapplication/api/CallapiListenerResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/android/implementation/share/ShareLibrary;

.field final synthetic val$allowedAppFinal:Ljava/lang/String;

.field final synthetic val$backgroundColorFinal:Ljava/lang/String;

.field final synthetic val$lt:Lnet/veritran/vtuserapplication/api/CallapiListenerResult;

.field final synthetic val$shareTypeFinal:I

.field final synthetic val$visualAreaOrComponentIdFinal:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/veritran/android/implementation/share/ShareLibrary;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lnet/veritran/vtuserapplication/api/CallapiListenerResult;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/android/implementation/share/ShareLibrary;

    .prologue
    .line 115
    iput-object p1, p0, Lnet/veritran/android/implementation/share/ShareLibrary$1;->this$0:Lnet/veritran/android/implementation/share/ShareLibrary;

    iput-object p2, p0, Lnet/veritran/android/implementation/share/ShareLibrary$1;->val$visualAreaOrComponentIdFinal:Ljava/lang/String;

    iput p3, p0, Lnet/veritran/android/implementation/share/ShareLibrary$1;->val$shareTypeFinal:I

    iput-object p4, p0, Lnet/veritran/android/implementation/share/ShareLibrary$1;->val$backgroundColorFinal:Ljava/lang/String;

    iput-object p5, p0, Lnet/veritran/android/implementation/share/ShareLibrary$1;->val$allowedAppFinal:Ljava/lang/String;

    iput-object p6, p0, Lnet/veritran/android/implementation/share/ShareLibrary$1;->val$lt:Lnet/veritran/vtuserapplication/api/CallapiListenerResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyResult(Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;)V
    .locals 6
    .param p1, "result"    # Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;

    .prologue
    .line 118
    sget-object v0, Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;->PERMISSION_GRANTED:Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;

    if-ne p1, v0, :cond_1

    .line 119
    iget-object v0, p0, Lnet/veritran/android/implementation/share/ShareLibrary$1;->this$0:Lnet/veritran/android/implementation/share/ShareLibrary;

    iget-object v1, p0, Lnet/veritran/android/implementation/share/ShareLibrary$1;->val$visualAreaOrComponentIdFinal:Ljava/lang/String;

    iget v2, p0, Lnet/veritran/android/implementation/share/ShareLibrary$1;->val$shareTypeFinal:I

    iget-object v3, p0, Lnet/veritran/android/implementation/share/ShareLibrary$1;->val$backgroundColorFinal:Ljava/lang/String;

    iget-object v4, p0, Lnet/veritran/android/implementation/share/ShareLibrary$1;->val$allowedAppFinal:Ljava/lang/String;

    iget-object v5, p0, Lnet/veritran/android/implementation/share/ShareLibrary$1;->val$lt:Lnet/veritran/vtuserapplication/api/CallapiListenerResult;

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/android/implementation/share/ShareLibrary;->shareScreenCaptureImplement(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lnet/veritran/vtuserapplication/api/CallapiListenerResult;)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    sget-object v0, Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;->PERMISSION_DENIED:Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;

    if-ne p1, v0, :cond_0

    .line 121
    iget-object v0, p0, Lnet/veritran/android/implementation/share/ShareLibrary$1;->val$lt:Lnet/veritran/vtuserapplication/api/CallapiListenerResult;

    const/16 v1, 0x65

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/api/CallapiListenerResult;->notifyResult(I)V

    goto :goto_0
.end method
