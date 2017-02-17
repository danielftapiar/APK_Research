.class public abstract Lnet/hockeyapp/android/internal/DownloadFileListener;
.super Lnet/hockeyapp/android/StringListener;
.source "DownloadFileListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lnet/hockeyapp/android/StringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadFailed(Lnet/hockeyapp/android/internal/DownloadFileTask;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "task"    # Lnet/hockeyapp/android/internal/DownloadFileTask;
    .param p2, "userWantsRetry"    # Ljava/lang/Boolean;

    .prologue
    .line 41
    return-void
.end method

.method public downloadSuccessful(Lnet/hockeyapp/android/internal/DownloadFileTask;)V
    .locals 0
    .param p1, "task"    # Lnet/hockeyapp/android/internal/DownloadFileTask;

    .prologue
    .line 44
    return-void
.end method
