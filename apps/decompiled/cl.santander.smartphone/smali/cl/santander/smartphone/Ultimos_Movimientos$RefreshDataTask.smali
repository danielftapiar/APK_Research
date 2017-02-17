.class Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;
.super Landroid/os/AsyncTask;
.source "Ultimos_Movimientos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/smartphone/Ultimos_Movimientos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/Ultimos_Movimientos;


# direct methods
.method private constructor <init>(Lcl/santander/smartphone/Ultimos_Movimientos;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcl/santander/smartphone/Ultimos_Movimientos;Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;)V
    .locals 0

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;-><init>(Lcl/santander/smartphone/Ultimos_Movimientos;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 271
    invoke-virtual {p0}, Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 284
    :goto_0
    return-object v0

    .line 276
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    iget-object v0, v0, Lcl/santander/smartphone/Ultimos_Movimientos;->mapa_cache:Ljava/util/HashMap;

    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    iget-object v1, v1, Lcl/santander/smartphone/Ultimos_Movimientos;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    iget-object v2, p0, Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    iget v2, v2, Lcl/santander/smartphone/Ultimos_Movimientos;->id:I

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    iget-object v1, v1, Lcl/santander/smartphone/Ultimos_Movimientos;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    iget-object v2, p0, Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    iget v2, v2, Lcl/santander/smartphone/Ultimos_Movimientos;->id:I

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v1

    # invokes: Lcl/santander/smartphone/Ultimos_Movimientos;->cargaMovimientosCuenta(Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/util/Date;Ljava/util/Date;Z)V
    invoke-static {v0, v1, v4, v4, v3}, Lcl/santander/smartphone/Ultimos_Movimientos;->access$0(Lcl/santander/smartphone/Ultimos_Movimientos;Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/util/Date;Ljava/util/Date;Z)V

    .line 279
    invoke-virtual {p0}, Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 284
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 291
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    iget-object v0, v0, Lcl/santander/smartphone/Ultimos_Movimientos;->adapterUltimosMovs:Lcl/santander/smartphone/AdapterUltimosMovimientos;

    invoke-virtual {v0}, Lcl/santander/smartphone/AdapterUltimosMovimientos;->notifyDataSetChanged()V

    .line 296
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    iget-object v0, v0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_ListMovimientos:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    iget-object v0, v0, Lcl/santander/smartphone/Ultimos_Movimientos;->adapterUltimosMovs:Lcl/santander/smartphone/AdapterUltimosMovimientos;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    iget-object v0, v0, Lcl/santander/smartphone/Ultimos_Movimientos;->adapterUltimosMovs:Lcl/santander/smartphone/AdapterUltimosMovimientos;

    invoke-virtual {v0}, Lcl/santander/smartphone/AdapterUltimosMovimientos;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 300
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    # getter for: Lcl/santander/smartphone/Ultimos_Movimientos;->list:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcl/santander/smartphone/Ultimos_Movimientos;->access$1(Lcl/santander/smartphone/Ultimos_Movimientos;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    # getter for: Lcl/santander/smartphone/Ultimos_Movimientos;->empty:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcl/santander/smartphone/Ultimos_Movimientos;->access$2(Lcl/santander/smartphone/Ultimos_Movimientos;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 311
    :cond_1
    :goto_0
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    iget-object v0, v0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_ListMovimientos:Landroid/widget/ListView;

    check-cast v0, Lcom/markupartist/android/widget/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/markupartist/android/widget/PullToRefreshListView;->onRefreshComplete()V

    .line 312
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 313
    return-void

    .line 306
    :cond_2
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    # getter for: Lcl/santander/smartphone/Ultimos_Movimientos;->list:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcl/santander/smartphone/Ultimos_Movimientos;->access$1(Lcl/santander/smartphone/Ultimos_Movimientos;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    # getter for: Lcl/santander/smartphone/Ultimos_Movimientos;->empty:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcl/santander/smartphone/Ultimos_Movimientos;->access$2(Lcl/santander/smartphone/Ultimos_Movimientos;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
