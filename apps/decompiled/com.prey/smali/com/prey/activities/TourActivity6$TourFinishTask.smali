.class Lcom/prey/activities/TourActivity6$TourFinishTask;
.super Landroid/os/AsyncTask;
.source "TourActivity6.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/activities/TourActivity6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TourFinishTask"
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
.field final synthetic this$0:Lcom/prey/activities/TourActivity6;


# direct methods
.method private constructor <init>(Lcom/prey/activities/TourActivity6;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/prey/activities/TourActivity6$TourFinishTask;->this$0:Lcom/prey/activities/TourActivity6;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/prey/activities/TourActivity6;Lcom/prey/activities/TourActivity6$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/prey/activities/TourActivity6;
    .param p2, "x1"    # Lcom/prey/activities/TourActivity6$1;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/prey/activities/TourActivity6$TourFinishTask;-><init>(Lcom/prey/activities/TourActivity6;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/prey/activities/TourActivity6$TourFinishTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 3
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    .line 114
    :try_start_0
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v0

    iget-object v1, p0, Lcom/prey/activities/TourActivity6$TourFinishTask;->this$0:Lcom/prey/activities/TourActivity6;

    invoke-virtual {v1}, Lcom/prey/activities/TourActivity6;->getApplication()Landroid/app/Application;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v0, v1, v2}, Lcom/prey/net/PreyWebServices;->sendEvent(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 115
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 105
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/prey/activities/TourActivity6$TourFinishTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "unused"    # Ljava/lang/Void;

    .prologue
    .line 122
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method
