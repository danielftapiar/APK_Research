.class Lde/viktorreiser/toolbox/net/DownloadManager$DownloadTask;
.super Landroid/os/AsyncTask;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/viktorreiser/toolbox/net/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile mmCancel:Z

.field private mmDataIndex:I

.field private mmDownloadData:Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;

.field final synthetic this$0:Lde/viktorreiser/toolbox/net/DownloadManager;


# direct methods
.method private constructor <init>(Lde/viktorreiser/toolbox/net/DownloadManager;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 284
    iput-object p1, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadTask;->this$0:Lde/viktorreiser/toolbox/net/DownloadManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 286
    iput-boolean v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadTask;->mmCancel:Z

    .line 287
    iput v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadTask;->mmDataIndex:I

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 293
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;

    iput-object v0, p0, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadTask;->mmDownloadData:Lde/viktorreiser/toolbox/net/DownloadManager$DownloadData;

    .line 296
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lde/viktorreiser/toolbox/net/DownloadManager$DownloadTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 302
    return-void
.end method
