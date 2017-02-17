.class Lcl/santander/smartphone/Banca$1$1;
.super Ljava/lang/Object;
.source "Banca.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/Banca$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/santander/smartphone/Banca$1;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/Banca$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/Banca$1$1;->this$1:Lcl/santander/smartphone/Banca$1;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/high16 v2, 0x7f040000

    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lcl/santander/smartphone/Banca$1$1;->this$1:Lcl/santander/smartphone/Banca$1;

    # getter for: Lcl/santander/smartphone/Banca$1;->this$0:Lcl/santander/smartphone/Banca;
    invoke-static {v0}, Lcl/santander/smartphone/Banca$1;->access$0(Lcl/santander/smartphone/Banca$1;)Lcl/santander/smartphone/Banca;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcl/santander/smartphone/Banca;->setHasOptionsMenu(Z)V

    .line 134
    invoke-static {}, Lcl/santander/smartphone/Global;->getInstance()Lcl/santander/smartphone/Global;

    move-result-object v0

    iput-boolean v1, v0, Lcl/santander/smartphone/Global;->m_bUserLogged:Z

    .line 135
    iget-object v0, p0, Lcl/santander/smartphone/Banca$1$1;->this$1:Lcl/santander/smartphone/Banca$1;

    # getter for: Lcl/santander/smartphone/Banca$1;->this$0:Lcl/santander/smartphone/Banca;
    invoke-static {v0}, Lcl/santander/smartphone/Banca$1;->access$0(Lcl/santander/smartphone/Banca$1;)Lcl/santander/smartphone/Banca;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcl/santander/smartphone/Banca;->setHasOptionsMenu(Z)V

    .line 136
    iget-object v0, p0, Lcl/santander/smartphone/Banca$1$1;->this$1:Lcl/santander/smartphone/Banca$1;

    # getter for: Lcl/santander/smartphone/Banca$1;->this$0:Lcl/santander/smartphone/Banca;
    invoke-static {v0}, Lcl/santander/smartphone/Banca$1;->access$0(Lcl/santander/smartphone/Banca$1;)Lcl/santander/smartphone/Banca;

    move-result-object v0

    iget-object v0, v0, Lcl/santander/smartphone/Banca;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->setResult(I)V

    .line 137
    iget-object v0, p0, Lcl/santander/smartphone/Banca$1$1;->this$1:Lcl/santander/smartphone/Banca$1;

    # getter for: Lcl/santander/smartphone/Banca$1;->this$0:Lcl/santander/smartphone/Banca;
    invoke-static {v0}, Lcl/santander/smartphone/Banca$1;->access$0(Lcl/santander/smartphone/Banca$1;)Lcl/santander/smartphone/Banca;

    move-result-object v0

    iget-object v0, v0, Lcl/santander/smartphone/Banca;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 139
    iget-object v0, p0, Lcl/santander/smartphone/Banca$1$1;->this$1:Lcl/santander/smartphone/Banca$1;

    # getter for: Lcl/santander/smartphone/Banca$1;->this$0:Lcl/santander/smartphone/Banca;
    invoke-static {v0}, Lcl/santander/smartphone/Banca$1;->access$0(Lcl/santander/smartphone/Banca$1;)Lcl/santander/smartphone/Banca;

    move-result-object v0

    iget-object v0, v0, Lcl/santander/smartphone/Banca;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->finish()V

    .line 140
    iget-object v0, p0, Lcl/santander/smartphone/Banca$1$1;->this$1:Lcl/santander/smartphone/Banca$1;

    # getter for: Lcl/santander/smartphone/Banca$1;->this$0:Lcl/santander/smartphone/Banca;
    invoke-static {v0}, Lcl/santander/smartphone/Banca$1;->access$0(Lcl/santander/smartphone/Banca$1;)Lcl/santander/smartphone/Banca;

    move-result-object v0

    iget-object v0, v0, Lcl/santander/smartphone/Banca;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0, v2, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->overridePendingTransition(II)V

    return-void
.end method
