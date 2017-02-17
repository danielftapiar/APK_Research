.class Lcom/prey/activities/FormFeedbackActivity$2;
.super Ljava/lang/Object;
.source "FormFeedbackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/activities/FormFeedbackActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/activities/FormFeedbackActivity;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/prey/activities/FormFeedbackActivity;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/activities/FormFeedbackActivity;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/prey/activities/FormFeedbackActivity$2;->this$0:Lcom/prey/activities/FormFeedbackActivity;

    iput-object p2, p0, Lcom/prey/activities/FormFeedbackActivity$2;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 69
    iget-object v5, p0, Lcom/prey/activities/FormFeedbackActivity$2;->val$input:Landroid/widget/EditText;

    if-eqz v5, :cond_0

    .line 70
    iget-object v5, p0, Lcom/prey/activities/FormFeedbackActivity$2;->this$0:Lcom/prey/activities/FormFeedbackActivity;

    invoke-virtual {v5}, Lcom/prey/activities/FormFeedbackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 71
    .local v1, "ctx":Landroid/content/Context;
    iget-object v5, p0, Lcom/prey/activities/FormFeedbackActivity$2;->this$0:Lcom/prey/activities/FormFeedbackActivity;

    invoke-virtual {v5}, Lcom/prey/activities/FormFeedbackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/prey/FileConfigReader;->getInstance(Landroid/content/Context;)Lcom/prey/FileConfigReader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/prey/FileConfigReader;->getEmailFeedback()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "emailFeedback":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    .local v4, "subject":Ljava/lang/StringBuffer;
    invoke-static {v1}, Lcom/prey/FileConfigReader;->getInstance(Landroid/content/Context;)Lcom/prey/FileConfigReader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/prey/FileConfigReader;->getSubjectFeedback()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const/4 v5, 0x7

    invoke-static {v5}, Lcom/prey/PreyUtils;->randomAlphaNumeric(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "text/plain"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v5, "android.intent.extra.EMAIL"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v5, "android.intent.extra.SUBJECT"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v5, "android.intent.extra.TEXT"

    iget-object v6, p0, Lcom/prey/activities/FormFeedbackActivity$2;->val$input:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const v5, 0x7f09005f

    invoke-virtual {v1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 81
    .local v0, "chooser":Landroid/content/Intent;
    iget-object v5, p0, Lcom/prey/activities/FormFeedbackActivity$2;->this$0:Lcom/prey/activities/FormFeedbackActivity;

    invoke-virtual {v5, v0}, Lcom/prey/activities/FormFeedbackActivity;->startActivity(Landroid/content/Intent;)V

    .line 83
    .end local v0    # "chooser":Landroid/content/Intent;
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v2    # "emailFeedback":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "subject":Ljava/lang/StringBuffer;
    :cond_0
    iget-object v5, p0, Lcom/prey/activities/FormFeedbackActivity$2;->this$0:Lcom/prey/activities/FormFeedbackActivity;

    invoke-virtual {v5}, Lcom/prey/activities/FormFeedbackActivity;->finish()V

    .line 84
    return-void
.end method
