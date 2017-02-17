.class Lcl/santander/smartphone/PosicionGlobal$3;
.super Ljava/lang/Object;
.source "PosicionGlobal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/PosicionGlobal;->loadProducts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/PosicionGlobal;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/PosicionGlobal;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/PosicionGlobal$3;->this$0:Lcl/santander/smartphone/PosicionGlobal;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/high16 v2, 0x7f040000

    .line 189
    invoke-static {}, Lcl/santander/smartphone/Global;->getInstance()Lcl/santander/smartphone/Global;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcl/santander/smartphone/Global;->m_bUserLogged:Z

    .line 191
    iget-object v0, p0, Lcl/santander/smartphone/PosicionGlobal$3;->this$0:Lcl/santander/smartphone/PosicionGlobal;

    iget-object v0, v0, Lcl/santander/smartphone/PosicionGlobal;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->setResult(I)V

    .line 192
    iget-object v0, p0, Lcl/santander/smartphone/PosicionGlobal$3;->this$0:Lcl/santander/smartphone/PosicionGlobal;

    iget-object v0, v0, Lcl/santander/smartphone/PosicionGlobal;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 194
    iget-object v0, p0, Lcl/santander/smartphone/PosicionGlobal$3;->this$0:Lcl/santander/smartphone/PosicionGlobal;

    iget-object v0, v0, Lcl/santander/smartphone/PosicionGlobal;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->setResult(I)V

    .line 195
    iget-object v0, p0, Lcl/santander/smartphone/PosicionGlobal$3;->this$0:Lcl/santander/smartphone/PosicionGlobal;

    iget-object v0, v0, Lcl/santander/smartphone/PosicionGlobal;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->finish()V

    .line 196
    iget-object v0, p0, Lcl/santander/smartphone/PosicionGlobal$3;->this$0:Lcl/santander/smartphone/PosicionGlobal;

    iget-object v0, v0, Lcl/santander/smartphone/PosicionGlobal;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0, v2, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->overridePendingTransition(II)V

    .line 197
    return-void
.end method
