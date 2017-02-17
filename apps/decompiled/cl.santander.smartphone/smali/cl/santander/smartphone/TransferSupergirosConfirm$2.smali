.class Lcl/santander/smartphone/TransferSupergirosConfirm$2;
.super Ljava/lang/Object;
.source "TransferSupergirosConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/TransferSupergirosConfirm;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/TransferSupergirosConfirm;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/TransferSupergirosConfirm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm$2;->this$0:Lcl/santander/smartphone/TransferSupergirosConfirm;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 240
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm$2;->this$0:Lcl/santander/smartphone/TransferSupergirosConfirm;

    iget v0, v0, Lcl/santander/smartphone/TransferSupergirosConfirm;->state:I

    packed-switch v0, :pswitch_data_0

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 242
    :pswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm$2;->this$0:Lcl/santander/smartphone/TransferSupergirosConfirm;

    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm$2;->this$0:Lcl/santander/smartphone/TransferSupergirosConfirm;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcl/santander/smartphone/TransferSupergirosConfirm;->getCoords(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcl/santander/smartphone/TransferSupergirosConfirm;->coord_1:Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm$2;->this$0:Lcl/santander/smartphone/TransferSupergirosConfirm;

    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm$2;->this$0:Lcl/santander/smartphone/TransferSupergirosConfirm;

    invoke-virtual {v1, v3}, Lcl/santander/smartphone/TransferSupergirosConfirm;->getCoords(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcl/santander/smartphone/TransferSupergirosConfirm;->coord_2:Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm$2;->this$0:Lcl/santander/smartphone/TransferSupergirosConfirm;

    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm$2;->this$0:Lcl/santander/smartphone/TransferSupergirosConfirm;

    invoke-virtual {v1, v4}, Lcl/santander/smartphone/TransferSupergirosConfirm;->getCoords(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcl/santander/smartphone/TransferSupergirosConfirm;->coord_3:Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm$2;->this$0:Lcl/santander/smartphone/TransferSupergirosConfirm;

    # invokes: Lcl/santander/smartphone/TransferSupergirosConfirm;->supergiroVerificar()Z
    invoke-static {v0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->access$0(Lcl/santander/smartphone/TransferSupergirosConfirm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm$2;->this$0:Lcl/santander/smartphone/TransferSupergirosConfirm;

    iput v3, v0, Lcl/santander/smartphone/TransferSupergirosConfirm;->state:I

    .line 249
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm$2;->this$0:Lcl/santander/smartphone/TransferSupergirosConfirm;

    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm$2;->this$0:Lcl/santander/smartphone/TransferSupergirosConfirm;

    iget v1, v1, Lcl/santander/smartphone/TransferSupergirosConfirm;->state:I

    # invokes: Lcl/santander/smartphone/TransferSupergirosConfirm;->changeState(I)V
    invoke-static {v0, v1}, Lcl/santander/smartphone/TransferSupergirosConfirm;->access$1(Lcl/santander/smartphone/TransferSupergirosConfirm;I)V

    goto :goto_0

    .line 255
    :pswitch_1
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm$2;->this$0:Lcl/santander/smartphone/TransferSupergirosConfirm;

    # invokes: Lcl/santander/smartphone/TransferSupergirosConfirm;->supergiroRealizar()Z
    invoke-static {v0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->access$2(Lcl/santander/smartphone/TransferSupergirosConfirm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm$2;->this$0:Lcl/santander/smartphone/TransferSupergirosConfirm;

    iput v4, v0, Lcl/santander/smartphone/TransferSupergirosConfirm;->state:I

    .line 258
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm$2;->this$0:Lcl/santander/smartphone/TransferSupergirosConfirm;

    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm$2;->this$0:Lcl/santander/smartphone/TransferSupergirosConfirm;

    iget v1, v1, Lcl/santander/smartphone/TransferSupergirosConfirm;->state:I

    # invokes: Lcl/santander/smartphone/TransferSupergirosConfirm;->changeState(I)V
    invoke-static {v0, v1}, Lcl/santander/smartphone/TransferSupergirosConfirm;->access$1(Lcl/santander/smartphone/TransferSupergirosConfirm;I)V

    goto :goto_0

    .line 264
    :pswitch_2
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm$2;->this$0:Lcl/santander/smartphone/TransferSupergirosConfirm;

    iget-object v0, v0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    .line 265
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm$2;->this$0:Lcl/santander/smartphone/TransferSupergirosConfirm;

    iget-object v0, v0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    .line 266
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm$2;->this$0:Lcl/santander/smartphone/TransferSupergirosConfirm;

    iget-object v0, v0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
