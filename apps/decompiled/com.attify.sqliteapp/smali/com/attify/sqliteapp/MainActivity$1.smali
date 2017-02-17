.class Lcom/attify/sqliteapp/MainActivity$1;
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

.field private final synthetic val$phoneNumber:Landroid/widget/EditText;

.field private final synthetic val$register:Landroid/widget/Button;

.field private final synthetic val$submit:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/attify/sqliteapp/MainActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/attify/sqliteapp/MainActivity$1;->this$0:Lcom/attify/sqliteapp/MainActivity;

    iput-object p2, p0, Lcom/attify/sqliteapp/MainActivity$1;->val$firstName:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/attify/sqliteapp/MainActivity$1;->val$lastName:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/attify/sqliteapp/MainActivity$1;->val$email:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/attify/sqliteapp/MainActivity$1;->val$phoneNumber:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/attify/sqliteapp/MainActivity$1;->val$login:Landroid/widget/Button;

    iput-object p7, p0, Lcom/attify/sqliteapp/MainActivity$1;->val$register:Landroid/widget/Button;

    iput-object p8, p0, Lcom/attify/sqliteapp/MainActivity$1;->val$submit:Landroid/widget/Button;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 47
    iget-object v0, p0, Lcom/attify/sqliteapp/MainActivity$1;->val$firstName:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/attify/sqliteapp/MainActivity$1;->val$lastName:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcom/attify/sqliteapp/MainActivity$1;->val$email:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcom/attify/sqliteapp/MainActivity$1;->val$phoneNumber:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/attify/sqliteapp/MainActivity$1;->val$login:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/attify/sqliteapp/MainActivity$1;->val$register:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/attify/sqliteapp/MainActivity$1;->val$submit:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 54
    return-void
.end method
