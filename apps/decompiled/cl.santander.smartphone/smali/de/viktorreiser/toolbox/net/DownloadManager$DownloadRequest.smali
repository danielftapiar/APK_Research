.class public Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/viktorreiser/toolbox/net/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadRequest"
.end annotation


# instance fields
.field public bypassMobileSizeRestriction:Z

.field public deleteAfterPersist:Z

.field public networkChangeAttempts:I

.field public persistPath:Ljava/lang/String;

.field public priority:I

.field public restrictToWifi:Z

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;->uri:Landroid/net/Uri;

    .line 156
    iput-object v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;->persistPath:Ljava/lang/String;

    .line 157
    const/4 v0, 0x2

    iput v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;->priority:I

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;->deleteAfterPersist:Z

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;->bypassMobileSizeRestriction:Z

    .line 160
    const/4 v0, 0x5

    iput v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;->networkChangeAttempts:I

    .line 165
    iput-object p1, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;->uri:Landroid/net/Uri;

    .line 166
    return-void
.end method


# virtual methods
.method public setBypassMobileSizeRestriction(Z)Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;
    .locals 0
    .param p1, "bypass"    # Z

    .prologue
    .line 180
    iput-boolean p1, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;->bypassMobileSizeRestriction:Z

    .line 181
    return-object p0
.end method

.method public setDeleteAfterPersist(Z)Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;
    .locals 0
    .param p1, "delete"    # Z

    .prologue
    .line 175
    iput-boolean p1, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;->deleteAfterPersist:Z

    .line 176
    return-object p0
.end method

.method public setNetworkChangeAttempts(I)Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;
    .locals 1
    .param p1, "attempts"    # I

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;->networkChangeAttempts:I

    .line 186
    return-object p0
.end method

.method public setPersistPath(Ljava/lang/String;)Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;
    .locals 0
    .param p1, "persistPath"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;->persistPath:Ljava/lang/String;

    .line 171
    return-object p0
.end method

.method public setPriority(I)Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;
    .locals 1
    .param p1, "priority"    # I

    .prologue
    .line 190
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 191
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 192
    :cond_0
    iput p1, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;->priority:I

    .line 195
    :cond_1
    return-object p0
.end method

.method public setRestrictToWifi(Z)Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;
    .locals 0
    .param p1, "restrict"    # Z

    .prologue
    .line 199
    iput-boolean p1, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadRequest;->restrictToWifi:Z

    .line 200
    return-object p0
.end method
