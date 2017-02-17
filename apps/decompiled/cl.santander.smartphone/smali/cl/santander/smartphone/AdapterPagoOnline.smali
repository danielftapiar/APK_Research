.class public Lcl/santander/smartphone/AdapterPagoOnline;
.super Landroid/widget/ArrayAdapter;
.source "AdapterPagoOnline.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field m_data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemSuscripcion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "_context"    # Landroid/content/Context;

    .prologue
    .line 19
    const v0, 0x7f030054

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcl/santander/smartphone/AdapterPagoOnline;->m_data:Ljava/util/ArrayList;

    .line 20
    iput-object p1, p0, Lcl/santander/smartphone/AdapterPagoOnline;->context:Landroid/content/Context;

    .line 21
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 22
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcl/santander/smartphone/AdapterPagoOnline;->m_data:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcl/santander/smartphone/AdapterPagoOnline;->m_data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 63
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 34
    const/4 v1, 0x0

    .line 35
    .local v1, "wrapper":Lcl/santander/smartphone/PagoOnlineWrapper;
    iget-object v2, p0, Lcl/santander/smartphone/AdapterPagoOnline;->m_data:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/response/ItemSuscripcion;

    .line 36
    .local v0, "item":Lcl/santander/santanderCL/data/response/ItemSuscripcion;
    if-nez p2, :cond_0

    .line 38
    invoke-virtual {p0}, Lcl/santander/smartphone/AdapterPagoOnline;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f030054

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 39
    new-instance v1, Lcl/santander/smartphone/PagoOnlineWrapper;

    .end local v1    # "wrapper":Lcl/santander/smartphone/PagoOnlineWrapper;
    invoke-direct {v1, p2}, Lcl/santander/smartphone/PagoOnlineWrapper;-><init>(Landroid/view/View;)V

    .line 40
    .restart local v1    # "wrapper":Lcl/santander/smartphone/PagoOnlineWrapper;
    invoke-virtual {p0}, Lcl/santander/smartphone/AdapterPagoOnline;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 41
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 48
    :goto_0
    rem-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_1

    .line 49
    iget-object v2, v1, Lcl/santander/smartphone/PagoOnlineWrapper;->base:Landroid/view/View;

    const v3, 0x7f0200d6

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 53
    :goto_1
    invoke-virtual {v1}, Lcl/santander/smartphone/PagoOnlineWrapper;->getEmpresa()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemSuscripcion;->getEmpresa()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {v1}, Lcl/santander/smartphone/PagoOnlineWrapper;->getDescripcion()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemSuscripcion;->getDescripcion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-object p2

    .line 44
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "wrapper":Lcl/santander/smartphone/PagoOnlineWrapper;
    check-cast v1, Lcl/santander/smartphone/PagoOnlineWrapper;

    .restart local v1    # "wrapper":Lcl/santander/smartphone/PagoOnlineWrapper;
    goto :goto_0

    .line 51
    :cond_1
    iget-object v2, v1, Lcl/santander/smartphone/PagoOnlineWrapper;->base:Landroid/view/View;

    const v3, 0x7f0200d7

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public setContent(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemSuscripcion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemSuscripcion;>;"
    iput-object p1, p0, Lcl/santander/smartphone/AdapterPagoOnline;->m_data:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p0}, Lcl/santander/smartphone/AdapterPagoOnline;->notifyDataSetChanged()V

    .line 28
    return-void
.end method
