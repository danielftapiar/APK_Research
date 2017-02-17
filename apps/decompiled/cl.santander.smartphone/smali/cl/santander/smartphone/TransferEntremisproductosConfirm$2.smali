.class Lcl/santander/smartphone/TransferEntremisproductosConfirm$2;
.super Ljava/lang/Object;
.source "TransferEntremisproductosConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/TransferEntremisproductosConfirm;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/TransferEntremisproductosConfirm;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/TransferEntremisproductosConfirm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm$2;->this$0:Lcl/santander/smartphone/TransferEntremisproductosConfirm;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 233
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm$2;->this$0:Lcl/santander/smartphone/TransferEntremisproductosConfirm;

    iget v0, v0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->state:I

    packed-switch v0, :pswitch_data_0

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 236
    :pswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm$2;->this$0:Lcl/santander/smartphone/TransferEntremisproductosConfirm;

    invoke-virtual {v0}, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->entreMisProductos()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm$2;->this$0:Lcl/santander/smartphone/TransferEntremisproductosConfirm;

    const/4 v1, 0x1

    iput v1, v0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->state:I

    .line 240
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm$2;->this$0:Lcl/santander/smartphone/TransferEntremisproductosConfirm;

    iget-object v1, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm$2;->this$0:Lcl/santander/smartphone/TransferEntremisproductosConfirm;

    iget v1, v1, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->state:I

    # invokes: Lcl/santander/smartphone/TransferEntremisproductosConfirm;->changeState(I)V
    invoke-static {v0, v1}, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->access$0(Lcl/santander/smartphone/TransferEntremisproductosConfirm;I)V

    goto :goto_0

    .line 248
    :pswitch_1
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm$2;->this$0:Lcl/santander/smartphone/TransferEntremisproductosConfirm;

    iget-object v0, v0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    .line 249
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm$2;->this$0:Lcl/santander/smartphone/TransferEntremisproductosConfirm;

    iget-object v0, v0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    .line 250
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm$2;->this$0:Lcl/santander/smartphone/TransferEntremisproductosConfirm;

    iget-object v0, v0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
