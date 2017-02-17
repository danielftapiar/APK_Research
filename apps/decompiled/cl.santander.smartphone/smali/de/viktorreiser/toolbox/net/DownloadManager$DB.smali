.class public Lde/viktorreiser/toolbox/net/DownloadManager$DB;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/viktorreiser/toolbox/net/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DB"
.end annotation


# static fields
.field public static final ADD_TIME:Ljava/lang/String; = "addTime"

.field public static final BYPASS_MOBILE_RESTRICTION:Ljava/lang/String; = "bypass"

.field public static final CHANGE_ATTEMPTS:Ljava/lang/String; = "changeAttempts"

.field public static final CHANGE_ATTEMPT_COUNT:Ljava/lang/String; = "changeAttemptCount"

.field public static final DELETE_AFTER_PERSIST:Ljava/lang/String; = "persistDelete"

.field public static final DOWNLOAD_START_TIME:Ljava/lang/String; = "downloadStartTime"

.field public static final FINISH_TIME:Ljava/lang/String; = "finishTime"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final MIME:Ljava/lang/String; = "mime"

.field public static final PERSIT_PATH:Ljava/lang/String; = "persistPath"

.field public static final PRIORITY:Ljava/lang/String; = "priority"

.field public static final RATE:Ljava/lang/String; = "rate"

.field public static final RESTRICT_TO_WIFI:Ljava/lang/String; = "restrictToWifi"

.field public static final SIZE:Ljava/lang/String; = "size"

.field public static final STATUS:Ljava/lang/String; = "status"

.field private static final TABLE_NAME:Ljava/lang/String; = "downloads"

.field public static final URI:Ljava/lang/String; = "uri"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
