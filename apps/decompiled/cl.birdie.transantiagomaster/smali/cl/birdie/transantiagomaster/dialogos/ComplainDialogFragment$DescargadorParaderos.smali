.class final Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$DescargadorParaderos;
.super Landroid/os/AsyncTask;
.source "ComplainDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescargadorParaderos"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;


# direct methods
.method private constructor <init>(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$DescargadorParaderos;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;B)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$DescargadorParaderos;-><init>(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;)V

    return-void
.end method


# virtual methods
.method protected final bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lcl/birdie/toolkit/DescargarArchivo;->descargar(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 1
    check-cast p1, [B

    new-instance v6, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;

    invoke-direct {v6}, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;-><init>()V

    invoke-virtual {v6, p1}, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;->procesar([B)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$DescargadorParaderos;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->paraderos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$DescargadorParaderos;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->servicios:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, v6, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;->paraderos:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    if-eqz v0, :cond_2

    iget-object v0, v6, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;->paraderos:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    array-length v0, v0

    move v5, v0

    :goto_0
    if-lez v5, :cond_0

    move v4, v1

    :goto_1
    if-lt v4, v5, :cond_3

    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$DescargadorParaderos;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->favs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$DescargadorParaderos;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->paraderos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$DescargadorParaderos;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->servicios:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$DescargadorParaderos;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$DescargadorParaderos;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->refrescarSpinners(Landroid/content/Context;I)V

    :cond_1
    :goto_4
    return-void

    :cond_2
    move v5, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$DescargadorParaderos;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->paraderos:Ljava/util/List;

    iget-object v2, v6, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;->paraderos:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    aget-object v2, v2, v4

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;->paraderos:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->servicios:[Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    if-eqz v0, :cond_5

    iget-object v0, v6, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;->paraderos:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->servicios:[Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    array-length v0, v0

    move v3, v0

    :goto_5
    if-lez v3, :cond_4

    move v2, v1

    :goto_6
    if-lt v2, v3, :cond_6

    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_5
    move v3, v1

    goto :goto_5

    :cond_6
    iget-object v0, v6, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;->paraderos:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->servicios:[Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    aget-object v0, v0, v2

    iget-object v7, v0, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->nombre:Ljava/lang/String;

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$DescargadorParaderos;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->servicios:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_7
    if-nez v0, :cond_8

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$DescargadorParaderos;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->servicios:Ljava/util/List;

    iget-object v7, v6, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;->paraderos:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    aget-object v7, v7, v4

    iget-object v7, v7, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->servicios:[Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    aget-object v7, v7, v2

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->nombre:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iget-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$DescargadorParaderos;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->favs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    iget-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$DescargadorParaderos;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->favs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_c
    const-string v0, "ComplainDialogFragment"

    const-string v1, "view null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method
