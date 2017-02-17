.class public Lcom/prey/activities/SetupActivity;
.super Lcom/prey/activities/PreyActivity;
.source "SetupActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/prey/activities/PreyActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDeviceType(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-static {p1}, Lcom/prey/PreyUtils;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/prey/activities/WelcomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/prey/activities/SetupActivity;->startActivity(Landroid/content/Intent;)V

    .line 24
    invoke-virtual {p0}, Lcom/prey/activities/SetupActivity;->finish()V

    .line 25
    return-void
.end method
