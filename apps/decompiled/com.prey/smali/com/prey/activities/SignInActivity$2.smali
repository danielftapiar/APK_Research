.class Lcom/prey/activities/SignInActivity$2;
.super Ljava/lang/Object;
.source "SignInActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/activities/SignInActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/activities/SignInActivity;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$emailText:Landroid/widget/EditText;

.field final synthetic val$passwordText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/prey/activities/SignInActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/activities/SignInActivity;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/prey/activities/SignInActivity$2;->this$0:Lcom/prey/activities/SignInActivity;

    iput-object p2, p0, Lcom/prey/activities/SignInActivity$2;->val$emailText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/prey/activities/SignInActivity$2;->val$passwordText:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/prey/activities/SignInActivity$2;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x3

    const/4 v9, 0x6

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 149
    iget-object v2, p0, Lcom/prey/activities/SignInActivity$2;->val$emailText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "email":Ljava/lang/String;
    iget-object v2, p0, Lcom/prey/activities/SignInActivity$2;->val$passwordText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "password":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    :cond_0
    iget-object v2, p0, Lcom/prey/activities/SignInActivity$2;->val$ctx:Landroid/content/Context;

    const v3, 0x7f090052

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 171
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v9, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_3

    .line 157
    :cond_2
    iget-object v2, p0, Lcom/prey/activities/SignInActivity$2;->val$ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/prey/activities/SignInActivity$2;->val$ctx:Landroid/content/Context;

    const v4, 0x7f090057

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/16 v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 159
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v9, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-le v2, v3, :cond_5

    .line 160
    :cond_4
    iget-object v2, p0, Lcom/prey/activities/SignInActivity$2;->val$ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/prey/activities/SignInActivity$2;->val$ctx:Landroid/content/Context;

    const v4, 0x7f090058

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/16 v6, 0x20

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 162
    :cond_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_6

    .line 163
    new-instance v2, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;

    iget-object v3, p0, Lcom/prey/activities/SignInActivity$2;->this$0:Lcom/prey/activities/SignInActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;-><init>(Lcom/prey/activities/SignInActivity;Lcom/prey/activities/SignInActivity$1;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v5, [Ljava/lang/String;

    aput-object v0, v4, v8

    aput-object v1, v4, v7

    iget-object v5, p0, Lcom/prey/activities/SignInActivity$2;->val$ctx:Landroid/content/Context;

    invoke-static {v5}, Lcom/prey/PreyUtils;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 165
    :cond_6
    new-instance v2, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;

    iget-object v3, p0, Lcom/prey/activities/SignInActivity$2;->this$0:Lcom/prey/activities/SignInActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;-><init>(Lcom/prey/activities/SignInActivity;Lcom/prey/activities/SignInActivity$1;)V

    new-array v3, v5, [Ljava/lang/String;

    aput-object v0, v3, v8

    aput-object v1, v3, v7

    iget-object v4, p0, Lcom/prey/activities/SignInActivity$2;->val$ctx:Landroid/content/Context;

    invoke-static {v4}, Lcom/prey/PreyUtils;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/prey/activities/SignInActivity$AddDeviceToAccount;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method
