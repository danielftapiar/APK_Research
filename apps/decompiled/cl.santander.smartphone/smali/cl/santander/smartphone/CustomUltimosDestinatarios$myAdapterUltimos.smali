.class Lcl/santander/smartphone/CustomUltimosDestinatarios$myAdapterUltimos;
.super Landroid/widget/ArrayAdapter;
.source "CustomUltimosDestinatarios.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/smartphone/CustomUltimosDestinatarios;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "myAdapterUltimos"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/CustomUltimosDestinatarios;


# direct methods
.method public constructor <init>(Lcl/santander/smartphone/CustomUltimosDestinatarios;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    iput-object p1, p0, Lcl/santander/smartphone/CustomUltimosDestinatarios$myAdapterUltimos;->this$0:Lcl/santander/smartphone/CustomUltimosDestinatarios;

    .line 110
    const v0, 0x7f030046

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 111
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcl/santander/smartphone/CustomUltimosDestinatarios$myAdapterUltimos;->this$0:Lcl/santander/smartphone/CustomUltimosDestinatarios;

    # getter for: Lcl/santander/smartphone/CustomUltimosDestinatarios;->ultimas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcl/santander/smartphone/CustomUltimosDestinatarios;->access$0(Lcl/santander/smartphone/CustomUltimosDestinatarios;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcl/santander/smartphone/CustomUltimosDestinatarios$myAdapterUltimos;->this$0:Lcl/santander/smartphone/CustomUltimosDestinatarios;

    # getter for: Lcl/santander/smartphone/CustomUltimosDestinatarios;->ultimas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcl/santander/smartphone/CustomUltimosDestinatarios;->access$0(Lcl/santander/smartphone/CustomUltimosDestinatarios;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcl/santander/santanderCL/data/response/ItemUltTransf;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcl/santander/smartphone/CustomUltimosDestinatarios$myAdapterUltimos;->this$0:Lcl/santander/smartphone/CustomUltimosDestinatarios;

    # getter for: Lcl/santander/smartphone/CustomUltimosDestinatarios;->ultimas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcl/santander/smartphone/CustomUltimosDestinatarios;->access$0(Lcl/santander/smartphone/CustomUltimosDestinatarios;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcl/santander/smartphone/CustomUltimosDestinatarios$myAdapterUltimos;->this$0:Lcl/santander/smartphone/CustomUltimosDestinatarios;

    # getter for: Lcl/santander/smartphone/CustomUltimosDestinatarios;->ultimas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcl/santander/smartphone/CustomUltimosDestinatarios;->access$0(Lcl/santander/smartphone/CustomUltimosDestinatarios;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/response/ItemUltTransf;

    .line 156
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcl/santander/smartphone/CustomUltimosDestinatarios$myAdapterUltimos;->getItem(I)Lcl/santander/santanderCL/data/response/ItemUltTransf;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 119
    if-nez p2, :cond_0

    .line 122
    invoke-virtual {p0}, Lcl/santander/smartphone/CustomUltimosDestinatarios$myAdapterUltimos;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f030046

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 123
    invoke-virtual {p0}, Lcl/santander/smartphone/CustomUltimosDestinatarios$myAdapterUltimos;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p2}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 128
    :cond_0
    iget-object v5, p0, Lcl/santander/smartphone/CustomUltimosDestinatarios$myAdapterUltimos;->this$0:Lcl/santander/smartphone/CustomUltimosDestinatarios;

    # getter for: Lcl/santander/smartphone/CustomUltimosDestinatarios;->ultimas:Ljava/util/ArrayList;
    invoke-static {v5}, Lcl/santander/smartphone/CustomUltimosDestinatarios;->access$0(Lcl/santander/smartphone/CustomUltimosDestinatarios;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcl/santander/santanderCL/data/response/ItemUltTransf;

    .line 130
    .local v4, "ultima":Lcl/santander/santanderCL/data/response/ItemUltTransf;
    const v5, 0x7f0601fb

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 131
    .local v1, "tv_nombre":Landroid/widget/TextView;
    const v5, 0x7f0601fc

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 132
    .local v3, "tv_rut":Landroid/widget/TextView;
    const v5, 0x7f0601fd

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 133
    .local v2, "tv_numcuenta":Landroid/widget/TextView;
    const v5, 0x7f0601fe

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 135
    .local v0, "tv_banco":Landroid/widget/TextView;
    invoke-virtual {v4}, Lcl/santander/santanderCL/data/response/ItemUltTransf;->getNombreCliente()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcl/santander/smartphone/CustomUltimosDestinatarios$myAdapterUltimos;->this$0:Lcl/santander/smartphone/CustomUltimosDestinatarios;

    # getter for: Lcl/santander/smartphone/CustomUltimosDestinatarios;->ctx:Landroid/content/Context;
    invoke-static {v6}, Lcl/santander/smartphone/CustomUltimosDestinatarios;->access$3(Lcl/santander/smartphone/CustomUltimosDestinatarios;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050088

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcl/santander/santanderCL/data/response/ItemUltTransf;->getRutClienteScreen()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcl/santander/smartphone/CustomUltimosDestinatarios$myAdapterUltimos;->this$0:Lcl/santander/smartphone/CustomUltimosDestinatarios;

    # getter for: Lcl/santander/smartphone/CustomUltimosDestinatarios;->ctx:Landroid/content/Context;
    invoke-static {v6}, Lcl/santander/smartphone/CustomUltimosDestinatarios;->access$3(Lcl/santander/smartphone/CustomUltimosDestinatarios;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f05008a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcl/santander/santanderCL/data/response/ItemUltTransf;->getNumeroCuentaScreen()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcl/santander/smartphone/CustomUltimosDestinatarios$myAdapterUltimos;->this$0:Lcl/santander/smartphone/CustomUltimosDestinatarios;

    # getter for: Lcl/santander/smartphone/CustomUltimosDestinatarios;->ctx:Landroid/content/Context;
    invoke-static {v6}, Lcl/santander/smartphone/CustomUltimosDestinatarios;->access$3(Lcl/santander/smartphone/CustomUltimosDestinatarios;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050085

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcl/santander/santanderCL/data/response/ItemUltTransf;->getNombreBanco()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-object p2
.end method
