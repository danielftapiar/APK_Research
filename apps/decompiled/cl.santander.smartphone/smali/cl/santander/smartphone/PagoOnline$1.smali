.class Lcl/santander/smartphone/PagoOnline$1;
.super Ljava/lang/Object;
.source "PagoOnline.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/PagoOnline;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/PagoOnline;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/PagoOnline;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/PagoOnline$1;->this$0:Lcl/santander/smartphone/PagoOnline;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnline$1;->this$0:Lcl/santander/smartphone/PagoOnline;

    invoke-virtual {v0}, Lcl/santander/smartphone/PagoOnline;->loadPagosOnline()V

    .line 111
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnline$1;->this$0:Lcl/santander/smartphone/PagoOnline;

    iget-object v0, v0, Lcl/santander/smartphone/PagoOnline;->m_ListPagosOnline:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/santander/smartphone/PagoOnline$1;->this$0:Lcl/santander/smartphone/PagoOnline;

    iget-object v0, v0, Lcl/santander/smartphone/PagoOnline;->m_ListPagosOnline:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 113
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnline$1;->this$0:Lcl/santander/smartphone/PagoOnline;

    iget-object v0, v0, Lcl/santander/smartphone/PagoOnline;->m_ListPagos:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnline$1;->this$0:Lcl/santander/smartphone/PagoOnline;

    iget-object v0, v0, Lcl/santander/smartphone/PagoOnline;->m_TextEmpty:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    :cond_1
    return-void
.end method
