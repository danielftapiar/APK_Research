.class Lcl/santander/smartphone/PagoOnlineConfirm$4;
.super Ljava/lang/Object;
.source "PagoOnlineConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/PagoOnlineConfirm;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/PagoOnlineConfirm;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/PagoOnlineConfirm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/PagoOnlineConfirm$4;->this$0:Lcl/santander/smartphone/PagoOnlineConfirm;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 285
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm$4;->this$0:Lcl/santander/smartphone/PagoOnlineConfirm;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineConfirm$4;->this$0:Lcl/santander/smartphone/PagoOnlineConfirm;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcl/santander/smartphone/PagoOnlineConfirm;->getCoords(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcl/santander/smartphone/PagoOnlineConfirm;->coord_1:Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm$4;->this$0:Lcl/santander/smartphone/PagoOnlineConfirm;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineConfirm$4;->this$0:Lcl/santander/smartphone/PagoOnlineConfirm;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcl/santander/smartphone/PagoOnlineConfirm;->getCoords(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcl/santander/smartphone/PagoOnlineConfirm;->coord_2:Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm$4;->this$0:Lcl/santander/smartphone/PagoOnlineConfirm;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineConfirm$4;->this$0:Lcl/santander/smartphone/PagoOnlineConfirm;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcl/santander/smartphone/PagoOnlineConfirm;->getCoords(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcl/santander/smartphone/PagoOnlineConfirm;->coord_3:Ljava/lang/String;

    .line 288
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm$4;->this$0:Lcl/santander/smartphone/PagoOnlineConfirm;

    invoke-virtual {v0}, Lcl/santander/smartphone/PagoOnlineConfirm;->realizarPago()V

    .line 289
    return-void
.end method
