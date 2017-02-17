.class Lcl/santander/smartphone/RecargaConfirm$4;
.super Ljava/lang/Object;
.source "RecargaConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/RecargaConfirm;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/RecargaConfirm;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/RecargaConfirm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/RecargaConfirm$4;->this$0:Lcl/santander/smartphone/RecargaConfirm;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 302
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm$4;->this$0:Lcl/santander/smartphone/RecargaConfirm;

    iget-object v1, p0, Lcl/santander/smartphone/RecargaConfirm$4;->this$0:Lcl/santander/smartphone/RecargaConfirm;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcl/santander/smartphone/RecargaConfirm;->getCoords(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcl/santander/smartphone/RecargaConfirm;->coord_1:Ljava/lang/String;

    .line 303
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm$4;->this$0:Lcl/santander/smartphone/RecargaConfirm;

    iget-object v1, p0, Lcl/santander/smartphone/RecargaConfirm$4;->this$0:Lcl/santander/smartphone/RecargaConfirm;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcl/santander/smartphone/RecargaConfirm;->getCoords(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcl/santander/smartphone/RecargaConfirm;->coord_2:Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm$4;->this$0:Lcl/santander/smartphone/RecargaConfirm;

    iget-object v1, p0, Lcl/santander/smartphone/RecargaConfirm$4;->this$0:Lcl/santander/smartphone/RecargaConfirm;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcl/santander/smartphone/RecargaConfirm;->getCoords(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcl/santander/smartphone/RecargaConfirm;->coord_3:Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm$4;->this$0:Lcl/santander/smartphone/RecargaConfirm;

    invoke-virtual {v0}, Lcl/santander/smartphone/RecargaConfirm;->RealizarRecargaMovil()V

    .line 308
    return-void
.end method
