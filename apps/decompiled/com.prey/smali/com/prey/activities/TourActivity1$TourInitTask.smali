.class Lcom/prey/activities/TourActivity1$TourInitTask;
.super Landroid/os/AsyncTask;
.source "TourActivity1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/activities/TourActivity1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TourInitTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field progressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/prey/activities/TourActivity1;


# direct methods
.method private constructor <init>(Lcom/prey/activities/TourActivity1;)V
    .locals 1

    .prologue
    .line 104
    iput-object p1, p0, Lcom/prey/activities/TourActivity1$TourInitTask;->this$0:Lcom/prey/activities/TourActivity1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prey/activities/TourActivity1$TourInitTask;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/prey/activities/TourActivity1;Lcom/prey/activities/TourActivity1$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/prey/activities/TourActivity1;
    .param p2, "x1"    # Lcom/prey/activities/TourActivity1$1;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/prey/activities/TourActivity1$TourInitTask;-><init>(Lcom/prey/activities/TourActivity1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/prey/activities/TourActivity1$TourInitTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 3
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    .line 117
    :try_start_0
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v0

    iget-object v1, p0, Lcom/prey/activities/TourActivity1$TourInitTask;->this$0:Lcom/prey/activities/TourActivity1;

    invoke-virtual {v1}, Lcom/prey/activities/TourActivity1;->getApplication()Landroid/app/Application;

    move-result-object v1

    const/16 v2, 0x7d2

    invoke-virtual {v0, v1, v2}, Lcom/prey/net/PreyWebServices;->sendEvent(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 118
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 104
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/prey/activities/TourActivity1$TourInitTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "unused"    # Ljava/lang/Void;

    .prologue
    .line 127
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method
