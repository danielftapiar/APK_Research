.class Lcl/santander/smartphone/CustomListaAccionesCompraDialog$myItemClickListener;
.super Ljava/lang/Object;
.source "CustomListaAccionesCompraDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/smartphone/CustomListaAccionesCompraDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "myItemClickListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/CustomListaAccionesCompraDialog;


# direct methods
.method private constructor <init>(Lcl/santander/smartphone/CustomListaAccionesCompraDialog;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcl/santander/smartphone/CustomListaAccionesCompraDialog$myItemClickListener;->this$0:Lcl/santander/smartphone/CustomListaAccionesCompraDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcl/santander/smartphone/CustomListaAccionesCompraDialog;Lcl/santander/smartphone/CustomListaAccionesCompraDialog$myItemClickListener;)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcl/santander/smartphone/CustomListaAccionesCompraDialog$myItemClickListener;-><init>(Lcl/santander/smartphone/CustomListaAccionesCompraDialog;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcl/santander/smartphone/CustomListaAccionesCompraDialog$myItemClickListener;->this$0:Lcl/santander/smartphone/CustomListaAccionesCompraDialog;

    # getter for: Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->adapter:Landroid/widget/ArrayAdapter;
    invoke-static {v3}, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->access$0(Lcl/santander/smartphone/CustomListaAccionesCompraDialog;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 143
    .local v2, "s":Ljava/lang/String;
    const/4 v0, -0x1

    .line 144
    .local v0, "aux":I
    const/4 v1, 0x0

    .line 145
    .local v1, "i":I
    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 153
    iget-object v3, p0, Lcl/santander/smartphone/CustomListaAccionesCompraDialog$myItemClickListener;->this$0:Lcl/santander/smartphone/CustomListaAccionesCompraDialog;

    iget-object v4, p0, Lcl/santander/smartphone/CustomListaAccionesCompraDialog$myItemClickListener;->this$0:Lcl/santander/smartphone/CustomListaAccionesCompraDialog;

    # getter for: Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->acciones:Lcl/santander/santanderCL/data/MatrizAccionesCompra;
    invoke-static {v4}, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->access$1(Lcl/santander/smartphone/CustomListaAccionesCompraDialog;)Lcl/santander/santanderCL/data/MatrizAccionesCompra;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcl/santander/santanderCL/data/MatrizAccionesCompra;->get(I)Lcl/santander/santanderCL/data/response/ItemAccionCompra;

    move-result-object v4

    invoke-static {v3, v4}, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->access$2(Lcl/santander/smartphone/CustomListaAccionesCompraDialog;Lcl/santander/santanderCL/data/response/ItemAccionCompra;)V

    .line 154
    iget-object v3, p0, Lcl/santander/smartphone/CustomListaAccionesCompraDialog$myItemClickListener;->this$0:Lcl/santander/smartphone/CustomListaAccionesCompraDialog;

    invoke-static {v3, v0}, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->access$3(Lcl/santander/smartphone/CustomListaAccionesCompraDialog;I)V

    .line 156
    iget-object v3, p0, Lcl/santander/smartphone/CustomListaAccionesCompraDialog$myItemClickListener;->this$0:Lcl/santander/smartphone/CustomListaAccionesCompraDialog;

    # getter for: Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->run:Ljava/lang/Runnable;
    invoke-static {v3}, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->access$4(Lcl/santander/smartphone/CustomListaAccionesCompraDialog;)Ljava/lang/Runnable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 158
    iget-object v3, p0, Lcl/santander/smartphone/CustomListaAccionesCompraDialog$myItemClickListener;->this$0:Lcl/santander/smartphone/CustomListaAccionesCompraDialog;

    # getter for: Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->run:Ljava/lang/Runnable;
    invoke-static {v3}, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->access$4(Lcl/santander/smartphone/CustomListaAccionesCompraDialog;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 161
    :cond_0
    iget-object v3, p0, Lcl/santander/smartphone/CustomListaAccionesCompraDialog$myItemClickListener;->this$0:Lcl/santander/smartphone/CustomListaAccionesCompraDialog;

    invoke-virtual {v3}, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->dismiss()V

    .line 163
    return-void

    .line 147
    :cond_1
    iget-object v3, p0, Lcl/santander/smartphone/CustomListaAccionesCompraDialog$myItemClickListener;->this$0:Lcl/santander/smartphone/CustomListaAccionesCompraDialog;

    # getter for: Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->acciones:Lcl/santander/santanderCL/data/MatrizAccionesCompra;
    invoke-static {v3}, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->access$1(Lcl/santander/smartphone/CustomListaAccionesCompraDialog;)Lcl/santander/santanderCL/data/MatrizAccionesCompra;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcl/santander/santanderCL/data/MatrizAccionesCompra;->get(I)Lcl/santander/santanderCL/data/response/ItemAccionCompra;

    move-result-object v3

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemAccionCompra;->getNombreAccion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 148
    move v0, v1

    .line 150
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
