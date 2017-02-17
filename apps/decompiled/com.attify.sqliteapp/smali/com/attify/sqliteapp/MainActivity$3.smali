.class Lcom/attify/sqliteapp/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/attify/sqliteapp/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/attify/sqliteapp/MainActivity;

.field private final synthetic val$email:Landroid/widget/EditText;

.field private final synthetic val$firstName:Landroid/widget/EditText;

.field private final synthetic val$lastName:Landroid/widget/EditText;

.field private final synthetic val$login:Landroid/widget/Button;

.field private final synthetic val$password:Landroid/widget/EditText;

.field private final synthetic val$phoneNumber:Landroid/widget/EditText;

.field private final synthetic val$register:Landroid/widget/Button;

.field private final synthetic val$submit:Landroid/widget/Button;

.field private final synthetic val$username:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/attify/sqliteapp/MainActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/attify/sqliteapp/MainActivity$3;->this$0:Lcom/attify/sqliteapp/MainActivity;

    iput-object p2, p0, Lcom/attify/sqliteapp/MainActivity$3;->val$firstName:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/attify/sqliteapp/MainActivity$3;->val$lastName:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/attify/sqliteapp/MainActivity$3;->val$email:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/attify/sqliteapp/MainActivity$3;->val$phoneNumber:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/attify/sqliteapp/MainActivity$3;->val$username:Landroid/widget/EditText;

    iput-object p7, p0, Lcom/attify/sqliteapp/MainActivity$3;->val$password:Landroid/widget/EditText;

    iput-object p8, p0, Lcom/attify/sqliteapp/MainActivity$3;->val$submit:Landroid/widget/Button;

    iput-object p9, p0, Lcom/attify/sqliteapp/MainActivity$3;->val$login:Landroid/widget/Button;

    iput-object p10, p0, Lcom/attify/sqliteapp/MainActivity$3;->val$register:Landroid/widget/Button;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 87
    iget-object v0, p0, Lcom/attify/sqliteapp/MainActivity$3;->this$0:Lcom/attify/sqliteapp/MainActivity;

    iget-object v0, v0, Lcom/attify/sqliteapp/MainActivity;->form:Lcom/attify/sqliteapp/Form;

    iget-object v1, p0, Lcom/attify/sqliteapp/MainActivity$3;->val$firstName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/attify/sqliteapp/Form;->setFirstName(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/attify/sqliteapp/MainActivity$3;->this$0:Lcom/attify/sqliteapp/MainActivity;

    iget-object v0, v0, Lcom/attify/sqliteapp/MainActivity;->form:Lcom/attify/sqliteapp/Form;

    iget-object v1, p0, Lcom/attify/sqliteapp/MainActivity$3;->val$lastName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/attify/sqliteapp/Form;->setLastName(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/attify/sqliteapp/MainActivity$3;->this$0:Lcom/attify/sqliteapp/MainActivity;

    iget-object v0, v0, Lcom/attify/sqliteapp/MainActivity;->form:Lcom/attify/sqliteapp/Form;

    iget-object v1, p0, Lcom/attify/sqliteapp/MainActivity$3;->val$email:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/attify/sqliteapp/Form;->setEmail(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/attify/sqliteapp/MainActivity$3;->this$0:Lcom/attify/sqliteapp/MainActivity;

    iget-object v0, v0, Lcom/attify/sqliteapp/MainActivity;->form:Lcom/attify/sqliteapp/Form;

    iget-object v1, p0, Lcom/attify/sqliteapp/MainActivity$3;->val$phoneNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/attify/sqliteapp/Form;->setPhoneNumber(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/attify/sqliteapp/MainActivity$3;->this$0:Lcom/attify/sqliteapp/MainActivity;

    iget-object v0, v0, Lcom/attify/sqliteapp/MainActivity;->form:Lcom/attify/sqliteapp/Form;

    iget-object v1, p0, Lcom/attify/sqliteapp/MainActivity$3;->val$username:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/attify/sqliteapp/Form;->setUsername(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/attify/sqliteapp/MainActivity$3;->this$0:Lcom/attify/sqliteapp/MainActivity;

    iget-object v0, v0, Lcom/attify/sqliteapp/MainActivity;->form:Lcom/attify/sqliteapp/Form;

    iget-object v1, p0, Lcom/attify/sqliteapp/MainActivity$3;->val$password:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/attify/sqliteapp/Form;->setPassword(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/attify/sqliteapp/MainActivity$3;->this$0:Lcom/attify/sqliteapp/MainActivity;

    iget-object v0, v0, Lcom/attify/sqliteapp/MainActivity;->dConnector:Lcom/attify/sqliteapp/DatabaseConnector;

    iget-object v1, p0, Lcom/attify/sqliteapp/MainActivity$3;->this$0:Lcom/attify/sqliteapp/MainActivity;

    iget-object v1, v1, Lcom/attify/sqliteapp/MainActivity;->form:Lcom/attify/sqliteapp/Form;

    invoke-virtual {v1}, Lcom/attify/sqliteapp/Form;->getFirstName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/attify/sqliteapp/MainActivity$3;->this$0:Lcom/attify/sqliteapp/MainActivity;

    iget-object v2, v2, Lcom/attify/sqliteapp/MainActivity;->form:Lcom/attify/sqliteapp/Form;

    invoke-virtual {v2}, Lcom/attify/sqliteapp/Form;->getLastName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/attify/sqliteapp/MainActivity$3;->this$0:Lcom/attify/sqliteapp/MainActivity;

    iget-object v3, v3, Lcom/attify/sqliteapp/MainActivity;->form:Lcom/attify/sqliteapp/Form;

    invoke-virtual {v3}, Lcom/attify/sqliteapp/Form;->getEmail()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/attify/sqliteapp/MainActivity$3;->this$0:Lcom/attify/sqliteapp/MainActivity;

    iget-object v4, v4, Lcom/attify/sqliteapp/MainActivity;->form:Lcom/attify/sqliteapp/Form;

    invoke-virtual {v4}, Lcom/attify/sqliteapp/Form;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/attify/sqliteapp/MainActivity$3;->this$0:Lcom/attify/sqliteapp/MainActivity;

    iget-object v5, v5, Lcom/attify/sqliteapp/MainActivity;->form:Lcom/attify/sqliteapp/Form;

    invoke-virtual {v5}, Lcom/attify/sqliteapp/Form;->getUsername()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/attify/sqliteapp/MainActivity$3;->this$0:Lcom/attify/sqliteapp/MainActivity;

    iget-object v6, v6, Lcom/attify/sqliteapp/MainActivity;->form:Lcom/attify/sqliteapp/Form;

    invoke-virtual {v6}, Lcom/attify/sqliteapp/Form;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/attify/sqliteapp/DatabaseConnector;->addRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/attify/sqliteapp/MainActivity$3;->this$0:Lcom/attify/sqliteapp/MainActivity;

    invoke-virtual {v0}, Lcom/attify/sqliteapp/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Record Added!"

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 95
    iget-object v0, p0, Lcom/attify/sqliteapp/MainActivity$3;->val$firstName:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/attify/sqliteapp/MainActivity$3;->val$lastName:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/attify/sqliteapp/MainActivity$3;->val$email:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/attify/sqliteapp/MainActivity$3;->val$phoneNumber:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/attify/sqliteapp/MainActivity$3;->val$submit:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/attify/sqliteapp/MainActivity$3;->val$login:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/attify/sqliteapp/MainActivity$3;->val$register:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 102
    return-void
.end method
