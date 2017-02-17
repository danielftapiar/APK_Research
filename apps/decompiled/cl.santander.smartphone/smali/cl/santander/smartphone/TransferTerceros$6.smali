.class Lcl/santander/smartphone/TransferTerceros$6;
.super Ljava/lang/Object;
.source "TransferTerceros.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/TransferTerceros;->loadUltimosDestinatarios()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/TransferTerceros;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/TransferTerceros;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/TransferTerceros$6;->this$0:Lcl/santander/smartphone/TransferTerceros;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/TransferTerceros$6;)Lcl/santander/smartphone/TransferTerceros;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcl/santander/smartphone/TransferTerceros$6;->this$0:Lcl/santander/smartphone/TransferTerceros;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 246
    iget-object v1, p0, Lcl/santander/smartphone/TransferTerceros$6;->this$0:Lcl/santander/smartphone/TransferTerceros;

    # invokes: Lcl/santander/smartphone/TransferTerceros;->getUltimosDestinatarios()Z
    invoke-static {v1}, Lcl/santander/smartphone/TransferTerceros;->access$1(Lcl/santander/smartphone/TransferTerceros;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcl/santander/smartphone/TransferTerceros$6;->this$0:Lcl/santander/smartphone/TransferTerceros;

    new-instance v2, Lcl/santander/smartphone/CustomUltimosDestinatarios;

    iget-object v3, p0, Lcl/santander/smartphone/TransferTerceros$6;->this$0:Lcl/santander/smartphone/TransferTerceros;

    iget-object v3, v3, Lcl/santander/smartphone/TransferTerceros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const/4 v4, 0x1

    iget-object v5, p0, Lcl/santander/smartphone/TransferTerceros$6;->this$0:Lcl/santander/smartphone/TransferTerceros;

    iget-object v5, v5, Lcl/santander/smartphone/TransferTerceros;->ultimas_transferencias:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4, v5}, Lcl/santander/smartphone/CustomUltimosDestinatarios;-><init>(Landroid/content/Context;ZLjava/util/ArrayList;)V

    iput-object v2, v1, Lcl/santander/smartphone/TransferTerceros;->cud:Lcl/santander/smartphone/CustomUltimosDestinatarios;

    .line 253
    new-instance v0, Lcl/santander/smartphone/TransferTerceros$6$1;

    invoke-direct {v0, p0}, Lcl/santander/smartphone/TransferTerceros$6$1;-><init>(Lcl/santander/smartphone/TransferTerceros$6;)V

    .line 285
    .local v0, "run":Ljava/lang/Runnable;
    iget-object v1, p0, Lcl/santander/smartphone/TransferTerceros$6;->this$0:Lcl/santander/smartphone/TransferTerceros;

    iget-object v1, v1, Lcl/santander/smartphone/TransferTerceros;->cud:Lcl/santander/smartphone/CustomUltimosDestinatarios;

    invoke-virtual {v1, v0}, Lcl/santander/smartphone/CustomUltimosDestinatarios;->setRunnableOnItemSelection(Ljava/lang/Runnable;)V

    .line 286
    iget-object v1, p0, Lcl/santander/smartphone/TransferTerceros$6;->this$0:Lcl/santander/smartphone/TransferTerceros;

    iget-object v1, v1, Lcl/santander/smartphone/TransferTerceros;->cud:Lcl/santander/smartphone/CustomUltimosDestinatarios;

    invoke-virtual {v1}, Lcl/santander/smartphone/CustomUltimosDestinatarios;->show()V

    .line 289
    .end local v0    # "run":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method
