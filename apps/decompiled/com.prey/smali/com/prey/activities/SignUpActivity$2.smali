.class Lcom/prey/activities/SignUpActivity$2;
.super Ljava/lang/Object;
.source "SignUpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/activities/SignUpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/activities/SignUpActivity;

.field final synthetic val$emailText:Landroid/widget/EditText;

.field final synthetic val$nameText:Landroid/widget/EditText;

.field final synthetic val$passwordText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/prey/activities/SignUpActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/activities/SignUpActivity;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/prey/activities/SignUpActivity$2;->this$0:Lcom/prey/activities/SignUpActivity;

    iput-object p2, p0, Lcom/prey/activities/SignUpActivity$2;->val$nameText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/prey/activities/SignUpActivity$2;->val$emailText:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/prey/activities/SignUpActivity$2;->val$passwordText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x3

    const/4 v5, 0x6

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 136
    iget-object v3, p0, Lcom/prey/activities/SignUpActivity$2;->val$nameText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/prey/activities/SignUpActivity$2;->this$0:Lcom/prey/activities/SignUpActivity;

    iget-object v4, p0, Lcom/prey/activities/SignUpActivity$2;->val$emailText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/prey/activities/SignUpActivity;->email:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/prey/activities/SignUpActivity;->access$002(Lcom/prey/activities/SignUpActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    iget-object v3, p0, Lcom/prey/activities/SignUpActivity$2;->val$passwordText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "password":Ljava/lang/String;
    iget-object v3, p0, Lcom/prey/activities/SignUpActivity$2;->this$0:Lcom/prey/activities/SignUpActivity;

    invoke-virtual {v3}, Lcom/prey/activities/SignUpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 140
    .local v0, "ctx":Landroid/content/Context;
    iget-object v3, p0, Lcom/prey/activities/SignUpActivity$2;->this$0:Lcom/prey/activities/SignUpActivity;

    # getter for: Lcom/prey/activities/SignUpActivity;->email:Ljava/lang/String;
    invoke-static {v3}, Lcom/prey/activities/SignUpActivity;->access$000(Lcom/prey/activities/SignUpActivity;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/prey/activities/SignUpActivity$2;->this$0:Lcom/prey/activities/SignUpActivity;

    # getter for: Lcom/prey/activities/SignUpActivity;->email:Ljava/lang/String;
    invoke-static {v3}, Lcom/prey/activities/SignUpActivity;->access$000(Lcom/prey/activities/SignUpActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    :cond_0
    const v3, 0x7f090052

    invoke-static {v0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 157
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v3, p0, Lcom/prey/activities/SignUpActivity$2;->this$0:Lcom/prey/activities/SignUpActivity;

    # getter for: Lcom/prey/activities/SignUpActivity;->email:Ljava/lang/String;
    invoke-static {v3}, Lcom/prey/activities/SignUpActivity;->access$000(Lcom/prey/activities/SignUpActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v5, :cond_2

    iget-object v3, p0, Lcom/prey/activities/SignUpActivity$2;->this$0:Lcom/prey/activities/SignUpActivity;

    # getter for: Lcom/prey/activities/SignUpActivity;->email:Ljava/lang/String;
    invoke-static {v3}, Lcom/prey/activities/SignUpActivity;->access$000(Lcom/prey/activities/SignUpActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_3

    .line 144
    :cond_2
    const v3, 0x7f090057

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 146
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v5, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_5

    .line 147
    :cond_4
    const v3, 0x7f090058

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/16 v5, 0x20

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 149
    :cond_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_6

    .line 150
    new-instance v3, Lcom/prey/activities/SignUpActivity$CreateAccount;

    iget-object v4, p0, Lcom/prey/activities/SignUpActivity$2;->this$0:Lcom/prey/activities/SignUpActivity;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/prey/activities/SignUpActivity$CreateAccount;-><init>(Lcom/prey/activities/SignUpActivity;Lcom/prey/activities/SignUpActivity$1;)V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v9, [Ljava/lang/String;

    aput-object v1, v5, v6

    iget-object v6, p0, Lcom/prey/activities/SignUpActivity$2;->this$0:Lcom/prey/activities/SignUpActivity;

    # getter for: Lcom/prey/activities/SignUpActivity;->email:Ljava/lang/String;
    invoke-static {v6}, Lcom/prey/activities/SignUpActivity;->access$000(Lcom/prey/activities/SignUpActivity;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v2, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/prey/activities/SignUpActivity$CreateAccount;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 152
    :cond_6
    new-instance v3, Lcom/prey/activities/SignUpActivity$CreateAccount;

    iget-object v4, p0, Lcom/prey/activities/SignUpActivity$2;->this$0:Lcom/prey/activities/SignUpActivity;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/prey/activities/SignUpActivity$CreateAccount;-><init>(Lcom/prey/activities/SignUpActivity;Lcom/prey/activities/SignUpActivity$1;)V

    new-array v4, v9, [Ljava/lang/String;

    aput-object v1, v4, v6

    iget-object v5, p0, Lcom/prey/activities/SignUpActivity$2;->this$0:Lcom/prey/activities/SignUpActivity;

    # getter for: Lcom/prey/activities/SignUpActivity;->email:Ljava/lang/String;
    invoke-static {v5}, Lcom/prey/activities/SignUpActivity;->access$000(Lcom/prey/activities/SignUpActivity;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v2, v4, v8

    invoke-virtual {v3, v4}, Lcom/prey/activities/SignUpActivity$CreateAccount;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method
