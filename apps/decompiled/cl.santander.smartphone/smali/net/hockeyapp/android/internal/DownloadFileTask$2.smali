.class Lnet/hockeyapp/android/internal/DownloadFileTask$2;
.super Ljava/lang/Object;
.source "DownloadFileTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/internal/DownloadFileTask;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/internal/DownloadFileTask;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/internal/DownloadFileTask;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lnet/hockeyapp/android/internal/DownloadFileTask$2;->this$0:Lnet/hockeyapp/android/internal/DownloadFileTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lnet/hockeyapp/android/internal/DownloadFileTask$2;->this$0:Lnet/hockeyapp/android/internal/DownloadFileTask;

    # getter for: Lnet/hockeyapp/android/internal/DownloadFileTask;->notifier:Lnet/hockeyapp/android/internal/DownloadFileListener;
    invoke-static {v0}, Lnet/hockeyapp/android/internal/DownloadFileTask;->access$000(Lnet/hockeyapp/android/internal/DownloadFileTask;)Lnet/hockeyapp/android/internal/DownloadFileListener;

    move-result-object v0

    iget-object v1, p0, Lnet/hockeyapp/android/internal/DownloadFileTask$2;->this$0:Lnet/hockeyapp/android/internal/DownloadFileTask;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/hockeyapp/android/internal/DownloadFileListener;->downloadFailed(Lnet/hockeyapp/android/internal/DownloadFileTask;Ljava/lang/Boolean;)V

    .line 180
    return-void
.end method
