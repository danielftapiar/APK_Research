.class Lcom/prey/activities/InitActivity$OnboardingInitTask;
.super Landroid/os/AsyncTask;
.source "InitActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/activities/InitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnboardingInitTask"
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
.field final synthetic this$0:Lcom/prey/activities/InitActivity;


# direct methods
.method private constructor <init>(Lcom/prey/activities/InitActivity;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/prey/activities/InitActivity$OnboardingInitTask;->this$0:Lcom/prey/activities/InitActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/prey/activities/InitActivity;Lcom/prey/activities/InitActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/prey/activities/InitActivity;
    .param p2, "x1"    # Lcom/prey/activities/InitActivity$1;

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/prey/activities/InitActivity$OnboardingInitTask;-><init>(Lcom/prey/activities/InitActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 338
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/prey/activities/InitActivity$OnboardingInitTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 3
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    .line 347
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v0

    iget-object v1, p0, Lcom/prey/activities/InitActivity$OnboardingInitTask;->this$0:Lcom/prey/activities/InitActivity;

    invoke-virtual {v1}, Lcom/prey/activities/InitActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const/16 v2, 0x7da

    invoke-virtual {v0, v1, v2}, Lcom/prey/net/PreyWebServices;->sendEvent(Landroid/content/Context;I)V

    .line 348
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 338
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/prey/activities/InitActivity$OnboardingInitTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "unused"    # Ljava/lang/Void;

    .prologue
    .line 354
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 343
    return-void
.end method
