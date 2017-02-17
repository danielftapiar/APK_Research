.class Lcom/prey/activities/FeedbackActivity$1;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/activities/FeedbackActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/activities/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/prey/activities/FeedbackActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/activities/FeedbackActivity;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/prey/activities/FeedbackActivity$1;->this$0:Lcom/prey/activities/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "market://details?id=com.prey"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lcom/prey/activities/FeedbackActivity$1;->this$0:Lcom/prey/activities/FeedbackActivity;

    invoke-virtual {v1, v0}, Lcom/prey/activities/FeedbackActivity;->startActivity(Landroid/content/Intent;)V

    .line 55
    iget-object v1, p0, Lcom/prey/activities/FeedbackActivity$1;->this$0:Lcom/prey/activities/FeedbackActivity;

    invoke-virtual {v1}, Lcom/prey/activities/FeedbackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v1

    sget v2, Lcom/prey/activities/FeedbackActivity;->FLAG_FEEDBACK_SEND:I

    invoke-virtual {v1, v2}, Lcom/prey/PreyConfig;->setFlagFeedback(I)V

    .line 56
    iget-object v1, p0, Lcom/prey/activities/FeedbackActivity$1;->this$0:Lcom/prey/activities/FeedbackActivity;

    invoke-virtual {v1}, Lcom/prey/activities/FeedbackActivity;->finish()V

    .line 57
    return-void
.end method
