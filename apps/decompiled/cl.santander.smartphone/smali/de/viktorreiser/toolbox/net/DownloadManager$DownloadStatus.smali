.class public Lde/viktorreiser/toolbox/net/DownloadManager$DownloadStatus;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/viktorreiser/toolbox/net/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadStatus"
.end annotation


# static fields
.field public static final CANCELED:I = 0x4

.field public static final DISCARDED:I = 0x6

.field public static final DOWNLOADING:I = 0x5

.field public static final FAILED:I = 0x3

.field public static final PENDING:I = 0x2

.field public static final STOPPED:I = 0x7

.field public static final SUCCEED:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFinished(I)Z
    .locals 2
    .param p0, "status"    # I

    .prologue
    const/4 v0, 0x1

    .line 143
    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method
