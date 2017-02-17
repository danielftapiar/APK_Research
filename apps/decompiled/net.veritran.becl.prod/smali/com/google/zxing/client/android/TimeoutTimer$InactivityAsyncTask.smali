.class final Lcom/google/zxing/client/android/TimeoutTimer$InactivityAsyncTask;
.super Landroid/os/AsyncTask;
.source "TimeoutTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/client/android/TimeoutTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InactivityAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/zxing/client/android/TimeoutTimer;


# direct methods
.method private constructor <init>(Lcom/google/zxing/client/android/TimeoutTimer;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/zxing/client/android/TimeoutTimer$InactivityAsyncTask;->this$0:Lcom/google/zxing/client/android/TimeoutTimer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/client/android/TimeoutTimer;Lcom/google/zxing/client/android/TimeoutTimer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/zxing/client/android/TimeoutTimer;
    .param p2, "x1"    # Lcom/google/zxing/client/android/TimeoutTimer$1;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/google/zxing/client/android/TimeoutTimer$InactivityAsyncTask;-><init>(Lcom/google/zxing/client/android/TimeoutTimer;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/zxing/client/android/TimeoutTimer$InactivityAsyncTask;->this$0:Lcom/google/zxing/client/android/TimeoutTimer;

    iget-wide v0, v0, Lcom/google/zxing/client/android/TimeoutTimer;->timeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/TimeoutTimer$InactivityAsyncTask;->this$0:Lcom/google/zxing/client/android/TimeoutTimer;

    iget-wide v0, v0, Lcom/google/zxing/client/android/TimeoutTimer;->timeout:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 121
    # getter for: Lcom/google/zxing/client/android/TimeoutTimer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/zxing/client/android/TimeoutTimer;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Finishing activity due to inactivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/google/zxing/client/android/TimeoutTimer$InactivityAsyncTask;->this$0:Lcom/google/zxing/client/android/TimeoutTimer;

    # getter for: Lcom/google/zxing/client/android/TimeoutTimer;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/google/zxing/client/android/TimeoutTimer;->access$200(Lcom/google/zxing/client/android/TimeoutTimer;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0
.end method
