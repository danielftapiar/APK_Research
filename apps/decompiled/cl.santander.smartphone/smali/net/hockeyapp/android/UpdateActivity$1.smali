.class Lnet/hockeyapp/android/UpdateActivity$1;
.super Lnet/hockeyapp/android/internal/DownloadFileListener;
.source "UpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/UpdateActivity;->startDownloadTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/UpdateActivity;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/UpdateActivity;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lnet/hockeyapp/android/UpdateActivity$1;->this$0:Lnet/hockeyapp/android/UpdateActivity;

    invoke-direct {p0}, Lnet/hockeyapp/android/internal/DownloadFileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadFailed(Lnet/hockeyapp/android/internal/DownloadFileTask;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "task"    # Lnet/hockeyapp/android/internal/DownloadFileTask;
    .param p2, "userWantsRetry"    # Ljava/lang/Boolean;

    .prologue
    .line 136
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity$1;->this$0:Lnet/hockeyapp/android/UpdateActivity;

    # invokes: Lnet/hockeyapp/android/UpdateActivity;->startDownloadTask()V
    invoke-static {v0}, Lnet/hockeyapp/android/UpdateActivity;->access$000(Lnet/hockeyapp/android/UpdateActivity;)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity$1;->this$0:Lnet/hockeyapp/android/UpdateActivity;

    invoke-virtual {v0}, Lnet/hockeyapp/android/UpdateActivity;->enableUpdateButton()V

    goto :goto_0
.end method

.method public downloadSuccessful(Lnet/hockeyapp/android/internal/DownloadFileTask;)V
    .locals 1
    .param p1, "task"    # Lnet/hockeyapp/android/internal/DownloadFileTask;

    .prologue
    .line 132
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity$1;->this$0:Lnet/hockeyapp/android/UpdateActivity;

    invoke-virtual {v0}, Lnet/hockeyapp/android/UpdateActivity;->enableUpdateButton()V

    .line 133
    return-void
.end method

.method public getStringForResource(I)Ljava/lang/String;
    .locals 2
    .param p1, "resourceID"    # I

    .prologue
    .line 145
    invoke-static {}, Lnet/hockeyapp/android/UpdateManager;->getLastListener()Lnet/hockeyapp/android/UpdateManagerListener;

    move-result-object v0

    .line 146
    .local v0, "listener":Lnet/hockeyapp/android/UpdateManagerListener;
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/UpdateManagerListener;->getStringForResource(I)Ljava/lang/String;

    move-result-object v1

    .line 150
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
