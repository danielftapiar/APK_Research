.class Lnet/veritran/android/implementation/push/PushLibrary$1;
.super Landroid/os/AsyncTask;
.source "PushLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/android/implementation/push/PushLibrary;->unRegister()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/android/implementation/push/PushLibrary;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lnet/veritran/android/implementation/push/PushLibrary;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/android/implementation/push/PushLibrary;

    .prologue
    .line 109
    iput-object p1, p0, Lnet/veritran/android/implementation/push/PushLibrary$1;->this$0:Lnet/veritran/android/implementation/push/PushLibrary;

    iput-object p2, p0, Lnet/veritran/android/implementation/push/PushLibrary$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/veritran/android/implementation/push/PushLibrary$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/16 v7, 0x70

    .line 115
    :try_start_0
    iget-object v3, p0, Lnet/veritran/android/implementation/push/PushLibrary$1;->this$0:Lnet/veritran/android/implementation/push/PushLibrary;

    # getter for: Lnet/veritran/android/implementation/push/PushLibrary;->usesGMS:Z
    invoke-static {v3}, Lnet/veritran/android/implementation/push/PushLibrary;->access$000(Lnet/veritran/android/implementation/push/PushLibrary;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    iget-object v3, p0, Lnet/veritran/android/implementation/push/PushLibrary$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v2

    .line 117
    .local v2, "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    invoke-virtual {v2}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->unregister()V

    .line 135
    .end local v2    # "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    :goto_0
    iget-object v3, p0, Lnet/veritran/android/implementation/push/PushLibrary$1;->this$0:Lnet/veritran/android/implementation/push/PushLibrary;

    iget-object v4, p0, Lnet/veritran/android/implementation/push/PushLibrary$1;->val$context:Landroid/content/Context;

    const-string v5, ""

    # invokes: Lnet/veritran/android/implementation/push/PushLibrary;->setRegistrationId(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lnet/veritran/android/implementation/push/PushLibrary;->access$200(Lnet/veritran/android/implementation/push/PushLibrary;Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    const-string v3, "PushLibrary"

    const-string v4, "Device unRegistered"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v3

    const/16 v4, 0x70

    const-string v5, "000"

    invoke-virtual {v3, v4, v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    .line 138
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v3

    invoke-virtual {v3}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v3

    new-instance v4, Lnet/veritran/android/implementation/push/PushLibrary$1$1;

    invoke-direct {v4, p0}, Lnet/veritran/android/implementation/push/PushLibrary$1$1;-><init>(Lnet/veritran/android/implementation/push/PushLibrary$1;)V

    invoke-virtual {v3, v4}, Lnet/veritran/VTAbstractActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 155
    :goto_1
    const/4 v3, 0x0

    return-object v3

    .line 123
    :cond_0
    const-string v3, "PushLibrary"

    const-string v4, "UnRegister old GCM"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v3, p0, Lnet/veritran/android/implementation/push/PushLibrary$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gcm/GCMRegistrar;->unregister(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 128
    :try_start_1
    iget-object v3, p0, Lnet/veritran/android/implementation/push/PushLibrary$1;->this$0:Lnet/veritran/android/implementation/push/PushLibrary;

    # getter for: Lnet/veritran/android/implementation/push/PushLibrary;->latchUnRegister:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v3}, Lnet/veritran/android/implementation/push/PushLibrary;->access$100(Lnet/veritran/android/implementation/push/PushLibrary;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unregistration failed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 143
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 144
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "PushLibrary"

    const-string v4, "can\'t connect to GMC server to unregister."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/16 v1, 0x65

    .line 147
    .local v1, "errorCode":I
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v3

    const-string v4, "101"

    invoke-virtual {v3, v7, v4}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    .line 148
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v3

    invoke-virtual {v3}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v3

    new-instance v4, Lnet/veritran/android/implementation/push/PushLibrary$1$2;

    invoke-direct {v4, p0}, Lnet/veritran/android/implementation/push/PushLibrary$1$2;-><init>(Lnet/veritran/android/implementation/push/PushLibrary$1;)V

    invoke-virtual {v3, v4}, Lnet/veritran/VTAbstractActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
