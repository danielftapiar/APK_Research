.class Lnet/veritran/VTCommonActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "VTCommonActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/VTCommonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/VTCommonActivity;


# direct methods
.method constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 266
    iput-object p1, p0, Lnet/veritran/VTCommonActivity$1;->this$0:Lnet/veritran/VTCommonActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 269
    const-string v3, "PUSH_NOTIFICATION_REG_WAS_ERROR_CONSTANT"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 271
    .local v2, "wasError":Z
    const-string v3, "PUSH_NOTIFICATION_REG_TYPE_CONSTANT"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "regType":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v3, "PUSH_NOTIFICATION_REGISTER_CONSTANT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 275
    const-string v3, "PUSH_NOTIFICATION_REGISTER_REG_ID_CONSTANT"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "registrationId":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 279
    const-string v1, ""

    .line 282
    :cond_0
    invoke-static {}, Lnet/veritran/android/implementation/push/PushLibrary;->getInstance()Lnet/veritran/android/implementation/push/PushLibrary;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lnet/veritran/android/implementation/push/PushLibrary;->oldGCMRegistrationFinished(ZLjava/lang/String;)V

    .line 288
    .end local v1    # "registrationId":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 284
    :cond_2
    if-eqz v0, :cond_1

    const-string v3, "PUSH_NOTIFICATION_UNREGISTER_CONSTANT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 286
    invoke-static {}, Lnet/veritran/android/implementation/push/PushLibrary;->getInstance()Lnet/veritran/android/implementation/push/PushLibrary;

    move-result-object v3

    invoke-virtual {v3, v2}, Lnet/veritran/android/implementation/push/PushLibrary;->oldGCMUnRegistrationFinished(Z)V

    goto :goto_0
.end method
