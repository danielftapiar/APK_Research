.class Lcl/santander/smartphone/TransferTercerosConfirm$2;
.super Ljava/lang/Object;
.source "TransferTercerosConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/TransferTercerosConfirm;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/TransferTercerosConfirm;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/TransferTercerosConfirm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/TransferTercerosConfirm$2;->this$0:Lcl/santander/smartphone/TransferTercerosConfirm;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x2

    .line 280
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm$2;->this$0:Lcl/santander/smartphone/TransferTercerosConfirm;

    iget v0, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->state:I

    packed-switch v0, :pswitch_data_0

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 283
    :pswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm$2;->this$0:Lcl/santander/smartphone/TransferTercerosConfirm;

    invoke-virtual {v0}, Lcl/santander/smartphone/TransferTercerosConfirm;->validaSuperClave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm$2;->this$0:Lcl/santander/smartphone/TransferTercerosConfirm;

    iget-boolean v0, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->pedirOTP:Z

    if-nez v0, :cond_1

    .line 288
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm$2;->this$0:Lcl/santander/smartphone/TransferTercerosConfirm;

    iput v1, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->state:I

    .line 295
    :goto_1
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm$2;->this$0:Lcl/santander/smartphone/TransferTercerosConfirm;

    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm$2;->this$0:Lcl/santander/smartphone/TransferTercerosConfirm;

    iget v1, v1, Lcl/santander/smartphone/TransferTercerosConfirm;->state:I

    # invokes: Lcl/santander/smartphone/TransferTercerosConfirm;->changeState(I)V
    invoke-static {v0, v1}, Lcl/santander/smartphone/TransferTercerosConfirm;->access$0(Lcl/santander/smartphone/TransferTercerosConfirm;I)V

    goto :goto_0

    .line 291
    :cond_1
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm$2;->this$0:Lcl/santander/smartphone/TransferTercerosConfirm;

    const/4 v1, 0x1

    iput v1, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->state:I

    goto :goto_1

    .line 301
    :pswitch_1
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm$2;->this$0:Lcl/santander/smartphone/TransferTercerosConfirm;

    invoke-virtual {v0}, Lcl/santander/smartphone/TransferTercerosConfirm;->validaOTP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm$2;->this$0:Lcl/santander/smartphone/TransferTercerosConfirm;

    iput v1, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->state:I

    .line 304
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm$2;->this$0:Lcl/santander/smartphone/TransferTercerosConfirm;

    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm$2;->this$0:Lcl/santander/smartphone/TransferTercerosConfirm;

    iget v1, v1, Lcl/santander/smartphone/TransferTercerosConfirm;->state:I

    # invokes: Lcl/santander/smartphone/TransferTercerosConfirm;->changeState(I)V
    invoke-static {v0, v1}, Lcl/santander/smartphone/TransferTercerosConfirm;->access$0(Lcl/santander/smartphone/TransferTercerosConfirm;I)V

    goto :goto_0

    .line 310
    :pswitch_2
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm$2;->this$0:Lcl/santander/smartphone/TransferTercerosConfirm;

    iget-object v0, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    .line 311
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm$2;->this$0:Lcl/santander/smartphone/TransferTercerosConfirm;

    iget-object v0, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    .line 312
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm$2;->this$0:Lcl/santander/smartphone/TransferTercerosConfirm;

    iget-object v0, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
